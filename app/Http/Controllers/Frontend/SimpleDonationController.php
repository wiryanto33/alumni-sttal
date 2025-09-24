<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Donation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class SimpleDonationController extends Controller
{
    public function form()
    {
        $data['title'] = __('Donate');
        return view('frontend.donation.form', $data);
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:190',
            'email' => 'nullable|email',
            'phone' => 'nullable|string|max:50',
            'amount' => 'required|numeric|min:1000',
            'method' => 'required|in:bank_transfer,midtrans',
        ]);

        $orderId = 'DON' . now()->format('YmdHis') . rand(100, 999);

        $donation = Donation::create([
            'tenant_id' => function_exists('getTenantId') ? getTenantId() : null,
            'order_id' => $orderId,
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'amount' => $request->amount,
            'method' => $request->method,
            'status' => 'pending',
        ]);

        if ($request->method === 'bank_transfer') {
            return redirect()->route('donation.thankyou', ['order_id' => $donation->order_id]);
        }

        // Midtrans Snap REST API
        $serverKey = config('midtrans.server_key');
        $isProduction = (bool) config('midtrans.is_production');
        $baseUrl = $isProduction ? 'https://app.midtrans.com' : 'https://app.sandbox.midtrans.com';
        $url = $baseUrl . '/snap/v1/transactions';

        $payload = [
            'transaction_details' => [
                'order_id' => $orderId,
                'gross_amount' => (int) round($donation->amount),
            ],
            'customer_details' => [
                'first_name' => $donation->name,
                'email' => $donation->email,
                'phone' => $donation->phone,
            ],
            'callbacks' => [
                'finish' => route('donation.callback.finish', ['order_id' => $orderId]),
            ],
            'item_details' => [[
                'id' => 'donation',
                'price' => (int) round($donation->amount),
                'quantity' => 1,
                'name' => 'Donation',
            ]],
            'expiry' => [
                'unit' => 'minutes',
                'duration' => 60,
            ],
        ];

        $headers = [
            'Accept: application/json',
            'Content-Type: application/json',
            'Authorization: Basic ' . base64_encode($serverKey . ':'),
        ];

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($payload));
        $response = curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $curlError = curl_error($ch);
        curl_close($ch);

        if ($curlError || $httpCode >= 400) {
            Log::error('Midtrans create transaction failed', ['error' => $curlError, 'http' => $httpCode, 'body' => $response]);
            return back()->with('error', __('Failed to initialize payment. Please try bank transfer.'));
        }

        $data = json_decode($response, true);
        $donation->update([
            'midtrans_token' => $data['token'] ?? null,
            'midtrans_redirect_url' => $data['redirect_url'] ?? null,
        ]);

        if (!empty($data['redirect_url'])) {
            return redirect()->away($data['redirect_url']);
        }

        return back()->with('error', __('Failed to redirect to payment.'));
    }

    // Thank you page for bank transfer
    public function thankyou(Request $request)
    {
        $orderId = $request->query('order_id');
        $donation = Donation::where('order_id', $orderId)->firstOrFail();
        return view('frontend.donation.thankyou', compact('donation'));
    }

    // Midtrans payment notifications (webhook)
    public function notify(Request $request)
    {
        $orderId = $request->input('order_id');
        if (!$orderId) {
            return response()->json(['message' => 'no order_id'], 400);
        }
        $donation = Donation::where('order_id', $orderId)->first();
        if (!$donation) {
            return response()->json(['message' => 'not found'], 404);
        }

        $status = $request->input('transaction_status');
        $fraud = $request->input('fraud_status');

        $newStatus = $donation->status;
        if ($status === 'capture' || $status === 'settlement') {
            if ($fraud === 'accept' || $fraud === null) {
                $newStatus = 'paid';
            }
        } elseif ($status === 'cancel') {
            $newStatus = 'cancelled';
        } elseif ($status === 'expire') {
            $newStatus = 'expired';
        } elseif ($status === 'deny' || $status === 'failure') {
            $newStatus = 'failed';
        } elseif ($status === 'pending') {
            $newStatus = 'pending';
        }

        $donation->status = $newStatus;
        $donation->meta = array_merge($donation->meta ?? [], ['midtrans' => $request->all()]);
        $donation->save();

        return response()->json(['message' => 'ok']);
    }

    public function finish(Request $request, $order_id)
    {
        $donation = Donation::where('order_id', $order_id)->firstOrFail();
        return view('frontend.donation.finish', compact('donation'));
    }
}


<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Campaign;
use App\Models\CampaignDonation;
use App\Models\Currency;
use App\Models\Gateway;
use App\Models\Payment as ModelsPayment;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class CampaignDonationController extends Controller
{
    public function index()
    {
        $data['title'] = __('Donation Campaigns');
        $data['campaigns'] = Campaign::where('status', STATUS_ACTIVE)
            ->where('tenant_id', getTenantId())
            ->orderByDesc('id')->paginate(12);
        return view('frontend.donation.campaigns.index', $data);
    }

    public function show($slug)
    {
        $campaign = Campaign::where('slug', $slug)->where('tenant_id', getTenantId())->firstOrFail();
        $data['title'] = $campaign->title;
        $data['campaign'] = $campaign;
        return view('frontend.donation.campaigns.show', $data);
    }

    public function donate(Request $request, $slug)
    {
        $campaign = Campaign::where('slug', $slug)->where('tenant_id', getTenantId())->firstOrFail();

        $request->validate([
            'name' => 'required|string|max:190',
            'email' => 'nullable|email',
            'phone' => 'nullable|string|max:50',
            'amount' => 'required|numeric|min:1',
            'method' => 'required|in:bank_transfer,midtrans',
            'comment' => 'nullable|string|max:500',
            'anonymous' => 'nullable|boolean',
        ]);

        if ($campaign->minimum_amount && $request->amount < $campaign->minimum_amount) {
            return back()->with('error', __('Minimum amount is ') . $campaign->minimum_amount);
        }

        $currency = Currency::where('current_currency', 'on')->first();

        $gateway = null;
        if ($request->method === 'bank_transfer') {
            $gateway = Gateway::where(function($q){ $q->where('tenant_id', getTenantId())->orWhereNull('tenant_id'); })
                ->where('slug', 'bank')->first();
        }

        DB::beginTransaction();
        try {
            $payment = $campaign->payments()->create([
                'user_id' => auth()->id(),
                'tnxId' => uniqid('DN'),
                'tenant_id' => getTenantId(),
                'amount' => $request->amount,
                'system_currency' => $currency?->currency_code,
                'gateway_id' => $gateway?->id,
                'payment_currency' => $currency?->currency_code,
                'conversion_rate' => 1,
                'sub_total' => $request->amount,
                'grand_total' => $request->amount,
                'grand_total_with_conversation_rate' => $request->amount,
                'payment_details' => json_encode(['campaign' => $campaign->only(['id','title','slug'])]),
                'payment_status' => PAYMENT_STATUS_PENDING,
            ]);

            $donation = CampaignDonation::create([
                'tenant_id' => getTenantId(),
                'campaign_id' => $campaign->id,
                'user_id' => auth()->id(),
                'name' => $request->name,
                'email' => $request->email,
                'phone' => $request->phone,
                'comment' => $request->comment,
                'payment_id' => $payment->id,
                'amount' => $request->amount,
                'donation_type_anonymous' => $request->boolean('anonymous') ? STATUS_ACTIVE : DEACTIVATE,
                'status' => STATUS_PENDING,
            ]);

            DB::commit();

            if ($request->method === 'bank_transfer') {
                return redirect()->route('donation.thankyou', ['order_id' => $payment->uuid ?? $payment->id]);
            }

            // Midtrans Snap
            $serverKey = config('midtrans.server_key');
            $isProduction = (bool) config('midtrans.is_production');
            $baseUrl = $isProduction ? 'https://app.midtrans.com' : 'https://app.sandbox.midtrans.com';
            $url = $baseUrl . '/snap/v1/transactions';

            $orderId = $payment->uuid; // use UUID for order id
            $payload = [
                'transaction_details' => [
                    'order_id' => $orderId,
                    'gross_amount' => (int) round($payment->grand_total),
                ],
                'customer_details' => [
                    'first_name' => $request->name,
                    'email' => $request->email,
                    'phone' => $request->phone,
                ],
                'item_details' => [[
                    'id' => 'campaign-' . $campaign->id,
                    'price' => (int) round($payment->grand_total),
                    'quantity' => 1,
                    'name' => 'Donation for ' . $campaign->title,
                ]],
                'callbacks' => [
                    'finish' => route('donation.campaign.callback.finish', ['order_id' => $orderId]),
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
                return back()->with('error', __('Failed to initialize payment. Try Bank Transfer.'));
            }

            $data = json_decode($response, true);
            $payment->paymentId = $data['token'] ?? null;
            $payment->save();

            if (!empty($data['redirect_url'])) {
                return redirect()->away($data['redirect_url']);
            }

            return back()->with('error', __('Failed to redirect to payment.'));
        } catch (\Exception $e) {
            DB::rollBack();
            return back()->with('error', __('Something went wrong.'));
        }
    }

    public function thankyou(Request $request)
    {
        $orderId = $request->query('order_id');
        $payment = ModelsPayment::where('uuid', $orderId)->orWhere('id', $orderId)->firstOrFail();
        $campaign = $payment->paymentable;
        return view('frontend.donation.thankyou', [
            'donation' => (object) [
                'order_id' => $payment->uuid ?? $payment->id,
                'amount' => $payment->grand_total,
            ],
            'campaign' => $campaign,
        ]);
    }

    public function notify(Request $request)
    {
        $orderId = $request->input('order_id');
        if (!$orderId) return response()->json(['message' => 'no order_id'], 400);
        $payment = ModelsPayment::where('uuid', $orderId)->first();
        if (!$payment) return response()->json(['message' => 'not found'], 404);

        $status = $request->input('transaction_status');
        $fraud = $request->input('fraud_status');

        $paid = false;
        if ($status === 'capture' || $status === 'settlement') {
            if ($fraud === 'accept' || $fraud === null) $paid = true;
        }
        if ($paid) {
            if ($payment->payment_status != PAYMENT_STATUS_PAID) {
                DB::transaction(function () use ($payment, $request) {
                    $payment->payment_status = PAYMENT_STATUS_PAID;
                    $payment->payment_time = now();
                    $payment->gateway_callback_details = json_encode($request->all());
                    $payment->save();

                    // Update donation row
                    $donation = CampaignDonation::where('payment_id', $payment->id)->first();
                    if ($donation) {
                        $donation->status = STATUS_ACTIVE;
                        $donation->save();
                    }

                    // Create transaction
                    $payment->transaction()->create([
                        'user_id' => $payment->user_id,
                        'tenant_id' => getTenantId(),
                        'reference_id' => $donation?->id,
                        'type' => TRANSACTION_DONATION,
                        'tnxId' => $payment->tnxId,
                        'amount' => $payment->grand_total,
                        'purpose' => __('Donation for ') . ($payment->paymentable->title ?? ''),
                        'payment_time' => $payment->payment_time,
                        'payment_method' => 'Midtrans',
                    ]);
                });
            }
        }

        return response()->json(['message' => 'ok']);
    }

    public function finish($order_id)
    {
        $payment = ModelsPayment::where('uuid', $order_id)->firstOrFail();
        $campaign = $payment->paymentable;
        return view('frontend.donation.campaigns.finish', compact('payment','campaign'));
    }
}

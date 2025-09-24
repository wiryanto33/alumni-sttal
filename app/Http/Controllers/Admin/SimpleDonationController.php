<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Donation;
use Illuminate\Http\Request;

class SimpleDonationController extends Controller
{
    public function index()
    {
        $data['title'] = __('Donations');
        $data['donations'] = Donation::orderByDesc('id')->paginate(20);
        $data['showManageDonationSimple'] = 'show';
        $data['activeManageDonationSimple'] = 'active';
        return view('admin.donations.index', $data);
    }

    public function markPaid($id)
    {
        $donation = Donation::findOrFail($id);
        $donation->status = 'paid';
        $donation->save();
        return back()->with('success', __('Donation marked as paid'));
    }
}


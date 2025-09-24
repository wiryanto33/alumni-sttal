<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CampaignDonation;

class CampaignDonationController extends Controller
{
    public function index()
    {
        $data['title'] = __('Campaign Donations');
        $data['donations'] = CampaignDonation::where('tenant_id', getTenantId())
            ->with(['campaign','payment'])
            ->orderByDesc('id')->paginate(30);
        return view('admin.donations.donations.index', $data);
    }
}


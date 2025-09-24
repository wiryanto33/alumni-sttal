<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\CampaignRequest;
use App\Models\Campaign;
use App\Models\CampaignCategory;
use App\Models\FileManager;
use Illuminate\Http\Request;

class CampaignController extends Controller
{
    public function index()
    {
        $data['title'] = __('Campaigns');
        $data['campaigns'] = Campaign::where('tenant_id', getTenantId())->with('category')->orderByDesc('id')->paginate(20);
        return view('admin.donations.campaigns.index', $data);
    }

    public function create()
    {
        $data['title'] = __('Create Campaign');
        $data['categories'] = CampaignCategory::where('tenant_id', getTenantId())->orderBy('name')->get();
        return view('admin.donations.campaigns.create', $data);
    }

    public function store(CampaignRequest $request)
    {
        $imageId = null;
        if ($request->hasFile('image')) {
            $fm = new FileManager();
            $uploaded = $fm->upload('campaign', $request->image);
            $imageId = $uploaded->id;
        }

        Campaign::create([
            'tenant_id' => getTenantId(),
            'title' => $request->title,
            'slug' => getSlug($request->title),
            'image' => $imageId,
            'video_url' => $request->video_url,
            'campaign_category_id' => $request->campaign_category_id,
            'goal' => $request->goal,
            'location' => $request->location,
            'deadline' => $request->end_date,
            'details' => $request->details,
            'minimum_amount' => $request->minimum_amount,
            'created_by' => auth()->id(),
            'status' => STATUS_ACTIVE,
        ]);
        return redirect()->route('admin.campaigns.index')->with('success', __('Created Successfully'));
    }

    public function edit($id)
    {
        $data['title'] = __('Edit Campaign');
        $data['campaign'] = Campaign::where('tenant_id', getTenantId())->findOrFail($id);
        $data['categories'] = CampaignCategory::where('tenant_id', getTenantId())->orderBy('name')->get();
        return view('admin.donations.campaigns.edit', $data);
    }

    public function update(CampaignRequest $request, $id)
    {
        $campaign = Campaign::where('tenant_id', getTenantId())->findOrFail($id);

        if ($request->hasFile('image')) {
            $fm = new FileManager();
            $uploaded = $fm->upload('campaign', $request->image);
            $campaign->image = $uploaded->id;
        }

        $campaign->title = $request->title;
        $campaign->slug = getSlug($request->title);
        $campaign->video_url = $request->video_url;
        $campaign->campaign_category_id = $request->campaign_category_id;
        $campaign->goal = $request->goal;
        $campaign->location = $request->location;
        $campaign->deadline = $request->end_date;
        $campaign->details = $request->details;
        $campaign->minimum_amount = $request->minimum_amount;
        $campaign->save();
        return redirect()->route('admin.campaigns.index')->with('success', __('Updated Successfully'));
    }

    public function delete($id)
    {
        $campaign = Campaign::where('tenant_id', getTenantId())->findOrFail($id);
        $campaign->delete();
        return back()->with('success', __('Deleted Successfully'));
    }
}


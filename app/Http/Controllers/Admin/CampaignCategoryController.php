<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\CampaignCategoryRequest;
use App\Models\CampaignCategory;
use Illuminate\Http\Request;

class CampaignCategoryController extends Controller
{
    public function index()
    {
        $data['title'] = __('Campaign Categories');
        $data['categories'] = CampaignCategory::where('tenant_id', getTenantId())->orderByDesc('id')->paginate(20);
        return view('admin.donations.categories.index', $data);
    }

    public function store(CampaignCategoryRequest $request)
    {
        CampaignCategory::create([
            'tenant_id' => getTenantId(),
            'name' => $request->name,
            'slug' => getSlug($request->name),
            'status' => STATUS_ACTIVE,
        ]);
        return back()->with('success', __('Created Successfully'));
    }

    public function edit($id)
    {
        $data['title'] = __('Edit Category');
        $data['category'] = CampaignCategory::where('tenant_id', getTenantId())->findOrFail($id);
        return view('admin.donations.categories.edit', $data);
    }

    public function update(CampaignCategoryRequest $request, $id)
    {
        $cat = CampaignCategory::where('tenant_id', getTenantId())->findOrFail($id);
        $cat->name = $request->name;
        $cat->slug = getSlug($request->name);
        $cat->save();
        return redirect()->route('admin.campaign-categories.index')->with('success', __('Updated Successfully'));
    }

    public function delete($id)
    {
        $cat = CampaignCategory::where('tenant_id', getTenantId())->findOrFail($id);
        $cat->delete();
        return back()->with('success', __('Deleted Successfully'));
    }
}


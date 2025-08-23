<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\BatchRequest;
use App\Http\Services\BatchService;
use App\Models\Batch;
use App\Traits\ResponseTrait;
use Illuminate\Http\Request;

class BatchController extends Controller
{
    use ResponseTrait;

    private $batchService;

    public function __construct()
    {
        $this->batchService = new BatchService;
    }

    public function index(Request $request)
    {
        if ($request->ajax()) {
            // Simple JSON response instead of DataTables
            try {
                $batches = Batch::select('id', 'name', 'created_at')
                    ->when(function_exists('getTenantId'), function ($query) {
                        return $query->where('tenant_id', getTenantId());
                    })
                    ->get();

                return response()->json([
                    'data' => $batches,
                    'recordsTotal' => $batches->count(),
                    'recordsFiltered' => $batches->count()
                ]);
            } catch (\Exception $e) {
                return response()->json([
                    'error' => 'Database error: ' . $e->getMessage()
                ], 500);
            }
        }

        $data['title'] = __('Batch Setting');
        $data['showManageApplicationSetting'] = 'show';
        $data['activeBatchesSetting'] = 'active-color-one';
        return view('admin.setting.batches.index', $data);
    }

    public function edit($id)
    {
        $data['batch'] = Batch::findOrFail($id);
        return view('admin.setting.batches.edit-form', $data);
    }


    public function store(BatchRequest $request)
    {
        return $this->batchService->store($request);
    }

    public function update(BatchRequest $request, $id)
    {
        return $this->batchService->update($request, $id);
    }

    public function delete($id)
    {
        return $this->batchService->deleteById($id);
    }
}

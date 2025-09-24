@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <h4 class="mb-3">{{ __('Campaign Categories') }}</h4>
        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif
        <div class="row g-3">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('admin.campaign-categories.store') }}" method="post">
                            @csrf
                            <div class="mb-3">
                                <label class="form-label">{{ __('Name') }}</label>
                                <input type="text" class="form-control" name="name" required>
                            </div>
                            <button class="btn btn-primary">{{ __('Add') }}</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>{{ __('Name') }}</th>
                                <th>{{ __('Slug') }}</th>
                                <th>{{ __('Action') }}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($categories as $cat)
                                <tr>
                                    <td>{{ $cat->id }}</td>
                                    <td>{{ $cat->name }}</td>
                                    <td>{{ $cat->slug }}</td>
                                    <td>
                                        <a class="btn btn-sm btn-secondary" href="{{ route('admin.campaign-categories.edit',$cat->id) }}">{{ __('Edit') }}</a>
                                        <form class="d-inline" method="post" action="{{ route('admin.campaign-categories.delete',$cat->id) }}">
                                            @csrf
                                            <button class="btn btn-sm btn-danger" onclick="return confirm('Delete?')">{{ __('Delete') }}</button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr><td colspan="4" class="text-center">{{ __('No data') }}</td></tr>
                            @endforelse
                            </tbody>
                        </table>
                        {{ $categories->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


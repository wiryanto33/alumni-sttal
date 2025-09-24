@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <h4 class="mb-3">{{ __('Edit Category') }}</h4>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('admin.campaign-categories.update',$category->id) }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">{{ __('Name') }}</label>
                        <input type="text" class="form-control" name="name" value="{{ $category->name }}" required>
                    </div>
                    <button class="btn btn-primary">{{ __('Save') }}</button>
                    <a href="{{ route('admin.campaign-categories.index') }}" class="btn btn-secondary">{{ __('Back') }}</a>
                </form>
            </div>
        </div>
    </div>
@endsection


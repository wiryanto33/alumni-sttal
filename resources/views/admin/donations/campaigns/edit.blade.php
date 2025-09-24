@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <h4 class="mb-3">{{ __('Edit Campaign') }}</h4>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('admin.campaigns.update', $campaign->id) }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label">{{ __('Title') }}</label>
                            <input type="text" name="title" class="form-control" value="{{ $campaign->title }}" required>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">{{ __('Category') }}</label>
                            <select class="form-select" name="campaign_category_id" required>
                                @foreach($categories as $cat)
                                    <option value="{{ $cat->id }}" @selected($campaign->campaign_category_id == $cat->id)>{{ $cat->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">{{ __('Goal') }}</label>
                            <input type="number" name="goal" class="form-control" min="0" step="1" value="{{ $campaign->goal }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">{{ __('Minimum Amount') }}</label>
                            <input type="number" name="minimum_amount" class="form-control" min="1" step="1" value="{{ $campaign->minimum_amount }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label d-block">{{ __('Image') }}</label>
                            @if($campaign->image)
                                <img src="{{ getFileUrl($campaign->image) }}" class="img-thumbnail mb-2" style="max-height:100px">
                            @endif
                            <input type="file" name="image" accept="image/*" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">{{ __('Video URL') }}</label>
                            <input type="url" name="video_url" class="form-control" value="{{ $campaign->video_url }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">{{ __('Location') }}</label>
                            <input type="text" name="location" class="form-control" value="{{ $campaign->location }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">{{ __('End Date') }}</label>
                            <input type="date" name="end_date" class="form-control" value="{{ $campaign->deadline }}">
                        </div>
                        <div class="col-12">
                            <label class="form-label">{{ __('Details') }}</label>
                            <textarea name="details" rows="6" class="form-control" required>{{ $campaign->details }}</textarea>
                        </div>
                    </div>
                    <div class="mt-3">
                        <button class="btn btn-primary">{{ __('Save') }}</button>
                        <a class="btn btn-secondary" href="{{ route('admin.campaigns.index') }}">{{ __('Back') }}</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection


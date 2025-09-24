@extends('frontend.layouts.app')

@section('content')
    <section class="pt-60 pb-100">
        <div class="container">
            <h2 class="mb-4">{{ __('Donation Campaigns') }}</h2>
            <div class="row g-4">
                @forelse($campaigns as $campaign)
                    <div class="col-md-4">
                        <div class="card h-100">
                            <div class="ratio ratio-16x9">
                                <img class="w-100 h-100 object-fit-cover" src="{{ getFileUrl($campaign->image) }}" alt="{{ $campaign->title }}">
                            </div>
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title">{{ $campaign->title }}</h5>
                                <p class="card-text flex-grow-1">{{ \Illuminate\Support\Str::limit(strip_tags($campaign->details), 120) }}</p>
                                <a class="btn btn-primary mt-auto" href="{{ route('donation.campaigns.show', $campaign->slug) }}">{{ __('Donate') }}</a>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-12"><p class="text-muted">{{ __('No campaigns found') }}</p></div>
                @endforelse
            </div>
            <div class="mt-4">{{ $campaigns->links() }}</div>
        </div>
    </section>
@endsection


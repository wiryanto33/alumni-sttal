@extends('frontend.layouts.app')

@section('content')
    <section class="pt-60 pb-100">
        <div class="container">
            <h2 class="mb-3">{{ __('Donation Status') }}</h2>
            <p class="mb-0"><strong>Order ID:</strong> {{ $donation->order_id }}</p>
            <p><strong>{{ __('Amount') }}:</strong> {{ showPrice($donation->amount) }}</p>
            <p><strong>{{ __('Status') }}:</strong> {{ ucfirst($donation->status) }}</p>
            @if($donation->status !== 'paid')
                <p>{{ __('If your payment is pending, it will update automatically once Midtrans confirms it.') }}</p>
            @endif
        </div>
    </section>
@endsection


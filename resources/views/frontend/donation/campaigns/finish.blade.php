@extends('frontend.layouts.app')

@section('content')
    <section class="pt-60 pb-100">
        <div class="container">
            <h2 class="mb-3">{{ __('Donation Status') }}</h2>
            <div class="row g-4">
                <div class="col-lg-7">
                    <div class="ratio ratio-16x9 mb-3">
                        <img class="w-100 h-100 object-fit-cover" src="{{ getFileUrl($campaign->image) }}" alt="{{ $campaign->title }}">
                    </div>
                    <h4>{{ $campaign->title }}</h4>
                </div>
                <div class="col-lg-5">
                    <div class="card">
                        <div class="card-body">
                            <p class="mb-1"><strong>Order ID:</strong> {{ $payment->uuid }}</p>
                            <p class="mb-1"><strong>{{ __('Amount') }}:</strong> {{ showPrice($payment->grand_total) }}</p>
                            <p class="mb-1"><strong>{{ __('Status') }}:</strong> {{ $payment->payment_status == PAYMENT_STATUS_PAID ? __('Paid') : __('Pending') }}</p>
                            @if($payment->payment_status != PAYMENT_STATUS_PAID)
                                <p class="mb-0">{{ __('If payment is pending, it will update automatically after Midtrans confirmation.') }}</p>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


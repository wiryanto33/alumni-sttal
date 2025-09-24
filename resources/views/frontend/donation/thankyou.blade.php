@extends('frontend.layouts.app')

@section('content')
    <section class="pt-60 pb-100">
        <div class="container">
            <h2 class="mb-3">{{ __('Thank You') }}</h2>
            <p>{{ __('We have recorded your donation request.') }}</p>
            <p class="mb-0"><strong>Order ID:</strong> {{ $donation->order_id }}</p>
            <p><strong>{{ __('Amount') }}:</strong> {{ showPrice($donation->amount) }}</p>

            <h5 class="mt-4">{{ __('Please complete the bank transfer:') }}</h5>
            <ul>
                <li>{{ __('Bank') }}: {{ getOption('bank_name', 'Your Bank') }}</li>
                <li>{{ __('Account Name') }}: {{ getOption('bank_account_name', 'Alumni Association') }}</li>
                <li>{{ __('Account Number') }}: {{ getOption('bank_account_number', '0000000000') }}</li>
                <li>{{ __('Reference') }}: {{ $donation->order_id }}</li>
            </ul>
            <p>{{ __('After payment, admin will verify and mark as paid.') }}</p>
        </div>
    </section>
@endsection


@extends('frontend.layouts.app')

@section('content')
    <section class="pt-60 pb-100">
        <div class="container">
            <h2 class="mb-4">{{ __('Make a Donation') }}</h2>

            @if(session('error'))
                <div class="alert alert-danger">{{ session('error') }}</div>
            @endif

            <form method="POST" action="{{ route('donation.create') }}" class="row g-3">
                @csrf
                <div class="col-md-6">
                    <label class="form-label">{{ __('Full Name') }}</label>
                    <input type="text" name="name" class="form-control" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control">
                </div>
                <div class="col-md-6">
                    <label class="form-label">{{ __('Phone') }}</label>
                    <input type="text" name="phone" class="form-control">
                </div>
                <div class="col-md-6">
                    <label class="form-label">{{ __('Amount (IDR)') }}</label>
                    <input type="number" name="amount" class="form-control" min="1000" step="1" required>
                </div>

                <div class="col-12">
                    <label class="form-label d-block">{{ __('Payment Method') }}</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="method" id="method_bank" value="bank_transfer" checked>
                        <label class="form-check-label" for="method_bank">{{ __('Bank Transfer') }}</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="method" id="method_midtrans" value="midtrans">
                        <label class="form-check-label" for="method_midtrans">Midtrans</label>
                    </div>
                </div>

                <div class="col-12">
                    <button class="btn btn-primary">{{ __('Donate Now') }}</button>
                </div>

                <div class="col-12 mt-4">
                    <h5>{{ __('Bank Transfer Instructions') }}</h5>
                    <p class="mb-1">{{ __('Please transfer to the following account and your donation will be verified by admin.') }}</p>
                    <ul class="mb-0">
                        <li>{{ __('Bank') }}: {{ getOption('bank_name', 'Your Bank') }}</li>
                        <li>{{ __('Account Name') }}: {{ getOption('bank_account_name', 'Alumni Association') }}</li>
                        <li>{{ __('Account Number') }}: {{ getOption('bank_account_number', '0000000000') }}</li>
                    </ul>
                </div>
            </form>
        </div>
    </section>
@endsection


@extends('frontend.layouts.app')

@section('content')
    <section class="pt-60 pb-100">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-7">
                    <div class="ratio ratio-16x9 mb-3">
                        <img class="w-100 h-100 object-fit-cover" src="{{ getFileUrl($campaign->image) }}" alt="{{ $campaign->title }}">
                    </div>
                    <h2 class="mb-3">{{ $campaign->title }}</h2>
                    <div class="mb-4">{!! $campaign->details !!}</div>
                </div>
                <div class="col-lg-5">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="mb-3">{{ __('Donate to this campaign') }}</h5>
                            @if(session('error'))
                                <div class="alert alert-danger">{{ session('error') }}</div>
                            @endif
                            <form method="POST" action="{{ route('donation.campaigns.donate', $campaign->slug) }}" class="row g-3">
                                @csrf
                                <div class="col-12">
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
                                <div class="col-12">
                                    <label class="form-label">{{ __('Amount') }}</label>
                                    <input type="number" name="amount" min="{{ $campaign->minimum_amount ?? 1 }}" step="1" class="form-control" required>
                                    @if($campaign->minimum_amount)
                                        <small class="text-muted">{{ __('Minimum') }}: {{ showPrice($campaign->minimum_amount) }}</small>
                                    @endif
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
                                    <label class="form-label">{{ __('Comment (optional)') }}</label>
                                    <textarea name="comment" class="form-control" rows="2"></textarea>
                                </div>
                                <div class="col-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="anonymous" value="1" id="anonymous">
                                        <label class="form-check-label" for="anonymous">{{ __('Donate as anonymous') }}</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100">{{ __('Donate Now') }}</button>
                                </div>
                            </form>
                            <hr class="my-4">
                            <h6>{{ __('Bank Transfer Instructions') }}</h6>
                            <ul class="mb-0">
                                <li>{{ __('Bank') }}: {{ getOption('bank_name', 'Your Bank') }}</li>
                                <li>{{ __('Account Name') }}: {{ getOption('bank_account_name', 'Alumni Association') }}</li>
                                <li>{{ __('Account Number') }}: {{ getOption('bank_account_number', '0000000000') }}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


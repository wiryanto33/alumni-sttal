@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <h4 class="mb-3">{{ __('Campaign Donations') }}</h4>
        <div class="card">
            <div class="card-body table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>{{ __('Campaign') }}</th>
                        <th>{{ __('Donor') }}</th>
                        <th>{{ __('Amount') }}</th>
                        <th>{{ __('Payment Status') }}</th>
                        <th>{{ __('Created') }}</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($donations as $d)
                        <tr>
                            <td>{{ $d->id }}</td>
                            <td>{{ $d->campaign?->title }}</td>
                            <td>{{ $d->name }}<br><small>{{ $d->email }}</small></td>
                            <td>{{ showPrice($d->amount) }}</td>
                            <td>
                                @php $ps = $d->payment?->payment_status; @endphp
                                {{ $ps == PAYMENT_STATUS_PAID ? __('Paid') : ($ps == PAYMENT_STATUS_CANCELLED ? __('Cancelled') : __('Pending')) }}
                            </td>
                            <td>{{ $d->created_at }}</td>
                        </tr>
                    @empty
                        <tr><td colspan="6" class="text-center">{{ __('No data') }}</td></tr>
                    @endforelse
                    </tbody>
                </table>
                {{ $donations->links() }}
            </div>
        </div>
    </div>
@endsection


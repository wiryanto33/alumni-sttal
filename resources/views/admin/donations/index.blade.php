@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between mb-3">
            <h4 class="mb-0">{{ __('Donations') }}</h4>
        </div>

        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        <div class="card">
            <div class="card-body table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>{{ __('Order ID') }}</th>
                        <th>{{ __('Donor') }}</th>
                        <th>{{ __('Amount') }}</th>
                        <th>{{ __('Method') }}</th>
                        <th>{{ __('Status') }}</th>
                        <th>{{ __('Created') }}</th>
                        <th>{{ __('Action') }}</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($donations as $donation)
                        <tr>
                            <td>{{ $donation->id }}</td>
                            <td>{{ $donation->order_id }}</td>
                            <td>{{ $donation->name }}<br><small>{{ $donation->email }}</small></td>
                            <td>{{ showPrice($donation->amount) }}</td>
                            <td>{{ ucfirst(str_replace('_',' ', $donation->method)) }}</td>
                            <td>{{ ucfirst($donation->status) }}</td>
                            <td>{{ $donation->created_at }}</td>
                            <td>
                                @if($donation->method === 'bank_transfer' && $donation->status === 'pending')
                                    <form action="{{ route('admin.simple-donations.mark-paid', $donation->id) }}" method="post">
                                        @csrf
                                        <button class="btn btn-sm btn-success">{{ __('Mark Paid') }}</button>
                                    </form>
                                @endif
                            </td>
                        </tr>
                    @empty
                        <tr><td colspan="8" class="text-center">{{ __('No data') }}</td></tr>
                    @endforelse
                    </tbody>
                </table>

                {{ $donations->links() }}
            </div>
        </div>
    </div>
@endsection


@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h4 class="mb-0">{{ __('Campaigns') }}</h4>
            <a class="btn btn-primary" href="{{ route('admin.campaigns.create') }}">{{ __('Create') }}</a>
        </div>
        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif
        <div class="card">
            <div class="card-body table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>{{ __('Title') }}</th>
                        <th>{{ __('Category') }}</th>
                        <th>{{ __('Goal') }}</th>
                        <th>{{ __('Min Amount') }}</th>
                        <th>{{ __('Action') }}</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($campaigns as $c)
                        <tr>
                            <td>{{ $c->id }}</td>
                            <td>{{ $c->title }}</td>
                            <td>{{ $c->category?->name }}</td>
                            <td>{{ $c->goal }}</td>
                            <td>{{ $c->minimum_amount }}</td>
                            <td>
                                <a class="btn btn-sm btn-secondary" href="{{ route('admin.campaigns.edit',$c->id) }}">{{ __('Edit') }}</a>
                                <form class="d-inline" method="post" action="{{ route('admin.campaigns.delete',$c->id) }}">
                                    @csrf
                                    <button class="btn btn-sm btn-danger" onclick="return confirm('Delete?')">{{ __('Delete') }}</button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr><td colspan="6" class="text-center">{{ __('No data') }}</td></tr>
                    @endforelse
                    </tbody>
                </table>
                {{ $campaigns->links() }}
            </div>
        </div>
    </div>
@endsection


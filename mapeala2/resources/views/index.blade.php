@extends('layout.front')
@section('title')
Home Page
@endsection

@section('content')

  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
        @foreach($hospitals as $d)
        <div class="col-md-3">
          <div class="card mb-4 shadow-sm">
            <a href="{{ url('hospital/detail') }}/{{ $d->id }}"><img class="card-img-top" src="{{ asset('storage') }}/{{ $d->img }}" alt="{{ $d->name }}" /></a>
            <div class="card-body">
              <p class="card-text">{{ $d->name }}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="{{ url('hospital/detail') }}/{{ $d->id }}" class="btn btn-sm btn-outline-secondary">View Detail</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        @endforeach
      </div>
      <div class="row">
        <div class="col-sm-12">
            {{ $hospitals->links('vendor.pagination.bootstrap-4') }}
        </div>
      </div>
    </div>
  </div>
@endsection
@extends('layout.front')
@section('title')
Home Page
@endsection
@section('content')
  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-sm-9">
            <h1>{{ $detail->name }}</h1>
            <p><img height="350" class="card-img-top" src="{{ asset('storage') }}/{{ $detail->img }}" alt="{{ $detail->name }}"></p>
            <hr />
            <h4 class="mt-3">Contact Information</h4>
            <p>{{ $detail->contact }}</p>
            <hr />
            <h4 class="mt-3">Address Information</h4>
            <p>{{ $detail->address }}</p>
        </div>
        <div class="col-sm-3">
          {{--  Other Hospital Start  --}}
          <div class="card">
            <div class="card-header">
              Same Speciality
            </div>
            <div class="list-group list-group-flush">
              <a href="#" class="list-group-item">Link 1</a>
              <a href="#" class="list-group-item">Link 2</a>
            </div>
          </div>
          {{--  Other Hospital End  --}}
        </div>
      </div>
    </div>
  </div>
@endsection
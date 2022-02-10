@extends('layout.front')
@section('title')
Home Page
@endsection
@section('content')
  <div class="album py-3 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-sm-9">
            <h1 class="mb-4">{{ $detail->name }}</h1>
            <p><img height="350" class="card-img-top" src="{{ asset('storage') }}/{{ $detail->img }}" alt="{{ $detail->name }}"></p>
            <hr />
            <h4 class="mt-3">Speciality</h4>
            <p>{{ $detail->speciality }}</p>
            <hr />
            <h4 class="mt-3">Contact Information</h4>
            <p>{{ $detail->contact }}</p>
            <hr />
            <h4 class="mt-3">Address Information</h4>
            <p>{{ $detail->address }}</p>
        </div>
      </div>
    </div>
  </div>
@endsection
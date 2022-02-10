@extends('layout.admin')
@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3"></div>
  <h2 class="mb-4">Hospitals</h2>
  <div class="table-responsive">
    <table class="table table-hover table-bordered">
      <thead>
        <tr>
          <th>#</th>
          <th>Image</th>
          <th>Name</th>
          <th>Address</th>
          <th>Speciality</th>
          <th>Contact</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        @if(count($data)>0)
        @foreach($data as $d)
        <tr>
          <td>{{ $d->id }}</td>
          <td><img width="100" src="{{ asset('storage/') }}/{{ $d->img }}" /></td>
          <td>{{ $d->name }}</td>
          <td>{{ $d->address }}</td>
          <td>{{ $d->speciality }}</td>
          <td>{{ $d->contact }}</td>
          <td>
            <a href="admin/hospital/edit/{{ $d->id }}" class="btn btn-info btn-sm mb-1"><span data-feather="edit"></span></a>
            <a onclick="return confirm('Are you sure to delete this?')" href="admin/hospital/delete/{{ $d->id }}" class="btn btn-danger btn-sm mb-1"><span data-feather="delete"></span></a>
          </td>
        </tr>
        @endforeach
        <tr>
          <td colspan="6">{{ $data->links() }}</td>
        </tr>
        @endif
      </tbody>
    </table>
  </div>
  @endsection
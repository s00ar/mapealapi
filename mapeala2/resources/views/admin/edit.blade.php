@extends('layout.admin')
@section('content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3"></div>
  <h2 class="mb-4">Update {{ $data->name }} Hospital</h2>
    @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    @if(Session::has('success'))
    <p class="alert alert-success">{{ session('success') }}<p>
    @endif
  <div class="table-responsive">
    <table class="table table-bordered">
        <form action="{{ url('/admin/hospital/update') }}/{{ $data->id }}" method="post" enctype="multipart/form-data">
            {{ csrf_field() }}
            <tr>
                <th>Name</th>
                <td><input type="text" value="{{ $data->name }}" class="form-control" name="name" /></td>
            </tr>
            <tr>
                <th>Speciality</th>
                <td><input type="text" value="{{ $data->speciality }}" class="form-control" name="speciality" /></td>
            </tr>
            <tr>
                <th>Image</th>
                <td><input type="file" name="image" /></td>
            </tr>
            <tr>
                <th>Address</th>
                <td>
                    <textarea name="address" class="form-control" id="" cols="30" rows="10">{{ $data->address }}</textarea>
                </td>
            </tr>
            <tr>
                <th>Contact No</th>
                <td>
                    <input type="text" value="{{ $data->contact }}" class="form-control" name="contact_no" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" class="btn btn-danger" value="Update" />
                </td>
            </tr>
        </form>
    </table>
  </div>
  @endsection
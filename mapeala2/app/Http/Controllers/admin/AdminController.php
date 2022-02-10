<?php

namespace App\Http\Controllers\admin;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Hospital;
class AdminController extends Controller
{
    function index(){
        $data=Hospital::orderBy('id','desc')->paginate(20);
        return view('admin.dashboard',['data'=>$data]);
    }
    // Add View
    function add(){
        return view('admin.add');
    }
    // Store Data
    function store(Request $request){
        $img=$request->file('image');
        $extension=$img->getClientOriginalExtension();
        Storage::disk('public')->put($img->getFilename().'.'.$extension,File::get($img));
        $validatedData = $request->validate([
            'name'      => 'required',
            'speciality' => 'required',
            'address'=>'required',
            'contact_no'=>'required'
        ]);
        $hos=new Hospital;
        $hos->name=$request->input('name');
        $hos->img=$img->getFilename().'.'.$extension;
        $hos->speciality=$request->input('speciality');
        $hos->address=$request->input('address');
        $hos->contact=$request->input('contact_no');
        $hos->save();
        return redirect('admin/add')->with('success', 'Data has been successfully added.');
    }
    // Edit View
    function edit($id){
        $data=Hospital::find($id);
        return view('admin.edit',['data'=>$data]);
    }
    // Update Data
    function update(Request $request,$id){
        $validatedData = $request->validate([
            'name'      => 'required',
            'speciality' => 'required',
            'address'=>'required',
            'contact_no'=>'required'
        ]);
        $hos=Hospital::find($id);
        $hos->name=$request->input('name');
        $hos->speciality=$request->input('speciality');
        $hos->address=$request->input('address');
        $hos->contact=$request->input('contact_no');
        $hos->save();
        return redirect('admin/hospital/edit/'.$id)->with('success', 'Data has been successfully updated.');
    }

    // Delete Data
    function delete($id){
        DB::table('hospitals')->where('id', $id)->delete();
        return redirect('admin')->with('success', 'Data has been successfully deleted.');
    }
}

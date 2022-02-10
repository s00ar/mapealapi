<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hospital;
class HospitalController extends Controller
{
    function index(){
        $data=Hospital::orderBy('id','desc')->paginate(12);
        return view('index',['hospitals'=>$data]);
    }
    function detail($id){
        $data=Hospital::find($id);
        return view('detail',['detail'=>$data]);
    }
    function search(Request $request){
        $searchString=$request->input('q');
        $searchResult=Hospital::Where('name', 'like', '%' . $searchString . '%')->orderBy('id','desc')->paginate(12);
        return view('search',['hospitals'=>$searchResult]);
    }
}

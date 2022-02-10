<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Admin Routing Start
Route::get('/admin','admin\AdminController@index');

// Add
Route::get('/admin/add','admin\AdminController@add');
Route::post('/admin/store','admin\AdminController@store');

// Update
Route::get('/admin/hospital/edit/{id}','admin\AdminController@edit');
Route::post('/admin/hospital/update/{id}','admin\AdminController@update');

// Delete
Route::get('/admin/hospital/delete/{id}','admin\AdminController@delete');

// Admin Routing End

// Front Routing Start
Route::get('/','HospitalController@index');
Route::get('/search','HospitalController@search');
Route::get('/hospital/detail/{id}','HospitalController@detail');
// Front Routing End

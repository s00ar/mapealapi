<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ArticuloController;
use App\Http\Controllers\UploadImageController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
 

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

/* 
Route::resource('articulos','app\Http\Controllers\ArticuloController'); */

Route::resource('articulos',ArticuloController::class);
/* CODIGO EN DESUSO. ES PARA SUBIR IMAGENES
Route::get('upload-image', [UploadImageController::class, 'index']);
Route::post('save', [UploadImageController::class, 'save']); */
/* CODIGO EN DESHUSO. NI DIOS SABE Q HACE
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard'); */

Route::get('/login', function () {
    return view('login');
});
Route::post("/login",[UserController::class,'login']);
Route::get("/",[ProductController::class,'index']);

<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Post;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\RegistrationController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('tasks', TaskController::class); 
/*
Route::apiResource('tasks', [TaskController::class, 'tasks']); 

/*
Route::get('getAllProveedores',[ProveedoreController::class, 'index']); */
/* 
Route::get('/posts', function() {
    return Post::create([
        'title' => request('title'),
        'content' => request('content')
    ]);
});  

Route::get( '/test', function(){
    return "Hello World";
}); */
/* 
Route::get('/posts', [Post::all(), 'post']); */
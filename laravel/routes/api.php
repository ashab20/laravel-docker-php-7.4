<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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


Route::get('/user',function(){
    return "Hello Upwork";
   });



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return "Hello Upwork";
});

Route::post('login', function () {
 return "this is login page";
})->name('login');
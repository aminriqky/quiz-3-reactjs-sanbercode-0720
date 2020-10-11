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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'api'], function() {
    // untuk login
    Route::post('user/login', 'LoginController@login');

    // ini untuk store data hasil pendaftaran
    Route::post('user/store', 'AuthController@store');

    // ini untuk mengambil data user tertentu
    Route::get('user/{id}', 'AuthController@getUser');

    // untuk update data user
    Route::post('user/{id}', 'AuthController@update');

	// ini ambil seluruh data
    Route::get('all', 'DataController@getAll');

    // ini untuk kebakaran
    Route::get('flame', 'DataController@getFlame');
    Route::get('flame-aman', 'DataController@getFlameAman');
    Route::get('flame-potensi', 'DataController@getFlamePotensi');
    Route::get('flame-bahaya', 'DataController@getFlameBahaya');
    
    // ini untuk banjir
    Route::get('flood', 'DataController@getFlood');
    Route::get('flood-aman', 'DataController@getFloodAman');
    Route::get('flood-bahaya', 'DataController@getFloodBahaya');
    
    // ini untuk tanah longsor
    Route::get('ground', 'DataController@getGround');
    Route::get('ground-aman', 'DataController@getGroundAman');
    Route::get('ground-potensi', 'DataController@getGroundPotensi');
    Route::get('ground-bahaya', 'DataController@getGroundBahaya');
    
    // ini untuk search
    Route::get('get/{cari}', 'DataController@pencarian');
});
<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('voyager::login');
})->name('awal');

Route::get('/home', function () {
	return view('home');
})->name('home');

// ubah di prefix dan di voyager config utk costum url admin nya
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


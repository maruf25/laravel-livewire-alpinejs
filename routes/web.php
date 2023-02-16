<?php

use App\Http\Livewire\Create;
use App\Http\Livewire\Studentlist;
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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', \App\Http\Livewire\Studentlist::class)->name('home');
Route::get('/create', \App\Http\Livewire\Create::class);
Route::get('/edit/{id}', \App\Http\Livewire\Edit::class)->name('edit');

<?php

use App\Http\Controllers\BookingController;
use App\Http\Controllers\FrontController;
use Illuminate\Support\Facades\Route;

Route::get('/', [FrontController::class, 'index'])->name('index');
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(
    [
        'middleware' => 'auth'
    ],
    function(){
        Route::get('/prenotazioni/{giorno}', [BookingController::class, 'visualizzaPrenotazioni'])->name('prenotazioni');
        Route::get('/prenotazioni/{giorno}/{ora}/{campo}', [BookingController::class, 'prenota'])->name('prenota');
    });

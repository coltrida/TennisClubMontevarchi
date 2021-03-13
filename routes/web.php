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
        Route::get('/prenotazioni/{giorno}/{campo}', [BookingController::class, 'visualizzaPrenotazioni'])->name('prenotazioni');
        Route::get('/prenotazioni2/{giorno}/{campo}', [BookingController::class, 'visualizzaPrenotazioni2'])->name('prenotazioni2');
        Route::get('/prenotazioni/{giorno}/{ora}/{campo}/{tipo}', [BookingController::class, 'prenota'])->name('prenota');
    });

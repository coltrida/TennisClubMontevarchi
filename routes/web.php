<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\FrontController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

Route::get('/', [FrontController::class, 'index'])->name('index');
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/iniziaCoda', function () {
    Artisan::call('queue:work');
});

Route::group(
    [
        'middleware' => 'auth'
    ],
    function(){
        Route::get('/prenotazioni/{giorno}/{campo}', [BookingController::class, 'visualizzaPrenotazioni'])->name('prenotazioni');
        Route::get('/prenotazioni2/{giorno}/{campo}', [BookingController::class, 'visualizzaPrenotazioni2'])->name('prenotazioni2');
        Route::get('/prenotazioni/{giorno}/{ora}/{campo}/{tipo}', [BookingController::class, 'prenota'])->name('prenota');
        Route::get('/listaPrenotazioniEliminabili/', [BookingController::class, 'listaEliminabili'])->name('listaEliminabili');
        Route::get('/eliminaPrenotazione/{id}', [BookingController::class, 'eliminaPrenotazione'])->name('eliminaPrenotazione');
    });

Route::group(
    [
        'middleware' => ['auth','verifyIsAdmin'],
    ],
    function(){
        Route::get('/prenotazioniParticolari/', [AdminController::class, 'prenotazioniParticolari'])->name('prenotazioniParticolari');
        Route::post('/prenotazioniParticolari/', [AdminController::class, 'setPrenotazioniParticolari'])->name('setPrenotazioniParticolari');
        Route::get('/eliminazioniParticolari/', [AdminController::class, 'eliminazioniParticolari'])->name('eliminazioniParticolari');
        Route::post('/eliminazioniParticolari/', [AdminController::class, 'setEliminazioniParticolari'])->name('setEliminazioniParticolari');
    });

<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\FrontController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

Route::get('/', [FrontController::class, 'index'])->name('index');
Route::get('/regolamento', [FrontController::class, 'regolamento'])->name('regolamento');
Route::get('/listino', [FrontController::class, 'listinoPrezzi'])->name('listino');
Route::get('/organigramma', [FrontController::class, 'organigramma'])->name('organigramma');
Route::get('/resetPassword', [FrontController::class, 'resetPassword'])->name('resetPassword');
Route::post('/resetPassword', [FrontController::class, 'inviaResetPassword'])->name('inviaResetPassword');
Route::get('/reimpostaPassword/{id}', [FrontController::class, 'reimpostaPassword'])->name('reimpostaPassword');
Route::post('/reimpostaPassword', [FrontController::class, 'setReimpostaPassword'])->name('setReimpostaPassword');
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
        Route::get('/disabilitaCampo', [AdminController::class, 'disabilitaCampo'])->name('disabilitaCampo');
        Route::get('/setDisabilitaCampo/{id}', [AdminController::class, 'setDisabilitaCampo'])->name('setDisabilitaCampo');
        Route::get('/ricaricaSocio', [AdminController::class, 'ricaricaSocio'])->name('ricaricaSocio');
        Route::post('/ricaricaSocio', [AdminController::class, 'setRicaricaSocio'])->name('setRicaricaSocio');
        Route::get('/stornaSocio', [AdminController::class, 'stornaSocio'])->name('stornaSocio');
        Route::post('/stornaSocio', [AdminController::class, 'setStornaSocio'])->name('setStornaSocio');
        Route::get('/inserisciSocio', [AdminController::class, 'inserisciSocio'])->name('inserisciSocio');
        Route::post('/inserisciSocio', [AdminController::class, 'setInserisciSocio'])->name('setInserisciSocio');
    });

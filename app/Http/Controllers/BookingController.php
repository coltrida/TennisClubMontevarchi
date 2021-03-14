<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookingRequest;
use App\Services\BookingService;
use function compact;
use function dd;
use function redirect;
use function view;

class BookingController extends Controller
{
    public function visualizzaPrenotazioni($giorno, $campo, BookingService $bookingService)
    {
        $bookings = $bookingService->showPrenotazioni($giorno, $campo);
        $ieri = $bookingService->ieri($giorno);
        $domani = $bookingService->domani($giorno);
        return view('prenotazioni.visualizzaPrenotazioni', compact('bookings', 'giorno', 'campo', 'ieri', 'domani'));
    }

    public function visualizzaPrenotazioni2($giorno, $campo, BookingService $bookingService)
    {
        $bookings = $bookingService->showPrenotazioni($giorno, $campo);
        $ieri = $bookingService->ieri($giorno);
        $domani = $bookingService->domani($giorno);
        $isAvailable = $bookingService->isAvailable($giorno);
        return view('prenotazioni.visualizzaPrenotazioni2', compact('bookings', 'isAvailable', 'giorno', 'campo', 'ieri', 'domani'));
    }

    public function prenota($giorno, $ora, $campo, $tipo, BookingService $bookingService)
    {
        if(!$bookingService->createPrenotazione($giorno, $ora, $campo, $tipo)) {
            return redirect()->back()->withMessage('Errore nella prenotazione - Credito insufficiente');
        }
        return redirect()->back()->withMessage('Prenotazione effettuata');
    }

    public function listaEliminabili(BookingService $bookingService)
    {
        $bookings = $bookingService->listaEliminabili();
        return view('prenotazioni.listaEliminabili', compact('bookings'));
    }

    public function eliminaPrenotazione($id, BookingService $bookingService)
    {
        if(!$bookingService->eliminaPrenotazione($id)) {
            return redirect()->back()->withMessage('Errore nella eliminazione');
        }
        return redirect()->back()->withMessage('Eliminazione effettuata');
    }
}

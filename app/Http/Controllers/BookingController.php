<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookingRequest;
use App\Services\BookingService;
use function compact;
use function dd;
use function view;

class BookingController extends Controller
{
    public function visualizzaPrenotazioni($giorno, BookingService $bookingService)
    {
        $bookings = $bookingService->showPrenotazioni($giorno);
        return view('prenotazioni.visualizzaPrenotazioni', compact('bookings', 'giorno'));
    }

    public function prenota($giorno, $ora, $campo, BookingService $bookingService)
    {
        //dd($giorno.' '.$ora.' '.$campo);
        if(!$bookingService->createPrenotazione($giorno, $ora, $campo)) {
            return redirect()->back()->withMessage('Errore nella prenotazione');
        }
        return redirect()->back()->withMessage('Prenotazione effettuata');
    }
}

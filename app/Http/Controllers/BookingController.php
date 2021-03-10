<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookingRequest;
use App\Services\BookingService;
use function compact;
use function dd;
use function view;

class BookingController extends Controller
{
    public function visualizzaPrenotazioni(BookingRequest $request, BookingService $bookingService)
    {
        $bookings = $bookingService->showPrenotazioni($request);
        $giorno = $request->giorno;
        return view('prenotazioni.visualizzaPrenotazioni', compact('bookings', 'giorno'));
    }

    public function prenota($giorno, $ora, $campo, BookingService $bookingService)
    {
        dd($giorno.' '.$ora.' '.$campo);
    }
}

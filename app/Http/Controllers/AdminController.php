<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookingAdminRequest;
use App\Services\BookingAdminService;
use Illuminate\Http\Request;
use function dd;
use function redirect;
use function view;

class AdminController extends Controller
{
    public function prenotazioniParticolari()
    {
        return view('prenotazioni.prenotazioniParticolari');
    }

    public function setPrenotazioniParticolari(BookingAdminRequest $request, BookingAdminService $bookingAdminService)
    {
        if(!$bookingAdminService->prenotazioneParticolare($request))
        {
            return redirect()->back()->withMessage('Errore nella prenotazione');
        }
        return redirect()->route('prenotazioni2',
            [
                'giorno' => $request->input('giornoPartenza'),
                'campo' => $request->input('campo')
            ])->withMessage('Prenotazione effettuata');
    }

    public function eliminazioniParticolari()
    {
        return view('prenotazioni.eliminazioniParticolari');
    }

    public function setEliminazioniParticolari(BookingAdminRequest $request, BookingAdminService $bookingAdminService)
    {
        if(!$bookingAdminService->prenotazioneParticolare($request))
        {
            return redirect()->back()->withMessage('Errore nella prenotazione');
        }
        return redirect()->route('prenotazioni2',
            [
                'giorno' => $request->input('giornoPartenza'),
                'campo' => $request->input('campo')
            ])->withMessage('Prenotazione effettuata');
    }
}

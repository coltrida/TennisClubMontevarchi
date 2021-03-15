<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookingAdminRequest;
use App\Models\Field;
use App\Services\BookingAdminService;
use function compact;
use function redirect;
use function view;

class AdminController extends Controller
{
    public function prenotazioniParticolari()
    {
        return view('admin.prenotazioniParticolari');
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
        return view('admin.eliminazioniParticolari');
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

    public function disabilitaCampo()
    {
        $fields = Field::get();
        return view('admin.disabilitaCampo', compact('fields'));
    }

    public function setDisabilitaCampo($id, BookingAdminService $bookingAdminService)
    {
        $bookingAdminService->toggleCampo($id);
        return redirect()->back();
    }
}

<?php


namespace App\Services;


use App\Models\Booking;
use function dd;

class BookingService
{
    public function showPrenotazioni($request)
    {
        $campo = $request->campo ? $request->campo : 1;
        $giorno = $request->giorno;
        $prenotazioni = Booking::with('users')->where([
                ['giorno', $giorno],
                ['campo', $campo]
            ])->get();
        //dd($prenotazioni);
        return $prenotazioni;
    }
}

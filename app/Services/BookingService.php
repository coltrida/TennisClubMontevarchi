<?php


namespace App\Services;


use App\Models\Booking;
use Illuminate\Support\Facades\Auth;
use function dd;

class BookingService
{
    public function showPrenotazioni($giorno)
    {
        $campo =  1;
        $prenotazioni = Booking::with('users')->where([
                ['giorno', $giorno],
                ['campo', $campo]
            ])->get();
        //dd($prenotazioni);
        return $prenotazioni;
    }

    public function createPrenotazione($giorno, $ora, $campo)
    {
        $res = $prenotazione = Booking::create([
            'giorno' => $giorno,
            'orainizio' => $ora,
            'campo' => $campo,
            'tipo' => 'Singolare'
        ]);

        if ($res){
            $prenotazione->users()->attach(Auth::id());
        }
    }
}

<?php


namespace App\Services;


use App\Models\Booking;
use Illuminate\Support\Facades\Auth;
use phpDocumentor\Reflection\Types\Boolean;
use function dd;

class BookingService
{
    public function showPrenotazioni($giorno, $campo)
    {
        return Booking::with('users:name')->where([
                ['giorno', $giorno],
                ['campo', $campo]
            ])->get();
    }

    public function createPrenotazione($giorno, $ora, $campo)
    {
        $res = true;
        $prenotazioneEsistente = $this->prentazioneEsistente($giorno, $ora, $campo);
        if (!$prenotazioneEsistente)
        {
            $res = $this->creaNuovaPrenotazione($giorno, $ora, $campo);
        } else {
            $res = $this->aggiornaPrenotazioneEsistente($prenotazioneEsistente);
        }
        return $res;
    }

    private function creaNuovaPrenotazione($giorno, $ora, $campo)
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
        return $res;
    }

    private function aggiornaPrenotazioneEsistente($prenotazioneEsistente)
    {
        return $prenotazioneEsistente->users()->attach(Auth::id());
    }

    private function prentazioneEsistente($giorno, $ora, $campo)
    {
        return Booking::where([
            ['giorno', $giorno],
            ['orainizio', $ora],
            ['campo', $campo]
        ])->first();
    }
}

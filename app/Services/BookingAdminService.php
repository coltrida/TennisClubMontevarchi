<?php


namespace App\Services;


use App\Models\Booking;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use function dd;

class BookingAdminService
{
    public function prenotazioneParticolare($request)
    {
        $dataPartenza = Carbon::make($request->input('giornoPartenza'));
        $dataFine = Carbon::make($request->input('giornoFine'));
        $oraPartenza = $request->input('orePartenza');
        $oraFine = $request->input('oreFine');
        $campo = $request->input('campo');
        $uri = $request->path();

        if ($dataPartenza == $dataFine)
        {
            for ($ora = $oraPartenza; $ora <= $oraFine; $ora++)
            {
                if ($uri == 'prenotazioniParticolari')
                {
                    $this->salvaOre($dataPartenza, $ora, $campo);
                }elseif ($uri == 'eliminazioniParticolari') {
                    $this->eliminaOre($dataPartenza, $ora, $campo);
                }
            }
        } else {
            for ($ora = $oraPartenza; $ora <= 22; $ora++)
            {
                if ($uri == 'prenotazioniParticolari')
                {
                    $this->salvaOre($dataPartenza, $ora, $campo);
                }elseif ($uri == 'eliminazioniParticolari') {
                    $this->eliminaOre($dataPartenza, $ora, $campo);
                }
            }
            for ($giorno = $dataPartenza->addDay(); $giorno < $dataFine; $giorno->addDay())
            {
                for ($ora = 9; $ora <= 22; $ora++)
                {
                    if ($uri == 'prenotazioniParticolari')
                    {
                        $this->salvaOre($giorno, $ora, $campo);
                    }elseif ($uri == 'eliminazioniParticolari') {
                        $this->eliminaOre($giorno, $ora, $campo);
                    }
                }
            }
            for ($ora = 9; $ora <= $oraFine; $ora++)
            {
                if ($uri == 'prenotazioniParticolari')
                {
                    $this->salvaOre($dataFine, $ora, $campo);
                }elseif ($uri == 'eliminazioniParticolari') {
                    $this->eliminaOre($dataFine, $ora, $campo);
                }
            }
        }

        return true;
    }

    private function salvaOre($giorno, $oraOn, $campo)
    {
        $res = $prenotazione = Booking::create([
            'giorno' => $giorno,
            'orainizio' => $oraOn,
            'campo' => $campo,
            'tipo' => 'Singolare'
        ]);
        if ($res){
            $prenotazione->users()->attach(Auth::id());
            $prenotazione->users()->attach(Auth::id());
        }
        return $res;

    }

    private function eliminaOre($giorno, $oraOn, $campo)
    {
        $res = $prenotazione = Booking::where([
            ['giorno', $giorno],
            ['campo', $campo],
            ['orainizio', $oraOn],
        ])->first();

        if ($res){
            $prenotazione->users()->detach(Auth::id());
            $prenotazione->users()->detach(Auth::id());
            $prenotazione->delete();
        }
        return $res;
    }

}

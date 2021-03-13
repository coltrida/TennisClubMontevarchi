<?php


namespace App\Services;


use App\Models\Booking;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use phpDocumentor\Reflection\Types\Boolean;
use function config;
use function dd;

class BookingService
{
    public function showPrenotazioni($giorno, $campo)
    {
        $booking = Booking::with('users:name')->where([
                ['giorno', $giorno],
                ['campo', $campo]
            ])->get();

        return $booking->mapWithKeys(function ($item) {
            return [$item['orainizio'] => $item];
        });
    }

    public function createPrenotazione($giorno, $ora, $campo, $tipo)
    {
        if(!$this->verficaCredito($tipo))
        {
            return false;
        }
        $prenotazioneEsistente = $this->prentazioneEsistente($giorno, $ora, $campo);
        if (!$prenotazioneEsistente)
        {
            $res = $this->creaNuovaPrenotazione($giorno, $ora, $campo, $tipo);
        } else {
            $res = $this->aggiornaPrenotazioneEsistente($prenotazioneEsistente);
        }
        return $res;
    }

    private function verficaCredito($tipo)
    {
        $user = Auth::user();
        if ($user->isIllimitati)
        // ------------------ illimitato --------------------------------
        {
            $user->ore_privilegi--;
            if ($user->ore_privilegi < 0 )
            {
                $user->ore_privilegi = 0;
            }
            $user->save();
            return true;
        } else
            // ----------------------privilegiato -----------------------------
            if ($user->isPrivilegi)
            {
                $user->ore_privilegi--;
                if ($user->ore_privilegi < 0 )
                // ------------ il privilegiato deve pagare con i soldi ------------------
                {
                    $user->ore_privilegi = 0;
                    if ($tipo == 'Singolare'){
                        // --------------------------- Privilegiato Singolare --------------------------
                        if($user->credito >= config('enum.costi.STANDARD_SINGOLO'))
                        {
                            $user->credito -= config('enum.costi.STANDARD_SINGOLO');
                            $user->save();
                            return true;
                        } else {
                            // ----------------- credito insufficiente per il singolo --------
                            return false;
                        }
                    } else {
                        // -----------------------------Privilegiato Doppio -----------------------------
                        if($user->credito >= config('enum.costi.STANDARD_DOPPIO'))
                        {
                            $user->credito -= config('enum.costi.STANDARD_DOPPIO');
                            $user->save();
                            return true;
                        } else {
                            // ----------------- credito insufficiente per il doppio --------
                            return false;
                        }
                    }
                } else {
                    // ---------------- il privilegiato paga con i privilegi -------------------------
                    $user->save();
                    return true;
                }
            } else {
                   // ----------------------------- utente normale -----------------------------
                    if ($user->eta < 18)
                    // ---------------------------- utente normale minorenne -----------------------------
                    {
                        if ($tipo == 'Singolare'){
                            // --------------------------- minorenne Singolare --------------------------
                            if($user->credito >= config('enum.costi.MINORENNI_SINGOLO'))
                            {
                                $user->credito -= config('enum.costi.MINORENNI_SINGOLO');
                                $user->save();
                                return true;
                            } else {
                                // ----------------- credito insufficiente per il singolo --------
                                return false;
                            }
                        } else {
                            // -----------------------------minorenne Doppio -----------------------------
                            if($user->credito >= config('enum.costi.MINORENNI_DOPPIO'))
                            {
                                $user->credito -= config('enum.costi.MINORENNI_DOPPIO');
                                $user->save();
                                return true;
                            } else {
                                // ----------------- credito insufficiente per il doppio --------
                                return false;
                            }
                        }
                    } else
                        {
                            // -------------------- utente normale standard ---------------------
                            if ($tipo == 'Singolare'){
                                // --------------------------- standard Singolare --------------------------
                                if($user->credito >= config('enum.costi.MINORENNI_SINGOLO'))
                                {
                                    $user->credito -= config('enum.costi.MINORENNI_SINGOLO');
                                    $user->save();
                                    return true;
                                } else {
                                    // ----------------- credito insufficiente per il singolo --------
                                    return false;
                                }
                            } else {
                                // -----------------------------standard Doppio -----------------------------
                                if($user->credito >= config('enum.costi.MINORENNI_DOPPIO'))
                                {
                                    $user->credito -= config('enum.costi.MINORENNI_DOPPIO');
                                    $user->save();
                                    return true;
                                } else {
                                    // ----------------- credito insufficiente per il doppio --------
                                    return false;
                                }
                            }
                        }
            }
    }

    private function creaNuovaPrenotazione($giorno, $ora, $campo, $tipo)
    {
        $res = $prenotazione = Booking::create([
            'giorno' => $giorno,
            'orainizio' => $ora,
            'campo' => $campo,
            'tipo' => $tipo
        ]);
        if ($res){
            $prenotazione->users()->attach(Auth::id());
        }
        return $res;
    }

    private function aggiornaPrenotazioneEsistente($prenotazioneEsistente)
    {
        $prenotazioneEsistente->users()->attach(Auth::id());
        return true;
    }

    private function prentazioneEsistente($giorno, $ora, $campo)
    {
        return Booking::where([
            ['giorno', $giorno],
            ['orainizio', $ora],
            ['campo', $campo]
        ])->first();
    }

    public function domani($giorno)
    {
        return Carbon::create($giorno)->addDay()->format('Y-m-d');
    }

    public function ieri($giorno)
    {
        return Carbon::create($giorno)->subDay()->format('Y-m-d');
    }

    public function isAvailable($giorno)
    {
        if(Auth::user()->isAdmin) {
            return true;
        }
        $giornosel = Carbon::make($giorno);
        $ieri = Carbon::now()->subDay();
        $limite = Carbon::now()->addDays(7);
        return $giornosel < $limite && $giornosel >= $ieri;
    }
}

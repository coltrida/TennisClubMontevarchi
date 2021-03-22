<?php


namespace App\Services;


use App\Mail\prenotazioneOra;
use App\Models\Booking;
use App\Models\BookingUser;
use App\Models\Field;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use function activity;
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
        if (!$this->verficaCredito($tipo)) {
            return false;
        }
        $prenotazioneEsistente = $this->prentazioneEsistente($giorno, $ora, $campo);
        if (!$prenotazioneEsistente) {
            $res = $this->creaNuovaPrenotazione($giorno, $ora, $campo, $tipo);
        } else {
            $res = $this->aggiornaPrenotazioneEsistente($prenotazioneEsistente);
        }
        Mail::to(Auth::user()->email)->queue(new PrenotazioneOra($giorno, $ora, $campo, $tipo, Auth::user()->credito));
        activity()->log("L'utente " . Auth::user()->name . " ha prenotato il " . $campo . " per il giorno " . $giorno . " alle ore " . $ora . " (" . $tipo . ")");
        return $res;
    }

    private function isIllimitato($user, $operazione)
    {
        if ($operazione == '-') {
            $user->ore_privilegi--;
            if ($user->ore_privilegi < 0) {
                $user->ore_privilegi = 0;
            }
            $user->save();
            activity()->log("L'utente " . Auth::user()->name . " ha pagato la prenotazione con i privilegi. Privilegi Residui €" . $user->ore_privilegi);

        } else {
            $user->ore_privilegi++;
            if ($user->ore_privilegi > 7) {
                $user->ore_privilegi = 7;
            }
            $user->save();
            activity()->log("L'utente " . Auth::user()->name . " ha ricevuto 1 privilegio. Privilegi Residui €" . $user->ore_privilegi);

        }
        return true;
    }

    private function pagamentoContanti($user, $importo)
    {
        if ($user->credito >= $importo) {
            $user->credito -= $importo;
            $user->save();
            activity()->log("L'utente " . Auth::user()->name . " ha pagato, per la prenotazione, un importo di € " . $importo . ". Credito Residuo €" . $user->credito);
            return true;
        } else {
            // ----------------- credito insufficiente --------
            activity()->log("L'utente " . Auth::user()->name . " ha tentato di effettuare una prenotazione, per un importo di €" . $importo . "ma il suo credito è insufficiente. Credito Residui €" . $user->credito);
            return false;
        }
    }

    private function ridareContanti($user, $importo)
    {
        $user->credito += $importo;
        $user->save();
        activity()->log("L'utente " . Auth::user()->name . " ha ricevuto un importo di € " . $importo . ". Credito Residuo €" . $user->credito);
        return true;
    }

    private function isPrivilegiato($user, $tipo, $operazione)
    {
        if ($operazione = '-') {
            $user->ore_privilegi--;
            if ($user->ore_privilegi < 0) // ------------ il privilegiato deve pagare con i soldi ------------------
            {
                $user->ore_privilegi = 0;
                if ($tipo == 'Singolare') {
                    // --------------------------- Privilegiato Singolare --------------------------
                    return $this->pagamentoContanti($user, config('enum.costi.STANDARD_SINGOLO'));
                } else {
                    // -----------------------------Privilegiato Doppio -----------------------------
                    return $this->pagamentoContanti($user, config('enum.costi.STANDARD_DOPPIO'));
                }
            } else {
                // ---------------- il privilegiato paga con i privilegi -------------------------
                $user->save();
                activity()->log("L'utente " . Auth::user()->name . " ha pagato la prenotazione con i privilegi. Privilegi Residui €" . $user->ore_privilegi);
                return true;
            }
        } else {
            $user->ore_privilegi++;
            $user->save();
            activity()->log("L'utente " . Auth::user()->name . " ha ricevuto 1 privilegio. Privilegi Residui €" . $user->ore_privilegi);

            return true;
        }
    }

    private function verficaCredito($tipo)
    {
        $user = Auth::user();
        if ($user->isIllimitati) // ------------------ illimitato --------------------------------
        {
            $this->isIllimitato($user, '-');
        } else
            // ----------------------privilegiato -----------------------------
            if ($user->isPrivilegi) {
                $this->isPrivilegiato($user, $tipo, '-');
            } else
                // ----------------------Non socio -----------------------------
                if ($user->isNonsocio) {
                    if ($user->eta < 18) // ---------------------------- utente Non socio minorenne -----------------------------
                    {
                        if ($tipo == 'Singolare') {
                            // --------------------------- Non socio minorenne Singolare --------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.MINORENNI_NONSOCI'));
                        } else {
                            // -----------------------------Non socio minorenne Doppio -----------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.MINORENNI_NONSOCI'));
                        }
                    } else {
                        // -------------------- utente Non socio standard ---------------------
                        if ($tipo == 'Singolare') {
                            // --------------------------- Non socio standard Singolare --------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.NONSOCI_SINGOLO'));
                        } else {
                            // -----------------------------Non socio standard Doppio -----------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.NONSOCI_DOPPIO'));
                        }
                    }
                } else {
                    // ----------------------------- utente socio normale -----------------------------
                    if ($user->eta < 18) // ---------------------------- utente socio minorenne -----------------------------
                    {
                        if ($tipo == 'Singolare') {
                            // --------------------------- minorenne socio Singolare --------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.MINORENNI_SINGOLO'));
                        } else {
                            // -----------------------------minorenne socio Doppio -----------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.MINORENNI_DOPPIO'));
                        }
                    } else {
                        // -------------------- utente socio normale standard ---------------------
                        if ($tipo == 'Singolare') {
                            // --------------------------- socio standard Singolare --------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.STANDARD_SINGOLO'));
                        } else {
                            // -----------------------------socio standard Doppio -----------------------------
                            return $this->pagamentoContanti($user, config('enum.costi.STANDARD_DOPPIO'));
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
        if ($res) {
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

    public function isAvailable($giorno, $campo)
    {
        if (Auth::user()->isAdmin) {
            return true;
        }
        if (!Field::where('nome', $campo)->first()->disponibile) {
            return false;
        }
        if (Auth::user()->isCertificatoScaduto) {
            return false;
        }
        $giornosel = Carbon::make($giorno);
        $ieri = Carbon::now()->subDay();
        $limite = Carbon::now()->addDays(7);
        return $giornosel < $limite && $giornosel >= $ieri;
    }

    public function listaEliminabili()
    {
        $oggi = Carbon::now()->format('Y-m-d');
        return Booking::with('users:id')->whereHas('users', function ($query) {
            return $query->where('user_id', Auth::id());
        })->where([
            ['giorno', '>', $oggi]
        ])->get();

        //dd($res);
    }

    public function eliminaPrenotazione($id)
    {
        $booking = Booking::with('users')->find($id);
        $this->ridareCredito($booking->tipo);
        $res = BookingUser::where('booking_id', $id)->where('user_id', Auth::id());
        $prenotazioneDaCancellare = BookingUser::where('booking_id', $id);
        $res->first()->delete();
        activity()->log("L'utente " . Auth::user()->name . " ha cancellato la prenotazione con id: " . $booking->id . " per il giorno " . $booking->giorno . " alle ore " . $booking->orainizio . " (" . $booking->tipo . ")");
        if ($prenotazioneDaCancellare->count() == 0) {
            $booking->delete();
        }
        return $res;
    }

    private function ridareCredito($tipo)
    {
        $user = Auth::user();
        if ($user->isIllimitati) // ------------------ illimitato --------------------------------
        {
            $this->isIllimitato($user, '+');
        } else
            // ----------------------privilegiato -----------------------------
            if ($user->isPrivilegi)
            {
                $this->isPrivilegiato($user, $tipo, '+');
            } else
                // ----------------------Non socio -----------------------------
                if ($user->isNonsocio)
                {
                    if ($user->eta < 18) // ---------------------------- utente normale minorenne -----------------------------
                    {
                        if ($tipo == 'Singolare') {
                            // --------------------------- minorenne Singolare --------------------------
                            return $this->ridareContanti($user, config('enum.costi.MINORENNI_NONSOCI'));
                        } else {
                            // -----------------------------minorenne Doppio -----------------------------
                            return $this->ridareContanti($user, config('enum.costi.MINORENNI_NONSOCI'));
                        }
                    } else {
                        // -------------------- utente normale standard ---------------------
                        if ($tipo == 'Singolare') {
                            // --------------------------- standard Singolare --------------------------
                            return $this->ridareContanti($user, config('enum.costi.NONSOCI_SINGOLO'));
                        } else {
                            // -----------------------------standard Doppio -----------------------------
                            return $this->ridareContanti($user, config('enum.costi.NONSOCI_DOPPIO'));
                        }
                    }
                } else {
                    // ----------------------------- utente normale -----------------------------
                    if ($user->eta < 18) // ---------------------------- utente normale minorenne -----------------------------
                    {
                        if ($tipo == 'Singolare') {
                            // --------------------------- minorenne Singolare --------------------------
                            return $this->ridareContanti($user, config('enum.costi.MINORENNI_SINGOLO'));
                        } else {
                            // -----------------------------minorenne Doppio -----------------------------
                            return $this->ridareContanti($user, config('enum.costi.MINORENNI_DOPPIO'));
                        }
                    } else {
                        // -------------------- utente normale standard ---------------------
                        if ($tipo == 'Singolare') {
                            // --------------------------- standard Singolare --------------------------
                            return $this->ridareContanti($user, config('enum.costi.STANDARD_SINGOLO'));
                        } else {
                            // -----------------------------standard Doppio -----------------------------
                            return $this->ridareContanti($user, config('enum.costi.STANDARD_DOPPIO'));
                        }
                    }
                }
    }
}

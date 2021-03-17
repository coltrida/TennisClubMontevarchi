<?php


namespace App\Services;


use App\Mail\RicaricaSocio;
use App\Mail\StornaSocio;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use function activity;
use function dd;
use function trim;
use Illuminate\Support\Str;

class UserService
{
    public function ricaricaCredito($request)
    {
        foreach ($request->selezionati as $id_utente) {
            $user = User::find($id_utente);
            $user->credito += (float)$request->importo;
            $user->save();
            Mail::to($user->email)->send(new RicaricaSocio($user->credito, (float)$request->importo));
            activity()->log("L'utente ".Auth::user()->name." ha ricaricato l'utente: ".$user->name." per un importo di euro: ".(float)$request->importo.". Credito attuale dell'utente: euro: ".$user->credito);

        }
    }

    public function stornaCredito($request)
    {
        foreach ($request->selezionati as $id_utente) {
            $user = User::find($id_utente);
            $user->credito -= (float)$request->importo;
            $user->save();
            Mail::to($user->email)->send(new StornaSocio($user->credito, (float)$request->importo));
            activity()->log("L'utente ".Auth::user()->name." ha stornato l'utente: ".$user->name." per un importo di euro: ".(float)$request->importo.". Credito attuale dell'utente: euro: ".$user->credito);

        }
    }

    public function inserisciSocio($request)
    {
        $nomelow = Str::lower($request->input('nome'));
        $cognomelow = Str::lower($request->input('cognome'));
        $nominativo = trim(Str::ucfirst($nomelow).' '.ucfirst(Str::ucfirst($cognomelow)));
        activity()->log("L'utente ".Auth::user()->name." ha creato l'utente: ".$nominativo." - Anno di nascita: ".$request->input('anno')." - Tipologia: ".$request->input('tipo')." - con ".$request->input('privilegi')." privilegi");

        return User::create([
            'name' => $nominativo,
            'anno' => $request->input('anno'),
            'tipo' => $request->input('tipo'),
            'ore_privilegi' => $request->input('privilegi')
        ]);
    }

    public function reimpostaPassword($request)
    {
        $user = User::find($request->id);
        $user->password = Hash::make($request->password);
        return $user->save();
    }
}

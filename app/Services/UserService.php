<?php


namespace App\Services;


use App\Mail\RicaricaSocio;
use App\Mail\StornaSocio;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
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
        }
    }

    public function stornaCredito($request)
    {
        foreach ($request->selezionati as $id_utente) {
            $user = User::find($id_utente);
            $user->credito -= (float)$request->importo;
            $user->save();
            Mail::to($user->email)->send(new StornaSocio($user->credito, (float)$request->importo));
        }
    }

    public function inserisciSocio($request)
    {
        $nomelow = Str::lower($request->input('nome'));
        $cognomelow = Str::lower($request->input('cognome'));
        $nominativo = trim(Str::ucfirst($nomelow).' '.ucfirst(Str::ucfirst($cognomelow)));
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

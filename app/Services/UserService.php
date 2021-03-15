<?php


namespace App\Services;


use App\Models\User;
use function dd;

class UserService
{
    public function ricaricaCredito($request)
    {
        foreach ($request->selezionati as $id_utente) {
            $user = User::find($id_utente);
            $user->credito += (float)$request->importo;
            $user->save();
        }
    }

    public function stornaCredito($request)
    {
        foreach ($request->selezionati as $id_utente) {
            $user = User::find($id_utente);
            $user->credito -= (float)$request->importo;
            $user->save();
        }
    }
}

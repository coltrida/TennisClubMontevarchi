<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookingAdminRequest;
use App\Http\Requests\CertificatoRequest;
use App\Http\Requests\CreditoSocioRequest;
use App\Http\Requests\InsertSocioRequest;
use App\Models\Field;
use App\Models\User;
use App\Services\BookingAdminService;
use App\Services\UserService;
use DB;
use Hash;
use Spatie\Activitylog\Models\Activity;
use Str;
use Symfony\Component\HttpFoundation\Request;
use function compact;
use function config;
use function dd;
use function redirect;
use function trim;
use function ucfirst;
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
            return redirect()->back()->withMessage('Errore nella eliminazione');
        }
        return redirect()->route('prenotazioni2',
            [
                'giorno' => $request->input('giornoPartenza'),
                'campo' => $request->input('campo')
            ])->withMessage('Eliminazione effettuata');
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

    public function ricaricaSocio()
    {
        $soci = User::orderBy('name')->get();
        return view('admin.ricaricaSocio', compact('soci'));
    }

    public function setRicaricaSocio(CreditoSocioRequest $request, UserService $userService)
    {
        $userService->ricaricaCredito($request);
        return redirect()->back();
    }

    public function stornaSocio()
    {
        $soci = User::orderBy('name')->get();
        return view('admin.stornaSocio', compact('soci'));
    }

    public function setStornaSocio(CreditoSocioRequest $request, UserService $userService)
    {
        $userService->stornaCredito($request);
        return redirect()->back();
    }

    public function inserisciSocio()
    {
        return view('admin.inserisciSocio');
    }

    public function setInserisciSocio(InsertSocioRequest $request, UserService $userService)
    {

        if(!$userService->inserisciSocio($request))
        {
            return redirect()->back()->withMessage('Errore nella creazione del socio');
        }
        return redirect()->back()->withMessage('Socio Creato');
    }

    public function logging()
    {
        $logs = Activity::latest()->get();
        return view('admin.logging', compact('logs'));
    }

    public function certificati()
    {
        $soci = User::orderBy('name')->get();
        return view('admin.certificati', compact('soci'));
    }

    public function setCertificato(CertificatoRequest $request, UserService $userService)
    {
        if(!$userService->aggiornaCertificato($request))
        {
            return redirect()->back()->withMessage('Errore aggiornamento certificato');
        }
        return redirect()->back()->withMessage('Certificato aggiornato correttamente');
    }

    public function upload()
    {
            /*$sql = "select * from utentiold where ob_indirizzo_email = '$user->email'";
            $trovato = DB::select($sql);
            if ($trovato){
                $sql2 = "select * from soci where user = '$trovato[0]->ob_username'";
                $trovato2 = DB::select($sql2);
                $user->credito = $trovato[0]->credito;
                $user->username = $trovato[0]->ob_username;
                $user->password = Hash::make($trovato[0]->ob_password);
                if($trovato2[0]->gratis == 1){
                    $user->tipo = config('enum.tipo.PRIVILEGI');
                } else if ($trovato2[0]->illimitati == 1) {
                    $user->tipo = config('enum.tipo.ILLIMITATI');
                }
                $user->save();
            }*/
            $sql = "select * from utentiold";
            $utentiold = DB::select($sql);
            //dd($utentiold);
            foreach ($utentiold as $utenteold)
            {
                $nomelow = Str::lower($utenteold->ob_nome);
                $cognomelow = Str::lower($utenteold->ob_cognome);
                $nominativo = trim(Str::ucfirst($nomelow).' '.ucfirst(Str::ucfirst($cognomelow)));
                User::insert(
                    [
                        'name' => $nominativo,
                        'username' => $utenteold->ob_username,
                        'email' => $utenteold->ob_indirizzo_email,
                        'anno' => $utenteold->ob_anno_nascita,
                        'tipo' => config('enum.tipo.STANDARD'),
                        'ore_privilegi' => $utenteold->privilegi,
                        'credito' => $utenteold->credito,
                        'email_verified_at' => now(),
                        'created_at' => now(),
                        'updated_at' => now(),
                        'password' => Hash::make($utenteold->ob_password),
                        'scadenzaCertificato' => $utenteold->certificato,
                    ]);
            }
    }

    public function duplicates()
    {

        $sql = "SELECT ob_indirizzo_email, COUNT(ob_indirizzo_email) FROM utentiold GROUP BY ob_indirizzo_email HAVING COUNT(ob_indirizzo_email) > 1";
        $utentiold = DB::select($sql);

        dd($utentiold);
    }
}

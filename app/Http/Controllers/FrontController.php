<?php

namespace App\Http\Controllers;

use App\Http\Requests\ReimpostaPasswordRequest;
use App\Http\Requests\ResetPasswordRequest;
use App\Mail\ResetPasswordEmail;
use App\Models\User;
use App\Services\UserService;
use Illuminate\Support\Facades\Mail;
use function compact;
use function dd;
use function redirect;
use function view;

class FrontController extends Controller
{
    public function index()
    {
        return view('home');
    }

    public function regolamento()
    {
        return view('front.regolamento');
    }

    public function listinoPrezzi()
    {
        return view('front.listino');
    }

    public function organigramma()
    {
        return view('front.organigramma');
    }

    public function resetPassword()
    {
        return view('resetPassword');
    }

    public function inviaResetPassword(ResetPasswordRequest $request)
    {
        $user = User::where('email', $request->email)->first();
        Mail::to($request->email)->send(new ResetPasswordEmail($user->id));
        return redirect()->back()->withMessage('Richiesta effettuata! Apri la tua casella di posta e segui le istruzioni per re-impostare la tua password');
    }

    public function reimpostaPassword($id)
    {
        return view('reimpostaPassword', compact('id'));
    }

    public function setReimpostaPassword(ReimpostaPasswordRequest $request, UserService $userService)
    {
        if(!$userService->reimpostaPassword($request)) {
            return redirect()->back()->withMessage('Errore nella re-impostazione password');
        }
        return redirect()->back()->withMessage('Reimpostazione password effettuata - Vai al Login');
    }
}

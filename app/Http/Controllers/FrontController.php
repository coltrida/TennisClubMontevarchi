<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use function view;

class FrontController extends Controller
{
    public function index()
    {
        return view('home');
    }

    public function regolamento()
    {
        return view('regolamento');
    }

    public function listinoPrezzi()
    {
        return view('listino');
    }

    public function organigramma()
    {
        return view('organigramma');
    }
}

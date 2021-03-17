<?php

namespace App\Mail;

use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Auth;

class PrenotazioneOra extends Mailable
{
    use Queueable, SerializesModels;

    public $giorno;
    public $ora;
    public $campo;
    public $tipo;
    public $credito;

    /**
     * Create a new message instance.
     * @var string $giorno
     * @var int $ora
     * @var string $campo
     * @var string $tipo
     * @var float $credito
     * @return void
     */
    public function __construct($giorno, $ora, $campo, $tipo, $credito)
    {
        $this->giorno = Carbon::make($giorno)->format('d/m/Y');
        $this->ora = $campo == 'Campo1' || $campo == 'Campo2' ? $ora.':00' : $ora.':30' ;
        $this->campo = $campo;
        $this->tipo = $tipo;
        $this->credito = $credito;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('mails.prenotazioneOra');
    }
}

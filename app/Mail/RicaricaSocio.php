<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class RicaricaSocio extends Mailable
{
    use Queueable, SerializesModels;

    public $importoAccreditato;
    public $creditoAggiornato;

    /**
     * Create a new message instance.
     * @var float $creditoAggiornato
     * @var float $importoAccreditato
     * @return void
     */
    public function __construct($creditoAggiornato, $importoAccreditato)
    {
        $this->importoAccreditato = $importoAccreditato;
        $this->creditoAggiornato = $creditoAggiornato;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('mails.ricaricaSocio');
    }
}

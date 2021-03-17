<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class StornaSocio extends Mailable
{
    use Queueable, SerializesModels;

    public $importoStornato;
    public $creditoAggiornato;

    /**
     * Create a new message instance.
     * @var float $creditoAggiornato
     * @var float $importoStornato
     * @return void
     */
    public function __construct($creditoAggiornato, $importoStornato)
    {
        $this->importoStornato = $importoStornato;
        $this->creditoAggiornato = $creditoAggiornato;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('mails.stornaSocio');
    }
}

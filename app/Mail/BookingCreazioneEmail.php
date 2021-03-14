<?php

namespace App\Mail;

use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class BookingCreazioneEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $giorno;
    public $ora;
    public $campo;
    public $tipo;

    /**
     * Create a new message instance.
     * @var string $tipo
     * @var string $giorno
     * @var string $campo
     * @var int $ora
     * @return void
     */
    public function __construct($giorno, $ora, $campo, $tipo)
    {
        $this->campo = $campo;
        $this->giorno = Carbon::make($giorno)->format('d/m/Y');
        $this->ora = $ora;
        $this->tipo = $tipo;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('mails.bookingCreazione');
    }
}

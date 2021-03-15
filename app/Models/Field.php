<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Field extends Model
{
    use HasFactory;

    public function getStatoAttribute()
    {
        return $this->disponibile == 1 ? 'disponibile' : 'Non disponibile';
    }
}

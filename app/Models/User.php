<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use function config;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Ritorna true se è un Admin.
     *
     * @return  bool
     */
    public function getIsAdminAttribute()
    {
        return $this->tipo === config('enum.tipo.ADMIN');
    }

    /**
     * Ritorna true se è un Privilegiato o Illimitato.
     *
     * @return  bool
     */
    public function getHasPrivilegiAttribute()
    {
        return $this->tipo === config('enum.tipo.PRIVILEGI') || $this->tipo === config('enum.tipo.ILLIMITATI');
    }

    /**
     * Ritorna true se è un Privilegiato.
     *
     * @return  bool
     */
    public function getIsPrivilegiAttribute()
    {
        return $this->tipo === config('enum.tipo.PRIVILEGI');
    }

    /**
     * Ritorna true se Illimitato.
     *
     * @return  bool
     */
    public function getIsIllimitatiAttribute()
    {
        return $this->tipo === config('enum.tipo.ILLIMITATI');
    }

    /**
     * Ritorna true se Non socio.
     *
     * @return  bool
     */
    public function getIsNonsocioAttribute()
    {
        return $this->tipo === config('enum.tipo.NONSOCIO');
    }

    /**
     * Ritorna eta.
     *
     * @return  int
     */
    public function getEtaAttribute()
    {
        return Carbon::now()->year - $this->anno;
    }

    public function bookings()
    {
        return $this->belongsToMany(Booking::class);
    }
}

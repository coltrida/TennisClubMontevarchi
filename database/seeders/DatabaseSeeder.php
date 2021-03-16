<?php

namespace Database\Seeders;

use App\Models\Field;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use function config;
use function now;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        User::insert([
            [
                'name' => 'Tc Montavarchi',
                'username' => 'admin',
                'email' => 'cacao@cacao.it',
                'anno' => 1975,
                'tipo' => config('enum.tipo.ADMIN'),
                'ore_privilegi' => 7,
                'credito' => 100,
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'Utente Normale',
                'username' => 'cacao2',
                'email' => 'cacao2@cacao.it',
                'anno' => 1990,
                'tipo' => config('enum.tipo.STANDARD'),
                'ore_privilegi' => 0,
                'credito' => 100,
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'Utente Minorenne',
                'username' => 'cacao3',
                'email' => 'cacao3@cacao.it',
                'anno' => 2021,
                'tipo' => config('enum.tipo.STANDARD'),
                'ore_privilegi' => 0,
                'credito' => 100,
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'Utente Illimitato',
                'username' => 'illimitato',
                'email' => 'illimitato@cacao.it',
                'anno' => 1975,
                'tipo' => config('enum.tipo.ILLIMITATI'),
                'ore_privilegi' => 7,
                'credito' => 100,
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'Utente Privilegi',
                'username' => 'privilegi',
                'email' => 'privilegi@cacao.it',
                'anno' => 1975,
                'tipo' => config('enum.tipo.PRIVILEGI'),
                'ore_privilegi' => 7,
                'credito' => 100,
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'NonSocio Standard',
                'username' => 'nonsociostandard',
                'email' => 'nonsociostandard@cacao.it',
                'anno' => 1975,
                'tipo' => config('enum.tipo.NONSOCIO'),
                'ore_privilegi' => 0,
                'credito' => 100,
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'NonSocio Minorenne',
                'username' => 'nonsociominorenne',
                'email' => 'nonsociominorenne@cacao.it',
                'anno' => 2010,
                'tipo' => config('enum.tipo.NONSOCIO'),
                'ore_privilegi' => 0,
                'credito' => 100,
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
        ]);

        Field::insert([
            [
                'nome' => 'Campo1',
                'disponibile' => true,
            ],
            [
                'nome' => 'Campo2',
                'disponibile' => true,
            ],
            [
                'nome' => 'Campo3',
                'disponibile' => true,
            ],
            [
                'nome' => 'Campo4',
                'disponibile' => true,
            ],
            [
                'nome' => 'Campo5',
                'disponibile' => true,
            ],
        ]);
    }
}

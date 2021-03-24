<?php

namespace Database\Seeders;

use App\Models\Field;
use App\Models\User;
use DB;
use Hash;
use Illuminate\Database\Seeder;
use function config;
use function file_get_contents;
use function now;
use function public_path;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
            [
                'name' => 'Tc Montevarchi',
                'username' => 'cacao',
                'email' => 'coltrida@gmail.com',
                'anno' => 1975,
                'tipo' => config('enum.tipo.ADMIN'),
                'ore_privilegi' => 7,
                'credito' => 100,
                'scadenzaCertificato' => '2021-08-20',
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'Marco Cat',
                'username' => 'guga',
                'email' => 'guga@gmail.com',
                'anno' => 1975,
                'tipo' => config('enum.tipo.STANDARD'),
                'ore_privilegi' => 7,
                'credito' => 100,
                'scadenzaCertificato' => '2021-08-20',
                'email_verified_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
                'password' => Hash::make('123456'),
            ],
            [
                'name' => 'Davide colt',
                'username' => 'colt',
                'email' => 'colt@gmail.com',
                'anno' => 1975,
                'tipo' => config('enum.tipo.STANDARD'),
                'ore_privilegi' => 7,
                'credito' => 100,
                'scadenzaCertificato' => '2021-08-20',
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

        $path = public_path('sql/SqlSoci.sql');
        $sql = file_get_contents($path);
        DB::unprepared($sql);

        $path = public_path('sql/SqlUtenti.sql');
        $sql = file_get_contents($path);
        DB::unprepared($sql);
    }
}

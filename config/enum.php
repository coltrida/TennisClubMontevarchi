<?php

use App\Models\Field;

return [
    'tipo' => [
        'STANDARD' => "standard",
        'ADMIN' => "admin",
        'ILLIMITATI' => "illimitati",
        'PRIVILEGI' => "privilegi",
        'NONSOCIO' => "nonsocio",
    ],

    'costi' => [
        'STANDARD_SINGOLO' => 5.5,
        'STANDARD_DOPPIO' => 4.5,
        'MINORENNI_SINGOLO' => 3,
        'MINORENNI_DOPPIO' => 3,
        'NONSOCI_SINGOLO' => 10,
        'NONSOCI_DOPPIO' => 7.5,
        'MINORENNI_NONSOCI' => 5,
        'OVER_NONSOCI' => 10,
        'OVER_SOCI_SINGOLO' => 5.5,
        'OVER_SOCI_DOPPIO' => 4.5,
    ],

    'tagli' => [2.5, 3, 4.4, 5.5, 6, 8, 10, 20, 30, 40, 50],


    'campi' => ['Campo1', 'Campo2', 'Campo3', 'Campo4', 'Campo5'],

    'terreni' => ['Terra Rossa', 'Terra Rossa', 'Cemento', 'Cemento', 'Erba'],

];

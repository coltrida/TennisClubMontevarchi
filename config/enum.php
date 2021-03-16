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
        'NONSOCI_DOPPIO' => 6.5,
        'MINORENNI_NONSOCI' => 3.5,
        'OVER_NONSOCI' => 7,
    ],

    'tagli' => [2, 4, 6, 8, 10],


    'campi' => ['Campo1', 'Campo2', 'Campo3', 'Campo4', 'Campo5'],

];

<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface GajinLainInterface
{    
    public function RumusTotalGajiLain($gaji, $tunjangan_tetap, $tunjangan_tidak_tetap, $tunjangan_asuransi, $THR);

}
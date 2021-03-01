<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface LaborInterface
{
    
    public function RumusBiayaGajiUpahSupervisor($shift, $mesin_yang_ditangai_spv, $code_mesin);

    public function RumusBiayaGajiUpahOperator($shift, $operator);

    public function RumusBiayaGajiUpahHelper($shift, $helper);

    public function RumusTotalBiayaLabor($supervisor, $operator, $helper);

}
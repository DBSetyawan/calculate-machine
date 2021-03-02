<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface LBagianPenjualanInterface
{
    
    public function RumusLapBagianPenjualanPerbulan(
                        $tahun1,
                        $tahun2,
                        $tahun3,
                        $nama_biaya
                    );

                                    
}
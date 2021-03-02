<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface AccountMaintenanceInterface
{
    
    public function HitungTotalBiayaLuarMesinProduksi(
                        $mesinpord1,
                        $mesinpord2,
                        $mesinpord3,
                        $nama_account
                    );
              
}
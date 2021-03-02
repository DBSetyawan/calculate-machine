<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface LporanBiayaAdministrasiUmumInterface
{
    
    public function TotalLaporanBiayaAdministrasiUmum($tahun_awal,$tahun_kedua,$tahun_ketiga, $nama_biaya);
              
}
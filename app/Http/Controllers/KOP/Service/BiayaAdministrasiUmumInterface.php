<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface BiayaAdministrasiUmumInterface
{
    
    public function RumusTotalBiayaAdministrasiUmum($biaya_pertahun);

}
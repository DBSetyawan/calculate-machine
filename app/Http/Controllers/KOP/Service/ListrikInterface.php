<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface ListrikInterface
{
    
    public function RumusPemakaianLWBP(
                        $shift,
                        $ampere,
                        $voltase,$mesin
                    );

    public function RumusPemakaianWBP(
                        $shift,
                        $ampere,
                        $voltase,$mesin
                    );

    public function RumusTotalBiayaListrik(
                        $listrik,
                        $lwbp_perminggu,
                        $wbp_perminggu,
                        $faktorkali_LWBP,
                        $faktorkali_WBP, $mesin
                    );

    public function RumusCostPerbulan(
                        $totalbiayalistrikperminggu
                    );

    public function RumusPersenListrik(
                        $totalbiayacostperbulan,
                        $totalbiayalistrikperminggu
                    );

    public function RumusBiayaCostADM(
                        $totalBiayaPPJ,
                        $prosentaseCostPerbulan
                    );
                                    
}
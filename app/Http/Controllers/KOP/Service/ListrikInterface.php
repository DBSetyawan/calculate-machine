<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface ListrikInterface
{
    
    public function RumusPemakaianLWBP_shift1(
                        $shift,
                        $ampere,
                        $voltase,
                        $mesin,
                        $lwbp,
                        $angkaperminggu
                    );

    public function RumusPemakaianLWBP_shift2(
                        $shift,
                        $ampere,
                        $voltase,
                        $mesin,
                        $lwbp,
                        $angkaperminggu
                    );

    public function RumusPemakaianLWBP_shift3(
                        $shift,
                        $ampere,
                        $voltase,
                        $mesin,
                        $lwbp,
                        $angkaperminggu
                    );

    public function RumusPemakaianLWBP_shift0(
                        $shift,
                        $ampere,
                        $voltase,
                        $mesin,
                        $lwbp,
                        $angkaperminggu
                    );

    public function RumusPemakaianWBP(
                        $shift,
                        $ampere,
                        $voltase,
                        $mesin,
                        $lwbp,
                        $angkaperminggu
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
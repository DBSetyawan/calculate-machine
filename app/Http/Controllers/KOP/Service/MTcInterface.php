<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface MTcInterface
{
    
    public function RmsMTCperbaikanperbulan(
                        $prthn,$code_mesin
                    );
    public function RmsMTCSparePartPerbulan(
                        $prthn
                    );
    public function RmsMTCTotalPerbulan(
                        $prthn,
                        $prbln
                    );
              
}
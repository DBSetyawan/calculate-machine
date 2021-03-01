<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface PenyusutanInterface
{
    
    public function RmsPenyusutan(
                        $purchase,
                        $umurbln
                    );
              
}
<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface TrackData
{
    
    public static function ModuleTrackingTransactionData(
                        $table,
                        $datalama,
                        $datanew
                    );
}
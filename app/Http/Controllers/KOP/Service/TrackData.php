<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface TrackData
{

    public static function ModuleTrackingTransactionDataRecalculate(
                        $table,
                        $datalama,
                        $datanew
                    );
    
    public static function ModuleTrackingTransactionData(
                        $table,
                        $datalama,
                        $datanew
                    );

    public static function ModuleTrackingTransactionDataREST(
                        $table,
                        $datalama,
                        $datanew
                    );
                    
}
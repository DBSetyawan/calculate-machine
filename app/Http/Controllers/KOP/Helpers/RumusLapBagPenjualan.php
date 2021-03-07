<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\LaporanBagianPenjualan;
use Carbon\Carbon;
use Illuminate\Support\Str;

class RumusLapBagPenjualan {

    const BIAYA_TAHUNAN = 36; // selama 3 tahun dalam bulan

    public static function TotalLPenjualanBagianPenjualan($t1, $t2, $t3, $check_namaBiaya) {

        if($check_namaBiaya == "MARKETING-SAMPLE CUSTOMER"):

                $grand_total_laporan_biaya_bulanan_periode = ( ( $t2 + $t3 ) / static::BIAYA_TAHUNAN );

            else:

                $grand_total_laporan_biaya_bulanan_periode = ( ( $t1 + $t2 + $t3 ) / static::BIAYA_TAHUNAN );

        endif;

        return $grand_total_laporan_biaya_bulanan_periode;
    }

    public static function TotalSeluruhLPenjualanBagianPenjualan() {

        $totaljumlahtotalterkait = [
                    '30',
                    '28',
                    '31',
                    '32',
                    '33',
                    '34',
                    '35',
                    '36',
        ];

        /**
        * =(SUM(J5:J25))-(SUM(J6:J13)*0,67)
        * Total Seluruh Biaya/Perbulan.
        */
        $terkaitjumlahtotallapenjualan = LaporanBagianPenjualan::whereIn('id', $totaljumlahtotalterkait)->sum('biaya_perbulan_bag_penjualan');
        $totalseluruhlappenualanperbulan = LaporanBagianPenjualan::all();

            $ttal_params1 = collect([$totalseluruhlappenualanperbulan])->sum(function ($counprm1){
                return $counprm1->sum('biaya_perbulan_bag_penjualan');
            });

        return ( $ttal_params1) - ( ($terkaitjumlahtotallapenjualan) * 0.67 );

    }

    public static function generateIDBLPenjualan(){
        
        $id = LaporanBagianPenjualan::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);

        if ($id==null) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("LPBP".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }

}
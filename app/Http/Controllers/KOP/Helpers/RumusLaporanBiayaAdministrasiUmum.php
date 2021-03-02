<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\LaporanBiayaAdministrasiUmum;
use Carbon\Carbon;
use Illuminate\Support\Str;

class RumusLaporanBiayaAdministrasiUmum {

    const TAHUN_TIGA_TAHUN = 36; // tahun selama 3 tahun
    const TAHUN_AVAILABLE = 4;

    public static function HitungTotalBiayaAdminstrasiUmum($t1, $t2, $t3, $nama_biaya) {

        if(in_array($nama_biaya, ["SPAREPARTS KENDARAAN","SPAREPARTS KENDARAAN","SPAREPARTS GEDUNG/INVENTARIS/INSTALASI"])):
    
                // =+SUM(I24:K24)/(36*4)
                    $grand_total = ( ($t1 + $t2 + $t3) / (static::TAHUN_TIGA_TAHUN * static::TAHUN_AVAILABLE) );

                else:

                    if(in_array($nama_biaya, ["BBM & PELUMAS","SEWA TANAH","PLN"])):
                    
                        $grand_total = 0.0;

                        else:       

                            // =+SUM(I17:K17)/36
                            $grand_total = ( ($t1 + $t2 + $t3) / static::TAHUN_TIGA_TAHUN );

                    endif;
                    
            endif;

        return $grand_total;

    }

    public static function generateIDLaporanBiayaAdministrasiUmum(){
        
        $id = LaporanBiayaAdministrasiUmum::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);

        if ($id==null) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("LBAU".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }

}
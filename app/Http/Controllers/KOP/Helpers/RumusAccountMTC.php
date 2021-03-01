<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\AccountMtc;
use Carbon\Carbon;
use Illuminate\Support\Str;

class RumusAccountMTC {

    const SELAMA_EMPAT_TAHUN_DALAM_BULAN = 36;

    const PENYUSUTAN_DALAMTAHUN = 4;

    public static function HitungBiayaLainMesinProduksiMaintenance($mesinlaintahun1, $mesinlaintahun2, $mesinlaintahun3, $nama_account) {

        // =+SUM(AB16:AD16)/(36*4)

        if(in_array($nama_account, ['UMUM-PEMELIHARAAN & PERBAIKAN GEDUNG','UMUM-SPAREPARTS MESIN/GEDUNG/PERALATAN/INSTALASI','UMUM-PELATIHAN'])){
            
                $hitungPenyusutanDalamTahun = ( ($mesinlaintahun1 + $mesinlaintahun2 + $mesinlaintahun3) / ( static::SELAMA_EMPAT_TAHUN_DALAM_BULAN * static::PENYUSUTAN_DALAMTAHUN) );
            
            } 
                else {

                    $hitungPenyusutanDalamTahun = ( ($mesinlaintahun1 + $mesinlaintahun2 + $mesinlaintahun3) / static::SELAMA_EMPAT_TAHUN_DALAM_BULAN );
            
            }

        return isset($hitungPenyusutanDalamTahun) ? $hitungPenyusutanDalamTahun : 0;

    }

    public static function generateIDAccountACMTC(){
        
        $id = AccountMtc::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);

        if ($id==null) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("ACMTC".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }

}
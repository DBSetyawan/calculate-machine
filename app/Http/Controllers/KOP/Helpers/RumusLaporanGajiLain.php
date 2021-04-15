<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\GajiLain;
use App\JobLevel;
use App\Labor;
use App\Listrik;
use Carbon\Carbon;
use Illuminate\Support\Str;
use PhpParser\Node\Expr\Cast\Double;

class RumusLaporanGajiLain {

    public static function JumlahLaporanGajiLain($tahun1, $tahun2, $tahun3) {

        if(is_null($tahun1) ){
            $intervaltahun = ( ( $tahun2 + $tahun3 ) / 24); // 3/2
        }else if(is_null($tahun2) ){
            $intervaltahun = ( ( $tahun1 + $tahun3 ) / 24); // 1/3
        }else if(is_null($tahun3) ){
            $intervaltahun = ( ( $tahun2 + $tahun1 ) / 24); // 2/1

        }else if(is_null($tahun3) && is_null($tahun2) ){ // 3 /2 on
            $intervaltahun = ( ( $tahun1 ) / 12);
        }else if(is_null($tahun3) && is_null($tahun1)){ // 3 /1 on
            $intervaltahun = ( ( $tahun2 ) / 12);
        }else if(is_null($tahun1) && is_null($tahun2)){ // 1 /2
            $intervaltahun = ( ( $tahun3 ) / 12);

        }else if(is_null($tahun1) && is_null($tahun2) && is_null($tahun3)){
            $intervaltahun = 0;
        } else {

            $intervaltahun = ( ( $tahun2 + $tahun1 + $tahun3) / 36); // on
        }

        return $intervaltahun;

    }

    public static function generateIDLaporanGajiLain(){
        
        $id = GajiLain::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);

        if ($id==null) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("GJL".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }


}

<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\RptMtc;
use Carbon\Carbon;
use App\ListrikOutput;
use Illuminate\Support\Str;

class RumusRptMaintenance {

    const SELAMA_EMPAT_TAHUN_DALAM_BULAN = 36;
    const EMPAT_TAHUN = 4;

    public static function HitungRataRataPerbaikanPerbulan($perbaikan_, $perbaikan__, $perbaikan___) {

        return (float) ( ($perbaikan_ + $perbaikan__ + $perbaikan___) / ( static::SELAMA_EMPAT_TAHUN_DALAM_BULAN * static::EMPAT_TAHUN ) );

    }

    public static function HitungRataRataSparePartPerbulan($sparepart_, $sparepart__, $sparepart___) {

        return (float) ( ($sparepart_ + $sparepart__ + $sparepart___) / ( static::SELAMA_EMPAT_TAHUN_DALAM_BULAN * static::EMPAT_TAHUN ) );

    }

    public static function HitungTotalBiayaProduksi($total_account_RPTMTC, $listrikoutputperjam, $category_bagian) {

        $ListrikOutput = new ListrikOutput;
        $total_listrik = $ListrikOutput->get();

        $total_output_output_perjam = collect([$total_listrik])->sum(function ($region){
                return $region->sum('output_perjam');
            });

        if(in_array($category_bagian, [1])){

            $hitungBiayaProduksiLain = 0;

        }   
            else {

                $hitungBiayaProduksiLain = ( $total_output_output_perjam * $listrikoutputperjam );

            }

        return isset($hitungBiayaProduksiLain) ? $hitungBiayaProduksiLain : 0;

    }

    public static function HitungTotalPenyusutanPerbulan($ratart_perbaikanperbulan, $ratart_sparepartperbulan) {

        return ( $ratart_perbaikanperbulan + $ratart_sparepartperbulan );

    }

    public static function generateIDRPTRPTMTC(){
        
        $id = RptMtc::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);

        if ($id==null) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("RPTMTC".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }

}
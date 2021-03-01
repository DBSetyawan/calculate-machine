<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\Mtc;
use App\Labor;
use App\RptMtc;
use App\Listrik;
use App\GajiLain;
use App\TotalCalc;
use Carbon\Carbon;
use App\Penyusutan;
use App\ListrikOutput;
use App\BagianPenjualan;
use App\LaporanGajiLain;
use Illuminate\Support\Str;
use App\BiayaAdministrasiUmum;
use App\LaporanBiayaAdministrasiUmum;
use App\TotalKalkulasiTanpaPenyusutan;

class RptCalcMachine {

    public static function frm_rph($rp){

        return "Rp. ".number_format($rp, 0, '.', ',');

    }

    public static function InstanceOfListrik() {

        return Listrik::with('Mesin')->get();

    }

    public static function InstanceOfPenyusutan() {

        return Penyusutan::all();

    }

    public static function InstanceOfMaintenance() {

        return Mtc::all();

    }

    public static function InstanceOfMtcRpt() {

        return RptMtc::all();

    }

    public static function InstanceOfLaborMTC() {

        return GajiLain::whereIn('mtc', ['true'])->max('total_biaya_labor');

    }

    public static function InstanceOfLaborRptMtc() {

        return LaporanGajiLain::whereIn('category_bagian', [9])->sum('total_biaya_laporan_periode');

    }

    public static function InstanceOfLaborMtcPyt() {

        return LaporanGajiLain::whereIn('category_bagian', [11])->sum('total_biaya_laporan_periode');


    }


    public static function InstanceOfLaborUMUM() {

        // return GajiLain::whereIn('umum', ['true'])->get();
        return GajiLain::whereIn('umum', ['true'])->max('total_biaya_labor');

    }

    public static function InstanceOfLaborUmmPyts() {

        return LaporanGajiLain::whereIn('category_bagian', [12])->sum('total_biaya_laporan_periode');

    }

    public static function InstanceOfLaborPREPRESS() {

        return GajiLain::whereIn('prepress', ['true'])->max('total_biaya_labor');

    }

    public static function InstanceOfLaborQc() {

        return GajiLain::whereIn('qc', ['true'])->max('total_biaya_labor');

    }

    public static function InstanceOfLaborQcPyts() {

        return LaporanGajiLain::whereIn('category_bagian', [13])->sum('total_biaya_laporan_periode');

    }

    public static function InstanceOfBagPenjualanToTls() {

        return BagianPenjualan::whereIn('company_parent_id', [3])->sum('biaya_perbulan');

    }

    public static function InstanceOfLBagPenjualanToTls() {

        // =(SUM(J5:J25))-(SUM(J6:J13)*0,67)
        return RumusLapBagPenjualan::TotalSeluruhLPenjualanBagianPenjualan();

    }

    public static function InstanceOfBagianAdministrasiUmumToTls() {

        return BiayaAdministrasiUmum::whereIn('company_parent_id', [3])->sum('biaya_perbulan');

    }

    public static function InstanceOfBagianAdministrasiUmumToTlsPyts() {

        return LaporanBiayaAdministrasiUmum::sum('total_biaya_lp_adm');

    }

    public static function InstanceOfLaborToTls() {

        return Labor::with('Mesin')->whereIn('company_parent_id', [3])->get();

    }

    public static function InstanceOfBiayaProdLainToTls() {

        return RptMtc::whereIn('company_parent_id', [3])->get();

    }

    public static function InstanceOfCalcGajiLainSSR($gaji_lainlabor_MTC, $gaji_lainlabor_UMUM, $gaji_lainlabor_QC, $gaji_lainlabor_PREPRESS, $LISTRIK) {

        return ( ( $gaji_lainlabor_MTC + $gaji_lainlabor_UMUM + $gaji_lainlabor_QC + $gaji_lainlabor_PREPRESS) * $LISTRIK );

    }

    public static function InstanceOfCalcBagianPenjualanSSR($totalbiayapenjualan, $prosentase_listrik) {

        return ( $totalbiayapenjualan * $prosentase_listrik );

    }

    public static function InstanceOfCalcBiayaAdministrasiUmumSSR($totalbiayaadministrasiumum, $prosentase_listrik) {

        return ( $totalbiayaadministrasiumum * $prosentase_listrik );

    }

    public static function InstanceOfCalcTotalPenyusutanPerbulan($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau) {

        return ( $listrik + $penyusutan + $labor + $mtc + $gjlainnya + $pnjualan + $bau );

    }

    public static function InstanceOfCalcTotalTanpaPenyusutanPerbulan($listrik, $penyusutan, $labor, $mtc, $bproduksilain, $gjlainnya, $pnjualan, $bau) {

        return ( $listrik + $penyusutan + $labor + $mtc + $gjlainnya + $pnjualan + $bau + $bproduksilain);

    }

    public static function InstanceTotalTanpaPenyusutan($totalsemuabiayapenyusutan, $penyusutan) {

            $total = ( $totalsemuabiayapenyusutan - $penyusutan );
        
        return isset($total) ? $total : 0;

    }

    public static function ListrikPersenTanpaPenyusutan($listrik, $totalsemuabiayatanpapenyusutan){

            if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($listrik / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function PenyusutanPersenTanpaPenyusutan($penyusutan, $totalsemuabiayatanpapenyusutan){

        if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($penyusutan / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function LaborPersenTanpaPenyusutan($labor, $totalsemuabiayatanpapenyusutan){

        if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($labor / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function MtcsPersenTanpaPenyusutan($maintenance, $totalsemuabiayatanpapenyusutan){

        if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($maintenance / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function BiayaProduksiLainPersenTanpaPenyusutan($biayaprodlain, $totalsemuabiayatanpapenyusutan){

        if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($biayaprodlain / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function GajiLainPersenTanpaPenyusutan($gajilainnya, $totalsemuabiayatanpapenyusutan){

        if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($gajilainnya / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function BagianPenjualanPersenTanpaPenyusutan($b_penjualan, $totalsemuabiayatanpapenyusutan){

        if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($b_penjualan / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function BiayaAdministrasiMesinPersenTanpaPenyusutan($b_penjualan, $totalsemuabiayatanpapenyusutan){

        if($totalsemuabiayatanpapenyusutan != 0):

                $ttotls = ( ($b_penjualan / $totalsemuabiayatanpapenyusutan) );

            else:
                
                $ttotls = 0;

            endif;
            

        return isset($ttotls) ? $ttotls :0;

    }

    public static function TotalPersenTanpaPenyusutan($persenListrikTPnytsn, $persenPenyusutanTPnytsn, $persenLaborTPnytsn, $persenMTCTPnytsn, $persenProduksiLainTPnytsn, $GajiLainPersenTanpaPenyusutan, $BagianPenjualanPersenTanpaPenyusutan, $BiayaAdministrasiMesinPersenTanpaPenyusutan){

            $ttotls = (  ( $persenListrikTPnytsn + $persenPenyusutanTPnytsn + $persenLaborTPnytsn + $persenMTCTPnytsn + $persenProduksiLainTPnytsn + $GajiLainPersenTanpaPenyusutan + $BagianPenjualanPersenTanpaPenyusutan + $BiayaAdministrasiMesinPersenTanpaPenyusutan) );

        return isset($ttotls) ? $ttotls :0;

    }

    public static function InstanceTotalTanpaPenyusutanTanpaMTC($totalsemuabiayapenyusutan, $maintenance) {

            $total = ( $totalsemuabiayapenyusutan - $maintenance );
        
        return isset($total) ? $total : 0;

    }

    public static function InstanceOfCalcTotalTanpaPenyusutanPerJam($shift, $InsteadOfTotalSemuaBiayaTanpaPenyusutan) {

        if($shift !=0):

                if($shift == 1):
                    
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 7 );

                endif;

                if($shift == 2):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 14 );
    
                endif;

                if($shift == 3):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 21 );

                endif;

            else:

                $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function InstanceOfKalkulasiTanpaPenyusutanPerjam($shift, $InsteadOfTotalSemuaBiayaTanpaPenyusutan) {

        if($shift !=0):

                if($shift == 1):
                    
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 7 );

                endif;

                if($shift == 2):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 14 );
    
                endif;

                if($shift == 3):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 21 );

                endif;

            else:

                $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function InstanceOfKalkulasiTanpaPenyusutanMTCPerjam($shift, $InsteadOfTotalSemuaBiayaTanpaPenyusutan) {

        if($shift !=0):

                if($shift == 1):
                    
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 7 );

                endif;

                if($shift == 2):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 14 );
    
                endif;

                if($shift == 3):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 21 );

                endif;

            else:

                $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function InstanceOfCalcTotalTanpaPenyusutanPerJamPlusMTC($shift, $InsteadOfTotalSemuaBiayaTanpaPenyusutan) {

        if($shift !=0):

                if($shift == 1):
                    
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 7 );

                endif;

                if($shift == 2):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 14 );
    
                endif;

                if($shift == 3):
                
                    $result_persen = ( ( $InsteadOfTotalSemuaBiayaTanpaPenyusutan / 24 ) / 21 );

                endif;

            else:

                $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function InstanceOfCalcTotalTanpaPenyusutanplusMTC($penyusutan, $mtc, $totalsemuabiayapenyusutan) {
                    
            $result_persen = ( $totalsemuabiayapenyusutan - $mtc - $penyusutan );

        return isset($result_persen) ? $result_persen : 0 ;

    }

    public static function tlspersenListrik($totalbiayalistrikperbulan, $totalcalcmesinperbulan) {

        if($totalcalcmesinperbulan !=0):

                $result_persen =  ( $totalbiayalistrikperbulan / $totalcalcmesinperbulan );

            else:

                    $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function tlsperjamcalclistrik($shift, $totalcalcmesinperbulan) {

            if($shift !=0):

                if($shift == 0):
                
                    $result_persen = 0;

                endif;

                if($shift == 1):
                
                    $result_persen = ( ( $totalcalcmesinperbulan / 24) / 7 );

                endif;

                    if($shift == 2):
                    
                        $result_persen = ( ( $totalcalcmesinperbulan / 24) / 14 );

                    endif;

                        if($shift == 3):
                        
                            $result_persen = ( ( $totalcalcmesinperbulan / 24) / 21 );

                        endif;

                else:

                    $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function tlspersenPenyusutan($penyusutan, $totalcalcmesinperbulan) {

        if($totalcalcmesinperbulan !=0):

             $result_persen =  ( ( $penyusutan * $totalcalcmesinperbulan ) );
            
                else:

                    $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function tlspersenLabor($labor, $totalcalcmesinperbulan) {

        if($totalcalcmesinperbulan !=0):

             $result_persen =  ( ( $labor * $totalcalcmesinperbulan ) );
            
                else:

                    $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function tlspersenMTC($maintenance, $totalcalcmesinperbulan) {

        if($totalcalcmesinperbulan !=0):

             $result_persen =  ( ( $maintenance * $totalcalcmesinperbulan ) );
            
                else:

                    $result_persen =  0;

            endif;

        return $result_persen;

    }


    public static function tlspersenGajiLainnya($gajilainnya, $totalcalcmesinperbulan) {

            $result_persen =  ( ( $gajilainnya * $totalcalcmesinperbulan ) );            

        return isset($result_persen) ? $result_persen : 0;

    }

    public static function tlspersenBagianPenjualan($bagianpenjualan, $totalcalcmesinperbulan) {

        if($totalcalcmesinperbulan !=0):

             $result_persen =  ( ( $bagianpenjualan * $totalcalcmesinperbulan ) );
            
                else:

                    $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function tlspersenBiayaAdministrasiUmum($biayaadministrasiumum, $totalcalcmesinperbulan) {

        if($totalcalcmesinperbulan !=0):

             $result_persen =  ( ( $biayaadministrasiumum * $totalcalcmesinperbulan ) );
            
                else:

                    $result_persen =  0;

            endif;

        return $result_persen;

    }

    public static function InsteadOfListrikNsheet() {

        return Listrik::whereIn('company_parent_id', [3])->get();

    }

    public static function InsteadOfListrikAFsheet() {

        return ListrikOutput::whereIn('company_parent_id', [3])->get();

    }

    public static function CalcAllPercentMasterPenyusutanPerbulan($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau) {

        return ( $listrik + $penyusutan + $labor + $mtc + $gjlainnya + $pnjualan + $bau );

    }

    public static function generateIDAccountPystan(){
        
        $id = TotalKalkulasiTanpaPenyusutan::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);

        if ($id==null) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }

    public static function generateIDAccountCALCEDP(){
        
        $id = TotalCalc::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);

        if ($id==null) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("CALC-EDP".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }

}
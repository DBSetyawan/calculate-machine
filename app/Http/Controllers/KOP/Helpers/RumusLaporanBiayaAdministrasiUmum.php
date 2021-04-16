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
                    // $grand_total = ( ($t1 + $t2 + $t3) / (static::TAHUN_TIGA_TAHUN * static::TAHUN_AVAILABLE) );
                    return self::callbackperhitunganperperiode($t1, $t2, $t3);

                else:

                    if(in_array($nama_biaya, ["BBM & PELUMAS","SEWA TANAH","PLN"])):
                    
                        return (float) 0.0;

                        else:       

                            // =+SUM(I17:K17)/36
                            // $grand_total = ( ($t1 + $t2 + $t3) / static::TAHUN_TIGA_TAHUN );
                            return self::callbackperhitunganperperiode($t1, $t2, $t3);

                    endif;
                    
            endif;

        // return $grand_total;

    }

    protected static function callbackperhitunganperperiode($tahun1, $tahun2, $tahun3){

            if(is_null($tahun1) ){
                
                $grand_total_laporan_biaya_bulanan_periode = ( ( $tahun2 + $tahun3 ) / (24 * static::TAHUN_AVAILABLE) ); // 3/2
            }
                else if(is_null($tahun2) ){
                
                    $grand_total_laporan_biaya_bulanan_periode = ( ( $tahun1 + $tahun3 ) / (24 * static::TAHUN_AVAILABLE) ); // 1/3
            }
                else if(is_null($tahun3) ){
                
                    $grand_total_laporan_biaya_bulanan_periode = ( ( $tahun2 + $tahun1 ) / (24 * static::TAHUN_AVAILABLE) ); // 2/1

            }
                else if(is_null($tahun3) && is_null($tahun2) ){ // 3 /2 on
                
                    $grand_total_laporan_biaya_bulanan_periode = ( ( $tahun1 ) / (12 * static::TAHUN_AVAILABLE));
            }
                else if(is_null($tahun3) && is_null($tahun1)){ // 3 /1 on
                
                    $grand_total_laporan_biaya_bulanan_periode = ( ( $tahun2 ) / (12 * static::TAHUN_AVAILABLE));
            }
                else if(is_null($tahun1) && is_null($tahun2)){ // 1 /2
                
                    $grand_total_laporan_biaya_bulanan_periode = ( ( $tahun3 ) / (12 * static::TAHUN_AVAILABLE));

            }
                else if(is_null($tahun1) && is_null($tahun2) && is_null($tahun3)){
                
                    $grand_total_laporan_biaya_bulanan_periode = 0;
            } 
                else {

                $grand_total_laporan_biaya_bulanan_periode = ( ( $tahun2 + $tahun1 + $tahun3) / static::TAHUN_TIGA_TAHUN); // on
            
            }

        return $grand_total_laporan_biaya_bulanan_periode;

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
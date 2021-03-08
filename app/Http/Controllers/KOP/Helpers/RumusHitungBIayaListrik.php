<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\Listrik;
use Carbon\Carbon;
use Illuminate\Support\Str;
use PhpParser\Node\Expr\Cast\Double;

class RumusHitungBIayaListrik {

    /**Asumsi:					
        WBP	=	17.00 - 22.00			
        1 HARI	=	21	JAM		
        WBP	=	4	JAM		
        LWBP	=	17	JAM		
        1 MINGGU	=	6	HARI		
        1 WBP	=	1.5*LWBP			
        1 KVARH	=	1.08*LWBP			
        JAM KERJA EFFEKTIF 1 TAHUN			=	41	MINGGU
        1 MINGGU	=				JAM
        1 TAHUN	=				JAM
        BIAYA PPJ		3%			
        MATERAI		  6.000 			
        1 Shift	=	7 Jam LWBP			
        2 Shift	=	10 Jam LWBP, 4 Jam WBP			
        3 Shift	=	17 Jam LWBP, 4 Jam WBP			
     */
    const LWBP = 17;
    const WBP = 4;
    const IntvalMinggu = 6;

    /**
     * @fix function untuk perhitungan LWBP perminggu.
     */
    public static function HitungLWBP($shift, $ampere, $voltase, $mesin, $lwbp, $angkaperminggu) {
        // =IF(E7=3;((F7*G7)/1000)*($S$7*$S$8);IF(E7=2;((F7*G7)/1000)*(10*$S$8);IF(E7=1;((F7*G7)/1000)*(7*$S$8);0)))
            if($shift == 3){
            
                $result_calcs = (($ampere * $voltase) / 1000 * ($lwbp*$angkaperminggu));
                // $result_calcs = (($ampere * $voltase) / 1000 * (static::LWBP*6));

            }

            if($shift == 2){
            
                $result_calcs = (($ampere * $voltase) / 1000) * ($lwbp*$angkaperminggu);
                // $result_calcs = (($ampere * $voltase) / 1000) * (10*6);

            }

            if($shift == 1){
            
                // $result_calcs = (($ampere * $voltase) / 1000) * (7*6);
                $result_calcs = (($ampere * $voltase) / 1000) * ($lwbp*$angkaperminggu);

            }

        return isset($result_calcs) ? $result_calcs : 0;

    }

    /**
     * @fix function untuk perhitungan WBP perminggu.
     */
    public static function HitungWBP($shift, $ampere, $voltase, $mesin, $sttwbp, $angkaperminggu) {
        //=IF(E9>1;((F9*G9)/1000)*($S$6*$S$8);0)

        /**
         * POL1 @ID == 25
         * POL3 @ID == 27
         * BUSCH @ID == 8
         * FOCUS SIGHT @ID == 43
         * JINNYEU @ID == 22
         * VEG1 @ID == 37
         * VEG2 @ID == 38
         * RITO @ID == 44
         * #
         * di set menjadi 0, karena ini tidak termasuk biaya beban listrik.
         */
        if(in_array($mesin, ['25','27','8','43','22','37','38','44'])){
            
            $wbp = 0;
        
        } 
            else {
                
                if($shift > 1){

                    $wbp = (($ampere * $voltase) / 1000) * ($sttwbp*$angkaperminggu);
                    // $wbp = (($ampere * $voltase) / 1000) * (static::WBP*static::IntvalMinggu);

                }
    
        }
        return isset($wbp) ? $wbp : 0;

    }

    public static function HitungTotalListrik($shift, $mgmLWBP, $mgmWBP, $fklLWB, $fklWBP, $mesin) {
        //=+(H10*J10)+(I10*K10)
        // dd(['shift'=> $shift, 'lwbp'=>$mgmLWBP, 'wbp'=> $mgmWBP, 'fktor kali lwbp'=>$fklLWB, 'fktor kali lwbp'=> $fklWBP]);die;
      
            if($shift > 1 || $shift >= 1){
                $total = ($mgmLWBP * $fklLWB) + ($mgmWBP * $fklWBP);
            }

        return isset($total) ? $total : 0;

    }

    public static function HitungCostPerbulan($totalListrik) {
        //=+L11*4

        $total = ($totalListrik * 4);

        return $total;

   }

   public static function HitungPersenListrik($CostPerbulan, $totalSeluruhCostPerbulan) {
        //=+M6/$M$24

            if($totalSeluruhCostPerbulan != 0):

                    $result_percent = ($CostPerbulan / $totalSeluruhCostPerbulan);

                else:

                    $result_percent = 0;

            endif;

        return $result_percent;

    }

    public static function HitungCostPerbulandanADM($totalPPJ, $prosentasecostperbulan) {
        //=+($M$25*(N9/1))
        
            if($prosentasecostperbulan != 0):

                    $result_percent = ( $totalPPJ * ( $prosentasecostperbulan/1 ) );

                else:
            
                    $result_percent = 0;

            endif;

        return $result_percent;

    }

    public static function HitungPPJ($totalcosperbulan){

        return ( ($totalcosperbulan) + ($totalcosperbulan*0.03) + 6000 );

    }

    public static function generateIDListrik(){
        
        $id = Listrik::select('id')->max('id');
        $jobs = $id+1;
        $IDnextgenerate = $jobs;
        $YM = Carbon::Now()->format('my');
        $prefix = Str::random(2);


        if ($id==null) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 1){
                $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1 && $id < 9 ){
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 2-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9){
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 10 && $id < 99) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 3-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 99) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 100) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 100 && $id < 999) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 4-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 999) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id === 1000) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id > 1000 && $id < 9999) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 5-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 9999) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }
        elseif ($id == 10000) {
            $resultID = (str_repeat("LTK".$prefix."TR".$YM.'00', 6-strlen($IDnextgenerate))). $IDnextgenerate;
        }

        return $resultID;

    }


}
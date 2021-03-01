<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\JobLevel;

class RumusLabor {

    public static function RumusJobLevel() {

        //     $LVL = JobLevel::findOrFail($joblevel);
            
        //     $totalshift = Listrik::get()->pluck('shift')->whereIn('company_parent_id', [3])->get();

        //     $total_shift_listrik = collect([$totalshift])->sum(function ($shift){
        //             return $shift->sum('shift');
        //         }
        //     );

        // $biaya_gaji_upah = (2 * $LVL->upah_tengah) * ($shift / ($total_shift_listrik) );
        
    }

    public static function SpvLevels($shift, $mesin_yang_ditangai_spv, $code_mesin){

        /**
         * berapa mesin yang ditangai oleh supervisor tertentu, inputkan 
         * @Integer
         */

        if(in_array($code_mesin, ['25','27'])){
         
            $SpvLevelTotal = 0;
       
        }
            else {

                    if(in_array($code_mesin, ['43','41'])){
            
                        $shift = 3;
                
                    }

                    if(in_array($code_mesin, ['44'])){
            
                        $shift = 2;
                
                    }

                        $LVL = JobLevel::findOrFail(1);
                        

                    if($mesin_yang_ditangai_spv != 0):

                        $SpvLevelTotal = ( ($shift * $LVL->upah_tengah) / $mesin_yang_ditangai_spv ); 

                    else:

                        $SpvLevelTotal = 0;

                endif;
    
            }

        return isset($SpvLevelTotal) ? $SpvLevelTotal : 0;
   
    }

    public static function OptLevels($shift, $operator){
   
        $LVL = JobLevel::findOrFail(2);

        return (float) ($operator * $LVL->upah_tengah * $shift); 

    }

    public static function HelpLevels($shift, $helper){
        
        /**
         * tidak sesuai dengan actual, seharusnya level gaji mengikuti level helper, tp diexcell diambil yg suppoting.
         */
        $LVL = JobLevel::findOrFail(3);

        return ($helper * $LVL->upah_tengah * $shift); 

    }
    
    public static function SumLevels($spv, $operator, $helper){
        
        return ($spv + $operator + $helper); 

    }

}
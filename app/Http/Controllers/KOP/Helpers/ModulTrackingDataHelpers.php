<?php

namespace App\Http\Controllers\KOP\Helpers;

use Carbon\Carbon;
use Illuminate\Support\Str;
use App\BiayaAdministrasiUmum;
use App\Http\Controllers\KOP\Service\TrackData;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as BaseVoyagerBaseController;

class ModulTrackingDataHelpers Extends BaseVoyagerBaseController Implements TrackData{

    
    public static function ModuleTrackingTransactionData($old, $new){
        $perubahan = array();
		foreach ($new as $keys => $vals) {
			if($old[$keys]!=$new[$keys]) {
				array_push($perubahan, array(
					'tabel_kolom' 	=> 			'rpt_mtc.'.$keys,
					'history' 	=> 			$new[$keys],
					'dari' 		=> 			$old[$keys]
				));
			}
		}

		return $perubahan;
    }
}
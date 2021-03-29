<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\Http\Controllers\KOP\Service\TrackData;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as BaseVoyagerBaseController;

class ModulTrackingDataHelpers Extends BaseVoyagerBaseController Implements TrackData{
    
    public static function ModuleTrackingTransactionData($table, $old, $new){


		// dd($table);die;
		
		if($table == "listrik_output"){

			$attrField = array(
				'company_parent_id' => 'company_parent_id',
				'output_perjam' => 'output',
				'persen' => 'perjam',
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=>$old[$keys]
					));
				}
			}

			return $perubahan;

		}

		if($table == "laporan_biaya_administrasi_umum"){

			$attrField = array(
				'tahun1' => '2018',
				'company_parent_id' => 'company',
				'tahun2' => '2019',
				'tahun3' => '2020',
				'total_biaya_lp_adm' => 'total'
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=>$old[$keys]
					));
				}
			}

			return $perubahan;

		}

		if($table == "laporan_bagian_penjualan"){

			$attrField = array(
				'company_parent_id' => 'company',
				'tahun1' => '2018',
				'tahun2' => '2019',
				'tahun3' => '2020',
				'biaya_perbulan_bag_penjualan' => 'bperbulan',
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=>$old[$keys]
					));
				}
			}

			return $perubahan;

		}

		if($table == "laporan_gaji_lain"){

			$attrField = array(
				'tahun1' => '2018',
                'tahun2' => '2019',
                'tahun3' => '2020',
                'total_biaya_laporan_periode' => 'total'
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=>$old[$keys]
					));
				}
			}

			return $perubahan;

		}

		if($table == "labor"){

			$attrField = array(
				'company_parent_id' => 'company',
				'shift' => 'shift',
				'supervisor' => 'spv',
				'operator' => 'opr',
				'helper' => 'helper',
				'supporting' => 'supp',
				'supervisor_level3' => 'spv_lvl3',
				'operator_level2' => 'op_lvl2',
				'helper_level0' => 'hlpr_lvl0',
				'support_level0' => 'splvl0',
				'total_biaya' => 'ttl_biaya'
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=>$old[$keys]
					));
				}
			}

			return $perubahan;

		}
		
		if($table == "account_mtc"){

			$attrField = array(
				'tahun1' => '2018',
				'tahun2' => '2019',
				'tahun3' => '2020',
				'biaya_perbulan' => 'b_perbulan'
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=>$old[$keys]
					));
				}
			}

			return $perubahan;

		}

		if($table == "penyusutan"){

			$attrField = array(
				'company_parent_id' => 'cpi',
				'code_mesin' => 'cm',
				'penyusutan_perbulan' => 'pp',
				'purchaseorder_value' => 'pv',
				'umur' => 'umur',
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=>$old[$keys]
					));
				}
			}

			return $perubahan;

		}

		if($table == "rpt_mtc"){

			$attrField = array(
				'perbaikan_tahun1' => '2018',
				'code_mesin' => 'mesin',
				'category_bagian' => 'kategori_bagian',
				'company_parent_id' => 'company',
				'perbaikan_tahun2' => '2019',
				'perbaikan_tahun3' => '2020',
	
				'rata_rata_perbaikan_perbulan' => 'rata rata perbaikan perbulan',
	
				'sparepart_tahun1' => 'sparepart 2018',
				'sparepart_tahun2' => 'sparepart 2019',
				'sparepart_tahun3' => 'sparepart 2020',
	
				'rata_rata_sparepart_perbulan' => 'rata rata sparepart perbulan',
	
				'biaya_produksi_lain' => 'biaya produksi lain',
				'total_biaya_perbulan' => 'total biaya perbulan',
				);
	
				$perubahan = [];
	
				foreach ($attrField as $keys => $vals) {
					if($old[$keys]!=$new[$keys]) {
						array_push($perubahan, array(
							'tabel_kolom' 	=> $table.'.'.$keys,
							'history' 	=> $new[$keys],
								'dari' 		=>$old[$keys]
							));
					}
				}

			return $perubahan;
		}

    }
}
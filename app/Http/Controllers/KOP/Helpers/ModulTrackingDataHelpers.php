<?php

namespace App\Http\Controllers\KOP\Helpers;

use App\Http\Controllers\KOP\Service\TrackData;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as BaseVoyagerBaseController;

class ModulTrackingDataHelpers Extends BaseVoyagerBaseController Implements TrackData{
	
	public static function ModuleTrackingTransactionDataREST($table, $old, $new){

		if($table == "listrik"){

			$attrField = array(
				'persen_cost_perbulan' => 'persen_cost_perbulans',
				'ncost_bulan_plus_adm' => 'ncost_bulan_plus_adms'
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

	public static function ModuleTrackingTransactionDataRecalculate($table, $old, $new){

		if($table == "all_recalculate"){

			$attrField = [
				'id' => 'idx',
				'id_labor' => 'idlabor',
				'id_penyusutan' => 'id penyusutans',
				'id_mtc' => 'id mtcs',
				'id_bprodlain_insteadof_mtc' => 'biaya produksi lains',
				'id_gajilain' => 'lap. gaji lainnyuas',
				'id_bgoenjualan' => 'bag. penjualans',
				'id_bau' => 'id biaya administrasi umums',
				'total_semua_biaya' => 'total semua biayas',
				'total_semua_biaya_perjam' => 'total semua biaya perjams',

				'total_tanpa_penyusutan_n_mtc' => 'total semua biaya penyusutan + MTCs',
				'total_tanpa_penyusutan_n_mtc_perjam' => 'total semua biaya penyusutan + MTC perjams',

				'total_tanpa_penyusutan' => 'total tanpa penyusutans',
				'total_tanpa_penyusutan_perjam' => 'total tanpa penyusutan perjamas',

				'total_tanpa_mtc' => 'total tanpa maintenances',
				'total_tanpa_mtc_perjam' => 'total tanpa maintenance perjams'

			];

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

    public static function ModuleTrackingTransactionData($table, $old, $new){


		// dd($table);die;

		if($table == "job_level"){

			$attrField = array(
				'jabatan' => 'jabatan karyawan',
				'LV' => 'level',
				'upah_terkecil' => 'upah terkecil karyawan',
				'upah_tengah' => 'upah tengah karyawan',
				'updah_atas' => 'upah atas karyawan'
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=> $old[$keys]
					));
				}
			}

			return $perubahan;

		}

		
		if($table == "kategori_bagian"){

			$attrField = array(
				'nama_bagian' =>  'nama group mesin'
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=> $old[$keys]
					));
				}
			}

			return $perubahan;

		}

		if($table == "lb8_kategori_mesin"){

			$attrField = array(
				'nama_kategori_mesin' =>  'nama group mesin',
				'company_parent_id' =>  'company parent',
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=> $old[$keys]
					));
				}
			}

			return $perubahan;

		}

		// 'ampere' => $request->ampere,
		// 'faktor_kali_lwbp' =>  $request->faktor_kali_lwbp,
		// 'faktor_kali_wbp' =>  $request->faktor_kali_wbp,
		// 'voltase' =>  $request->voltase,
		// 'deskripsi' =>  $request->deskripsi,
		// 'code_mesin' => $request->code_mesin,
		// 'location_mch_id' => $request->location_mch_id,
		// 'group_mesin' => $request->group_mesin_id,
		// 'company_id' => $request->company_id,
		// 'category_bagian' => $request->category_bagian_id,
		// 'asumsi_id' => $request->asumsi_id,
		// 'capacity_mch' => $request->capacity_mch
		if($table == (String) "mesin"){

			$attrField = array(
				'ampere' => 'ampere',
				'faktor_kali_lwbp' => 'Faktor_kali_lwbp_',
				'faktor_kali_wbp' => 'Faktor_kali_wbp_',
				'capacity_mch' => 'Capacity_mch',
				'voltase' => 'voltase',
				'deskripsi' => 'ulasan',
				'code_mesin' => 'kode mesin',
				'location_mch_id' => 'lokasi mesin',
				'company_id' => 'Company_id_',
				'group_mesin_id' => 'group mesin',
				'category_bagian_id' => 'kategori bagian',
				'asumsi_id' => 'asumsi idnya',
				'capacity_mch' => 'kapasitas mesin',

			);

		$perubahans = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahans, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=> $old[$keys]
					));
				}
			}

			return $perubahans;

		}
		
		if($table == "listrik"){

			$attrField = array(
				'listrikperjam' => 'listri perjam',
				'ampere' => 'amperes',
				'voltase' =>  'voltases',
				// 'company_parent_id' => $r->company_parent_id,
				'code_mesin' => 'code_mesins',
				// 'code_listrik' => RumusListrik::generateIDListrik(), //not 
				'LWBP_perminggu' => 'lwbp_perminggu',
				'WBP_perminggu' => 'wbp_perminggu',
				'nilai_cost_bulan' => 'nilai cost perbulan',
				// 'category_bagian' => $r->category_bagian,
				'LWBP_faktorkali' => 'lwbp_faktorkali',
				'WBP_faktorkali' => 'wbp_faktorkali',
				'total_biaya_listrik' => 'total biaya listrik',
				'assumptionshift_lwbp1' => 'asumsi shift lwbp1',
				'assumptionshift_lwbp2' => 'asumsi shift lwbp2',
				'assumptionshift_lwbp3' => 'asumsi shift lwbp3',
				'assumption_itval_perminggu' => 'asumsi perminggu',
				'assumption_wbp' => 'asumsi wbp',
				'persen_cost_perbulan' => 'persen cost perbulan',
				'ncost_bulan_plus_adm' => 'nilai cost perbulan',
			);

		$perubahan = [];

			foreach ($attrField as $keys => $vals) {
				if($old[$keys]!=$new[$keys]) {
					array_push($perubahan, array(
						'tabel_kolom' 	=> $table.'.'.$keys,
						'history' 	=> $new[$keys],
						'dari' 		=> $old[$keys]
					));
				}
			}

			return $perubahan;

		}

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
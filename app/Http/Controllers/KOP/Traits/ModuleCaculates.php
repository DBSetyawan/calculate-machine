<?php

namespace App\Http\Controllers\KOP\Traits;

use App\Labor;
use App\Mesin;
use Exception;
use App\RptMtc;
use DataTables;
use RumusPenyusutan;
use App\Company;
use App\Listrik;
use App\TotalCalc;
use App\Penyusutan;
use RptCalcMachine;
use App\AllRecalculate;
use App\KategoriBagian;
use App\LaporanGajiLain;
use Mavinoo\Batch\Batch;
use Illuminate\Http\Request;
use App\HistoryLogRecalculate;
use App\LaporanBagianPenjualan;
use Illuminate\Support\Facades\DB;
use App\Exports\CalcsMachineExport;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\CalcSmuaBiayaExports;
use App\LaporanBiayaAdministrasiUmum;
use App\Exports\CalcsMachineMtCExport;
use App\TotalKalkulasiTanpaPenyusutan;
use App\Http\Controllers\KOP\Helpers\RumusRptMaintenance;
use App\Http\Controllers\KOP\Helpers\RumusLapBagPenjualan;
use App\Exports\CalcMachineTanpaMTCnTanpaPenyusutanExports;
use App\Http\Controllers\KOP\Helpers\RumusListrikOutputPerjam;
use App\Http\Controllers\KOP\VoyagerLaporanGajiLainController;

trait ModuleCaculates {

    public function view_totalkalkulasi() {

        $reccll = isset(AllRecalculate::orderBy('created_at','desc')->first()->total_tanpa_mtc_perjam) ? AllRecalculate::orderBy('created_at','desc')->first()->total_tanpa_mtc_perjam : "403";

        if($reccll == "403"){
            
           return $this->UndefinedClass();

        }

        $group_mesin = isset(AllRecalculate::with('Listrik')->orderBy('created_at','desc')->first()->group_mesin) ? AllRecalculate::with('Listrik')->orderBy('created_at','desc')->first()->group_mesin : "403";

        if($group_mesin == "403"){
            
            return $this->can_t_find_group_mesin();

        }

        if($reccll == null){

           return $this->UndefinedClass();

        }

        if($group_mesin == null){

            return $this->can_t_find_group_mesin();

        } 

        $label = "[PROGRESS DEPLOY]";
        $sss = json_encode(DB::table('total_kalkulasi_tanpa_penyusutan')
        ->leftJoin('mesin', 'total_kalkulasi_tanpa_penyusutan.code_mesin', '=', 'mesin.id')
        ->leftJoin('kategori_bagian', 'total_kalkulasi_tanpa_penyusutan.category_bagian', '=', 'kategori_bagian.id')
        ->leftJoin('company', 'total_kalkulasi_tanpa_penyusutan.company_parent_id', '=', 'company.id')->get());
        return view('vendor.voyager.total-kalkulasi-rpt.v_kalkulasi_rpt', compact('label','sss'));
    
    }
    
    public function rcllunchecktnpmtcs(){

        $SendTemporaryCalculateInstance = new AllRecalculate;
        $allrecalculate = AllRecalculate::with(['Listrik.Listrikperjam',
        'KategoriBagian','Mesin','mesin.MesinListrikPerjamTo','GroupMesin',
        'Company'])->get();
        
                foreach($allrecalculate as $index => $tmp){

                    $data[] = [
                        'code_mesin' => $tmp->code_mesin,
                        'id_mtc' => 0
                    ];

                    $code_mesin = 'code_mesin';
                                    
                    $bulk_batch = \Batch::update($SendTemporaryCalculateInstance, $data, $code_mesin);

                }

            // $this->recalculateTanpaPenyusutan();

        return response()->json(['res' => 200]);
    }

    public function reclltnpapenyusutan(){

        $SendTemporaryCalculateInstance = new AllRecalculate;
        $allrecalculate = AllRecalculate::with(['Listrik.Listrikperjam',
        'KategoriBagian','Mesin','mesin.MesinListrikPerjamTo','GroupMesin',
        'Company'])->get();
        
                foreach($allrecalculate as $index => $tmp){

                    $data[] = [
                        'code_mesin' => $tmp->code_mesin,
                        'id_penyusutan' => 0
                    ];

                    $code_mesin = 'code_mesin';
                                    
                    $bulk_batch = \Batch::update($SendTemporaryCalculateInstance, $data, $code_mesin);


                }

            // $this->MtcRecalculateOnly();

        return response()->json(['res' => 200]);
    }

    public function PenyusutanRecalculateOnly(){

        $pnystnttl = Penyusutan::all();

            $AllRecalculateInstance = new AllRecalculate;

            foreach($pnystnttl as $indexs => $data_peny){

                $UpdaterumusTotalPenyusutan = RumusPenyusutan::HitungTotalPenyusutanPerbulan((float) $data_peny->purchaseorder_value, $data_peny->umur);

                $dpney[] = [
                    'code_mesin' => $data_peny->code_mesin,
                    'id_penyusutan' => $UpdaterumusTotalPenyusutan
                ];

                $code_mesin = 'code_mesin';

                \Batch::update($AllRecalculateInstance, $dpney, $code_mesin);

            }

        // $this->recalculateTanpaPenyusutan();

        return response()->json(['res' => 200]);

    }

    public function MtcRecalculateOnly(){

        try {

            $AllRecalculateInstance = new AllRecalculate;
            // $allrec = AllRecalculate::all();
            $allrec = RptMtc::all();
            
                foreach($allrec as $index => $datarmtc){

                    /**
                     * Hitung Total Perbaikan Biaya perbulan
                     * @param $perbaikanpertahunn.
                     */
                    $RataRataPerbaikanPerbulan = RumusRptMaintenance::HitungRataRataPerbaikanPerbulan($datarmtc->perbaikan_tahun1, $datarmtc->perbaikan_tahun2, $datarmtc->perbaikan_tahun3);
                    
                    /**
                     * Hitung Total Sparepart Biaya perbulan
                     * @param $perbaikanpertahunn.
                    */
                    $RataRataSparePartPerbulan =  RumusRptMaintenance::HitungRataRataSparePartPerbulan($datarmtc->sparepart_tahun1, $datarmtc->sparepart_tahun2, $datarmtc->sparepart_tahun3);
                    
                    /**
                     * total biaya penyusutan perbulan
                     */
                    $TotalBiayaPenyusutanMaintenance = RumusRptMaintenance::HitungTotalPenyusutanPerbulan($RataRataPerbaikanPerbulan, $RataRataSparePartPerbulan);

                                $dmtc[] = [
                                    'code_mesin' => $datarmtc->code_mesin,
                                    'id_mtc' => $TotalBiayaPenyusutanMaintenance
                                ];
            
                            $code_mesin = 'code_mesin';

                        \Batch::update($AllRecalculateInstance, $dmtc, $code_mesin);

                    }

                    // $this->recalculateTanpaMaintenance();

                return response()->json(['res' => 200]);

        } catch (Exception $e) {
            $code = 500;
            $message = __('voyager::generic.internal_error');

            if ($e->getMessage()) {
                $message = $e->getMessage();
            }

            return response()->json([
                'data' => [
                    'message' => $message,
                ],
            ], $code);
        }

    }

    public function rclluncheckpnyt(){
        
            $this->recalculate();

        return response()->json(['res' => 200]);
    }

    public function recalculate(){

        try 
            {

                $SendTemporaryCalculateInstance = new AllRecalculate;
                $allrecalculate = AllRecalculate::with(['Listrik.Listrikperjam',
                'KategoriBagian','Mesin','mesin.MesinListrikPerjamTo','GroupMesin',
                'Company'])->get();
            
                foreach($allrecalculate as $index => $tmp){

                    // $calc = AllRecalculate::orderby('id','desc')->with('mesin.MesinListrikPerjamTo')->first();
                    // $recRow = AllRecalculate::orderby('created_at','desc')->with(['Listrik.Listrikperjam','KategoriBagian','Mesin','GroupMesin','Company'])->first();
                    
                    $ambil_listrik_dari_mesin = $tmp->mesin->MesinListrikPerjamTo->persen;
                    $mtcsfe = RptMtc::where('code_mesin', $tmp->code_mesin)->first()->total_biaya_perbulan;
                    $penyusutanfe = Penyusutan::where('code_mesin', $tmp->code_mesin)->first()->penyusutan_perbulan;
                    $labors = Labor::where('code_mesin', $tmp->code_mesin)->first()->total_biaya;

                    $penyusutanfefn = Penyusutan::where('code_mesin', $tmp->code_mesin)->first();
                    $laborsfn = Labor::where('code_mesin', $tmp->code_mesin)->first();
                    $mtcsfefn = RptMtc::where('code_mesin', $tmp->code_mesin)->first();

                    $laporangajilain_bagianREPRO = LaporanGajiLain::whereIn('category_bagian', [9])->get();
                    $totalREPRO = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
                        return $REPRO->sum('total_biaya_laporan_periode');
                    });
                    
                    $laporanMTC = LaporanGajiLain::whereIn('category_bagian', [11])->get();
                    $totalMTC = collect([$laporanMTC])->sum(function ($MTC){
                        return $MTC->sum('total_biaya_laporan_periode');
                    });

                    $UMUM = LaporanGajiLain::whereIn('category_bagian', [12])->get();
                    $totalUMUM = collect([$UMUM])->sum(function ($um){
                        return $um->sum('total_biaya_laporan_periode');
                    });

                    $qcl = laporangajilain::whereIn('category_bagian', [13])->get();
                    $totalQC = collect([$qcl])->sum(function ($qc){
                        return $qc->sum('total_biaya_laporan_periode');
                    });

                    $LaporanBiayaAdministrasiUmum = LaporanBiayaAdministrasiUmum::whereIn('company_parent_id', [3])->get();
                    $totalbau = collect([$LaporanBiayaAdministrasiUmum])->sum(function ($bau){
                        return $bau->sum('total_biaya_lp_adm');
                    });

                    $penyusutan = Penyusutan::whereIn('company_parent_id', [3])->get();
                    $totalpeny = collect([$penyusutan])->sum(function ($bau){
                        return $bau->sum('penyusutan_perbulan');
                    });

                    $labor = Labor::whereIn('company_parent_id', [3])->get();
                    $totallbr = collect([$labor])->sum(function ($bau){
                        return $bau->sum('total_biaya');
                    });

                    $mtc = RptMtc::whereIn('company_parent_id', [3])->get();
                    $totalmtmct = collect([$mtc])->sum(function ($bau){
                        return $bau->sum('total_biaya_perbulan');
                    });
                    
                    /**
                     * @menghitung gaji_lainnya. fix.
                     */
                    $gaji_lainnya = $this->CalcBiayaGajiLainInstaceOfKalkulasi($totalREPRO, $totalMTC, $totalUMUM, $totalQC, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung bagian_penjualan. fix
                     */
                    $b_penjualan = $this->CalcBiayaBagPenjualanInstaceOfKalkulasi(RumusLapBagPenjualan::TotalSeluruhLPenjualanBagianPenjualan(), $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total BAU. fix.
                     */

                    $bau = $this->CalcBiayaAdministrasiUmumInstaceOfKalkulasi($totalbau, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total. fix.
                     */
                    $total = RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan($tmp->id_listrik, $penyusutanfe, $labors, $mtcsfe, $mtcsfefn->biaya_produksi_lain, $gaji_lainnya, $b_penjualan, $bau);
                    
                    /**
                     * @menghitung total semua biaya perjam. fix.
                     */
                    $semua_total_biaya_perjam = $this->ITnpenyusutanTotalPerjam($tmp->Listrik->shift, $total);

                    /**
                     * @menghitung total tanpa_penyusutan + tanpa mtc. fix.
                     */
                    $tanpa_penyusutan_plus_mtc_total = $this->TotalTanpaPenyusutanPlusMTC($penyusutanfe, $mtcsfe, $total);

                    /**
                     * @menghitung total tnp penyusutan + tnp mtc perjam. 
                     */
                    $tanpa_penyusutan_plus_mtc_perjam = $this->ITnpenyusutanTotalPerjamPlusMTC($tmp->Listrik->shift, $tanpa_penyusutan_plus_mtc_total);
                    
                    /**
                     * @menghitung total tanpa penyusutan + perjamnya. fix.
                     */
                    $tanpa_penyusutan_total = $this->TotTnpaPenyusutanATT($total, $penyusutanfe);
                    $tanpa_penyusutan_total_perjam = $this->TotalTanpaPenyusutanPerjamnya($tmp->Listrik->shift, $tanpa_penyusutan_total);

                    /**
                     * @menghitung total tanpa mtc + perjamnya. fix.
                     */

                    $tanpa_mtc_total = $this->TotalTanpaPenyusutanTanpaMTC($total, $mtcsfe);
                    $tanpa_mtc_total_perjam = $this->TotalPenyusutanTanpaMTCPerjamnya($tmp->Listrik->shift, $tanpa_mtc_total);

                        // return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan();
                        // $recall = AllRecalculate::orderBy('created_at', 'desc')->first();
                            $data_recalculate[] = [
                                // 'id_labor' => $totallbr,
                                'id' => $tmp->id,
                                'id_labor' => $laborsfn->total_biaya,
                                'id_penyusutan' => $penyusutanfefn->penyusutan_perbulan,
                                // 'id_penyusutan' => $totalpeny,
                                'id_mtc' => $mtcsfefn->total_biaya_perbulan,
                                // 'id_mtc' => $totalmtmct,
                                'id_bprodlain_insteadof_mtc' => $mtcsfefn->biaya_produksi_lain,
                                'id_gajilain' => $gaji_lainnya,
                                // 'id_bgoenjualan' => $bagianpenjualanfe->biaya_perbulan_bag_penjualan,
                                'id_bgoenjualan' => $b_penjualan,
                                'id_bau' => $bau,
                                'total_semua_biaya' => $total,
                                'total_semua_biaya_perjam' => $semua_total_biaya_perjam,

                                'total_tanpa_penyusutan_n_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_penyusutan_n_mtc_perjam' => $tanpa_penyusutan_plus_mtc_perjam,

                                'total_tanpa_penyusutan' => $tanpa_penyusutan_total,
                                'total_tanpa_penyusutan_perjam' => $tanpa_penyusutan_total_perjam,

                                'total_tanpa_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_mtc_perjam' => $tanpa_mtc_total_perjam,

                            ];

                            $sid = 'id';
                            
                            $bulk_batch = \Batch::update($SendTemporaryCalculateInstance, $data_recalculate, $sid);

                        }
    
                    return response()->json(['json' => $bulk_batch]);

                } catch (Exception $e) {
                    $code = 500;
                    $message = __('voyager::generic.internal_error');

                    if ($e->getMessage()) {
                        $message = $e->getMessage();
                    }

                    return response()->json([
                        'data' => [
                            'message' => $message,
                        ],
                    ], $code);
                }

            
            // if($recall != []){

            //     // $data_recalculate = [

            //     //     'dibuat_oleh' => Auth::user()->name,
            //     //     'changed_by' => Auth::user()->name,
            //     //     'listrik' => $calc->id_listrik,
            //     //     'penyusutan' => $penyusutanfe,
            //     //     'labor' => $labors,
            //     //     'mtc' => $mtcsfe,
            //     //     'biaya_produksi_lain' => $mtcsfefn->biaya_produksi_lain,
            //     //     'biaya_administrasi_umum' => $bau,
            //     //     'gaji_lainnya' => $gaji_lainnya,
            //     //     'bagian_penjualan' => $b_penjualan,
            //     //     'total_semua_biaya' => $total,
            //     //     'total_semua_biaya_perjam' => $semua_total_biaya_perjam,
            //     //     'total_tanpa_penyusutan_n_mtc' => $tanpa_penyusutan_plus_mtc_total,
            //     //     'total_tanpa_penyusutan_n_mtc_perjam' => $tanpa_penyusutan_plus_mtc_perjam,
            //     //     'total_tanpa_penyusutan' => $tanpa_penyusutan_total,
            //     //     'total_tanpa_penyusutan_perjam' => $tanpa_penyusutan_total_perjam,
            //     //     'total_tanpa_mtc' => $tanpa_penyusutan_plus_mtc_total,
            //     //     'total_tanpa_mtc_perjam' => $tanpa_mtc_total_perjam,
            //     //     'recalculate_status' => "active",
            //     //     'id_logs' => $recall->id,
            //     //     'code_mesin' => $calc->code_mesin,
            //     //     'company' => $recall->company,
            //     //     'group_mesin' => $calc->group_mesin,
            //     //     'category_bagian' => $recall->category_bagian,

            //     // ];

            //     // $cr = AllRecalculate::orderBy(function ($query) use ($tanpa_penyusutan_total, $tanpa_penyusutan_total_perjam, $tanpa_penyusutan_plus_mtc_total, $tanpa_penyusutan_plus_mtc_perjam, $gaji_lainnya, $b_penjualan, $bau, $total, $recall, $penyusutanfefn, $mtcsfefn, $laborsfn, $semua_total_biaya_perjam){
            //         $cr = AllRecalculate::whereIn('id', [$recall->id])->update(
            //             [
            //                 // 'id_labor' => $totallbr,
            //                 'id_labor' => $laborsfn->total_biaya,
            //                 'id_penyusutan' => $penyusutanfefn->penyusutan_perbulan,
            //                 // 'id_penyusutan' => $totalpeny,
            //                 'id_mtc' => $mtcsfefn->total_biaya_perbulan,
            //                 // 'id_mtc' => $totalmtmct,
            //                 'id_bprodlain_insteadof_mtc' => $mtcsfefn->biaya_produksi_lain,
            //                 'id_gajilain' => $gaji_lainnya,
            //                 // 'id_bgoenjualan' => $bagianpenjualanfe->biaya_perbulan_bag_penjualan,
            //                 'id_bgoenjualan' => $b_penjualan,
            //                 'id_bau' => $bau,
            //                 'total_semua_biaya' => $total,
            //                 'total_semua_biaya_perjam' => $semua_total_biaya_perjam,
    
            //                 'total_tanpa_penyusutan_n_mtc' => $tanpa_penyusutan_plus_mtc_total,
            //                 'total_tanpa_penyusutan_n_mtc_perjam' => $tanpa_penyusutan_plus_mtc_perjam,
    
            //                 'total_tanpa_penyusutan' => $tanpa_penyusutan_total,
            //                 'total_tanpa_penyusutan_perjam' => $tanpa_penyusutan_total_perjam,
    
            //                 'total_tanpa_mtc' => $tanpa_penyusutan_plus_mtc_total,
            //                 'total_tanpa_mtc_perjam' => $tanpa_mtc_total_perjam,
            //             ]
            //         );
             

            //     if($cr > 0){

            //         $datalogs = HistoryLogRecalculate::updateOrCreate($data_recalculate);

            //         if(!empty($datalogs)){

            //             $redirect = redirect()->back();
                        
            //             return $redirect->with([
            //                 'message'    => __('berhasil mengakumulasi mesin & terdaftar dilogs.'),
            //                 'alert-type' => 'success',
            //             ]
            //         );

            //     }
                
            // }

        // }

    }

    public function recalculateTanpaMaintenance(){

        try 
            {

                $SendTemporaryCalculateInstance = new AllRecalculate;
                $allrecalculate = AllRecalculate::with(['Listrik.Listrikperjam',
                'KategoriBagian','Mesin','mesin.MesinListrikPerjamTo','GroupMesin',
                'Company'])->get();
            
                foreach($allrecalculate as $index => $tmp){

                    // $calc = AllRecalculate::orderby('id','desc')->with('mesin.MesinListrikPerjamTo')->first();
                    // $recRow = AllRecalculate::orderby('created_at','desc')->with(['Listrik.Listrikperjam','KategoriBagian','Mesin','GroupMesin','Company'])->first();
                    
                    $ambil_listrik_dari_mesin = $tmp->mesin->MesinListrikPerjamTo->persen;
                    $mtcsfe = RptMtc::where('code_mesin', $tmp->code_mesin)->first()->total_biaya_perbulan;
                    $penyusutanfe = Penyusutan::where('code_mesin', $tmp->code_mesin)->first()->penyusutan_perbulan;
                    $labors = Labor::where('code_mesin', $tmp->code_mesin)->first()->total_biaya;

                    $penyusutanfefn = Penyusutan::where('code_mesin', $tmp->code_mesin)->first();
                    $laborsfn = Labor::where('code_mesin', $tmp->code_mesin)->first();
                    $mtcsfefn = RptMtc::where('code_mesin', $tmp->code_mesin)->first();

                    $laporangajilain_bagianREPRO = LaporanGajiLain::whereIn('category_bagian', [9])->get();
                    $totalREPRO = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
                        return $REPRO->sum('total_biaya_laporan_periode');
                    });
                    
                    $laporanMTC = LaporanGajiLain::whereIn('category_bagian', [11])->get();
                    $totalMTC = collect([$laporanMTC])->sum(function ($MTC){
                        return $MTC->sum('total_biaya_laporan_periode');
                    });

                    $UMUM = LaporanGajiLain::whereIn('category_bagian', [12])->get();
                    $totalUMUM = collect([$UMUM])->sum(function ($um){
                        return $um->sum('total_biaya_laporan_periode');
                    });

                    $qcl = laporangajilain::whereIn('category_bagian', [13])->get();
                    $totalQC = collect([$qcl])->sum(function ($qc){
                        return $qc->sum('total_biaya_laporan_periode');
                    });

                    $LaporanBiayaAdministrasiUmum = LaporanBiayaAdministrasiUmum::whereIn('company_parent_id', [3])->get();
                    $totalbau = collect([$LaporanBiayaAdministrasiUmum])->sum(function ($bau){
                        return $bau->sum('total_biaya_lp_adm');
                    });

                    $penyusutan = Penyusutan::whereIn('company_parent_id', [3])->get();
                    $totalpeny = collect([$penyusutan])->sum(function ($bau){
                        return $bau->sum('penyusutan_perbulan');
                    });

                    $labor = Labor::whereIn('company_parent_id', [3])->get();
                    $totallbr = collect([$labor])->sum(function ($bau){
                        return $bau->sum('total_biaya');
                    });

                    $mtc = RptMtc::whereIn('company_parent_id', [3])->get();
                    $totalmtmct = collect([$mtc])->sum(function ($bau){
                        return $bau->sum('total_biaya_perbulan');
                    });
                    
                    /**
                     * @menghitung gaji_lainnya. fix.
                     */
                    $gaji_lainnya = $this->CalcBiayaGajiLainInstaceOfKalkulasi($totalREPRO, $totalMTC, $totalUMUM, $totalQC, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung bagian_penjualan. fix
                     */
                    $b_penjualan = $this->CalcBiayaBagPenjualanInstaceOfKalkulasi(RumusLapBagPenjualan::TotalSeluruhLPenjualanBagianPenjualan(), $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total BAU. fix.
                     */

                    $bau = $this->CalcBiayaAdministrasiUmumInstaceOfKalkulasi($totalbau, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total. fix.
                     */
                    $total = RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan($tmp->id_listrik, $penyusutanfe, $labors, $mtcsfe, $mtcsfefn->biaya_produksi_lain, $gaji_lainnya, $b_penjualan, $bau);
                    
                    /**
                     * @menghitung total semua biaya perjam. fix.
                     */
                    $semua_total_biaya_perjam = $this->ITnpenyusutanTotalPerjam($tmp->Listrik->shift, $total);

                    /**
                     * @menghitung total tanpa_penyusutan + tanpa mtc. fix.
                     */
                    $tanpa_penyusutan_plus_mtc_total = $this->TotalTanpaPenyusutanPlusMTC($penyusutanfe, $mtcsfe, $total);

                    /**
                     * @menghitung total tnp penyusutan + tnp mtc perjam. 
                     */
                    $tanpa_penyusutan_plus_mtc_perjam = $this->ITnpenyusutanTotalPerjamPlusMTC($tmp->Listrik->shift, $tanpa_penyusutan_plus_mtc_total);
                    
                    /**
                     * @menghitung total tanpa penyusutan + perjamnya. fix.
                     */
                    $tanpa_penyusutan_total = $this->TotTnpaPenyusutanATT($total, $penyusutanfe);
                    $tanpa_penyusutan_total_perjam = $this->TotalTanpaPenyusutanPerjamnya($tmp->Listrik->shift, $tanpa_penyusutan_total);

                    /**
                     * @menghitung total tanpa mtc + perjamnya. fix.
                     */

                    $tanpa_mtc_total = $this->TotalTanpaPenyusutanTanpaMTC($total, $mtcsfe);
                    $tanpa_mtc_total_perjam = $this->TotalPenyusutanTanpaMTCPerjamnya($tmp->Listrik->shift, $tanpa_mtc_total);

                        // return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan();
                        // $recall = AllRecalculate::orderBy('created_at', 'desc')->first();
                            $data_recalculate[] = [
                                // 'id_labor' => $totallbr,
                                'id' => $tmp->id,
                                'id_labor' => $laborsfn->total_biaya,
                                'id_penyusutan' => $penyusutanfefn->penyusutan_perbulan,
                                // 'id_penyusutan' => 0,
                                // 'id_mtc' => $mtcsfefn->total_biaya_perbulan,
                                'id_mtc' => 0,
                                'id_bprodlain_insteadof_mtc' => $mtcsfefn->biaya_produksi_lain,
                                'id_gajilain' => $gaji_lainnya,
                                // 'id_bgoenjualan' => $bagianpenjualanfe->biaya_perbulan_bag_penjualan,
                                'id_bgoenjualan' => $b_penjualan,
                                'id_bau' => $bau,
                                'total_semua_biaya' => $total,
                                'total_semua_biaya_perjam' => $semua_total_biaya_perjam,

                                'total_tanpa_penyusutan_n_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_penyusutan_n_mtc_perjam' => $tanpa_penyusutan_plus_mtc_perjam,

                                'total_tanpa_penyusutan' => $tanpa_penyusutan_total,
                                'total_tanpa_penyusutan_perjam' => $tanpa_penyusutan_total_perjam,

                                'total_tanpa_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_mtc_perjam' => $tanpa_mtc_total_perjam,

                            ];

                            $sid = 'id';
                            
                            $bulk_batch = \Batch::update($SendTemporaryCalculateInstance, $data_recalculate, $sid);

                        }
    
                    return response()->json(['json' => $bulk_batch]);

                } catch (Exception $e) {
                    $code = 500;
                    $message = __('voyager::generic.internal_error');

                    if ($e->getMessage()) {
                        $message = $e->getMessage();
                    }

                    return response()->json([
                        'data' => [
                            'message' => $message,
                        ],
                    ], $code);
                }


    }


    public function recalculateTanpaPenyusutan(){

        try 
            {

                $SendTemporaryCalculateInstance = new AllRecalculate;
                $allrecalculate = AllRecalculate::with(['Listrik.Listrikperjam',
                'KategoriBagian','Mesin','mesin.MesinListrikPerjamTo','GroupMesin',
                'Company'])->get();
            
                foreach($allrecalculate as $index => $tmp){

                    // $calc = AllRecalculate::orderby('id','desc')->with('mesin.MesinListrikPerjamTo')->first();
                    // $recRow = AllRecalculate::orderby('created_at','desc')->with(['Listrik.Listrikperjam','KategoriBagian','Mesin','GroupMesin','Company'])->first();
                    
                    $ambil_listrik_dari_mesin = $tmp->mesin->MesinListrikPerjamTo->persen;
                    $mtcsfe = RptMtc::where('code_mesin', $tmp->code_mesin)->first()->total_biaya_perbulan;
                    $penyusutanfe = Penyusutan::where('code_mesin', $tmp->code_mesin)->first()->penyusutan_perbulan;
                    $labors = Labor::where('code_mesin', $tmp->code_mesin)->first()->total_biaya;

                    $penyusutanfefn = Penyusutan::where('code_mesin', $tmp->code_mesin)->first();
                    $laborsfn = Labor::where('code_mesin', $tmp->code_mesin)->first();
                    $mtcsfefn = RptMtc::where('code_mesin', $tmp->code_mesin)->first();

                    $laporangajilain_bagianREPRO = LaporanGajiLain::whereIn('category_bagian', [9])->get();
                    $totalREPRO = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
                        return $REPRO->sum('total_biaya_laporan_periode');
                    });
                    
                    $laporanMTC = LaporanGajiLain::whereIn('category_bagian', [11])->get();
                    $totalMTC = collect([$laporanMTC])->sum(function ($MTC){
                        return $MTC->sum('total_biaya_laporan_periode');
                    });

                    $UMUM = LaporanGajiLain::whereIn('category_bagian', [12])->get();
                    $totalUMUM = collect([$UMUM])->sum(function ($um){
                        return $um->sum('total_biaya_laporan_periode');
                    });

                    $qcl = laporangajilain::whereIn('category_bagian', [13])->get();
                    $totalQC = collect([$qcl])->sum(function ($qc){
                        return $qc->sum('total_biaya_laporan_periode');
                    });

                    $LaporanBiayaAdministrasiUmum = LaporanBiayaAdministrasiUmum::whereIn('company_parent_id', [3])->get();
                    $totalbau = collect([$LaporanBiayaAdministrasiUmum])->sum(function ($bau){
                        return $bau->sum('total_biaya_lp_adm');
                    });

                    $penyusutan = Penyusutan::whereIn('company_parent_id', [3])->get();
                    $totalpeny = collect([$penyusutan])->sum(function ($bau){
                        return $bau->sum('penyusutan_perbulan');
                    });

                    $labor = Labor::whereIn('company_parent_id', [3])->get();
                    $totallbr = collect([$labor])->sum(function ($bau){
                        return $bau->sum('total_biaya');
                    });

                    $mtc = RptMtc::whereIn('company_parent_id', [3])->get();
                    $totalmtmct = collect([$mtc])->sum(function ($bau){
                        return $bau->sum('total_biaya_perbulan');
                    });
                    
                    /**
                     * @menghitung gaji_lainnya. fix.
                     */
                    $gaji_lainnya = $this->CalcBiayaGajiLainInstaceOfKalkulasi($totalREPRO, $totalMTC, $totalUMUM, $totalQC, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung bagian_penjualan. fix
                     */
                    $b_penjualan = $this->CalcBiayaBagPenjualanInstaceOfKalkulasi(RumusLapBagPenjualan::TotalSeluruhLPenjualanBagianPenjualan(), $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total BAU. fix.
                     */

                    $bau = $this->CalcBiayaAdministrasiUmumInstaceOfKalkulasi($totalbau, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total. fix.
                     */
                    $total = RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan($tmp->id_listrik, $penyusutanfe, $labors, $mtcsfe, $mtcsfefn->biaya_produksi_lain, $gaji_lainnya, $b_penjualan, $bau);
                    
                    /**
                     * @menghitung total semua biaya perjam. fix.
                     */
                    $semua_total_biaya_perjam = $this->ITnpenyusutanTotalPerjam($tmp->Listrik->shift, $total);

                    /**
                     * @menghitung total tanpa_penyusutan + tanpa mtc. fix.
                     */
                    $tanpa_penyusutan_plus_mtc_total = $this->TotalTanpaPenyusutanPlusMTC($penyusutanfe, $mtcsfe, $total);

                    /**
                     * @menghitung total tnp penyusutan + tnp mtc perjam. 
                     */
                    $tanpa_penyusutan_plus_mtc_perjam = $this->ITnpenyusutanTotalPerjamPlusMTC($tmp->Listrik->shift, $tanpa_penyusutan_plus_mtc_total);
                    
                    /**
                     * @menghitung total tanpa penyusutan + perjamnya. fix.
                     */
                    $tanpa_penyusutan_total = $this->TotTnpaPenyusutanATT($total, $penyusutanfe);
                    $tanpa_penyusutan_total_perjam = $this->TotalTanpaPenyusutanPerjamnya($tmp->Listrik->shift, $tanpa_penyusutan_total);

                    /**
                     * @menghitung total tanpa mtc + perjamnya. fix.
                     */

                    $tanpa_mtc_total = $this->TotalTanpaPenyusutanTanpaMTC($total, $mtcsfe);
                    $tanpa_mtc_total_perjam = $this->TotalPenyusutanTanpaMTCPerjamnya($tmp->Listrik->shift, $tanpa_mtc_total);

                        // return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan();
                        // $recall = AllRecalculate::orderBy('created_at', 'desc')->first();
                            $data_recalculate[] = [
                                // 'id_labor' => $totallbr,
                                'id' => $tmp->id,
                                'id_labor' => $laborsfn->total_biaya,
                                // 'id_penyusutan' => $penyusutanfefn->penyusutan_perbulan,
                                'id_penyusutan' => 0,
                                'id_mtc' => $mtcsfefn->total_biaya_perbulan,
                                // 'id_mtc' => 0,
                                'id_bprodlain_insteadof_mtc' => $mtcsfefn->biaya_produksi_lain,
                                'id_gajilain' => $gaji_lainnya,
                                // 'id_bgoenjualan' => $bagianpenjualanfe->biaya_perbulan_bag_penjualan,
                                'id_bgoenjualan' => $b_penjualan,
                                'id_bau' => $bau,
                                'total_semua_biaya' => $total,
                                'total_semua_biaya_perjam' => $semua_total_biaya_perjam,

                                'total_tanpa_penyusutan_n_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_penyusutan_n_mtc_perjam' => $tanpa_penyusutan_plus_mtc_perjam,

                                'total_tanpa_penyusutan' => $tanpa_penyusutan_total,
                                'total_tanpa_penyusutan_perjam' => $tanpa_penyusutan_total_perjam,

                                'total_tanpa_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_mtc_perjam' => $tanpa_mtc_total_perjam,

                            ];

                            $sid = 'id';
                            
                            $bulk_batch = \Batch::update($SendTemporaryCalculateInstance, $data_recalculate, $sid);

                        }
    
                    return response()->json(['res' => 200]);

                } catch (Exception $e) {
                    $code = 500;
                    $message = __('voyager::generic.internal_error');

                    if ($e->getMessage()) {
                        $message = $e->getMessage();
                    }

                    return response()->json([
                        'data' => [
                            'message' => $message,
                        ],
                    ], $code);
                }


    }

    public function recalculateTanpaPenyusutanNtanpaMTC(){

        try 
            {

                $SendTemporaryCalculateInstance = new AllRecalculate;
                $allrecalculate = AllRecalculate::with(['Listrik.Listrikperjam',
                'KategoriBagian','Mesin','mesin.MesinListrikPerjamTo','GroupMesin',
                'Company'])->get();
            
                foreach($allrecalculate as $index => $tmp){

                    // $calc = AllRecalculate::orderby('id','desc')->with('mesin.MesinListrikPerjamTo')->first();
                    // $recRow = AllRecalculate::orderby('created_at','desc')->with(['Listrik.Listrikperjam','KategoriBagian','Mesin','GroupMesin','Company'])->first();
                    
                    $ambil_listrik_dari_mesin = $tmp->mesin->MesinListrikPerjamTo->persen;
                    $mtcsfe = RptMtc::where('code_mesin', $tmp->code_mesin)->first()->total_biaya_perbulan;
                    $penyusutanfe = Penyusutan::where('code_mesin', $tmp->code_mesin)->first()->penyusutan_perbulan;
                    $labors = Labor::where('code_mesin', $tmp->code_mesin)->first()->total_biaya;

                    $penyusutanfefn = Penyusutan::where('code_mesin', $tmp->code_mesin)->first();
                    $laborsfn = Labor::where('code_mesin', $tmp->code_mesin)->first();
                    $mtcsfefn = RptMtc::where('code_mesin', $tmp->code_mesin)->first();

                    $laporangajilain_bagianREPRO = LaporanGajiLain::whereIn('category_bagian', [9])->get();
                    $totalREPRO = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
                        return $REPRO->sum('total_biaya_laporan_periode');
                    });
                    
                    $laporanMTC = LaporanGajiLain::whereIn('category_bagian', [11])->get();
                    $totalMTC = collect([$laporanMTC])->sum(function ($MTC){
                        return $MTC->sum('total_biaya_laporan_periode');
                    });

                    $UMUM = LaporanGajiLain::whereIn('category_bagian', [12])->get();
                    $totalUMUM = collect([$UMUM])->sum(function ($um){
                        return $um->sum('total_biaya_laporan_periode');
                    });

                    $qcl = laporangajilain::whereIn('category_bagian', [13])->get();
                    $totalQC = collect([$qcl])->sum(function ($qc){
                        return $qc->sum('total_biaya_laporan_periode');
                    });

                    $LaporanBiayaAdministrasiUmum = LaporanBiayaAdministrasiUmum::whereIn('company_parent_id', [3])->get();
                    $totalbau = collect([$LaporanBiayaAdministrasiUmum])->sum(function ($bau){
                        return $bau->sum('total_biaya_lp_adm');
                    });

                    $penyusutan = Penyusutan::whereIn('company_parent_id', [3])->get();
                    $totalpeny = collect([$penyusutan])->sum(function ($bau){
                        return $bau->sum('penyusutan_perbulan');
                    });

                    $labor = Labor::whereIn('company_parent_id', [3])->get();
                    $totallbr = collect([$labor])->sum(function ($bau){
                        return $bau->sum('total_biaya');
                    });

                    $mtc = RptMtc::whereIn('company_parent_id', [3])->get();
                    $totalmtmct = collect([$mtc])->sum(function ($bau){
                        return $bau->sum('total_biaya_perbulan');
                    });
                    
                    /**
                     * @menghitung gaji_lainnya. fix.
                     */
                    $gaji_lainnya = $this->CalcBiayaGajiLainInstaceOfKalkulasi($totalREPRO, $totalMTC, $totalUMUM, $totalQC, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung bagian_penjualan. fix
                     */
                    $b_penjualan = $this->CalcBiayaBagPenjualanInstaceOfKalkulasi(RumusLapBagPenjualan::TotalSeluruhLPenjualanBagianPenjualan(), $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total BAU. fix.
                     */

                    $bau = $this->CalcBiayaAdministrasiUmumInstaceOfKalkulasi($totalbau, $ambil_listrik_dari_mesin);

                    /**
                     * @menghitung total. fix.
                     */
                    $total = RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan($tmp->id_listrik, $penyusutanfe, $labors, $mtcsfe, $mtcsfefn->biaya_produksi_lain, $gaji_lainnya, $b_penjualan, $bau);
                    
                    /**
                     * @menghitung total semua biaya perjam. fix.
                     */
                    $semua_total_biaya_perjam = $this->ITnpenyusutanTotalPerjam($tmp->Listrik->shift, $total);

                    /**
                     * @menghitung total tanpa_penyusutan + tanpa mtc. fix.
                     */
                    $tanpa_penyusutan_plus_mtc_total = $this->TotalTanpaPenyusutanPlusMTC($penyusutanfe, $mtcsfe, $total);

                    /**
                     * @menghitung total tnp penyusutan + tnp mtc perjam. 
                     */
                    $tanpa_penyusutan_plus_mtc_perjam = $this->ITnpenyusutanTotalPerjamPlusMTC($tmp->Listrik->shift, $tanpa_penyusutan_plus_mtc_total);
                    
                    /**
                     * @menghitung total tanpa penyusutan + perjamnya. fix.
                     */
                    $tanpa_penyusutan_total = $this->TotTnpaPenyusutanATT($total, $penyusutanfe);
                    $tanpa_penyusutan_total_perjam = $this->TotalTanpaPenyusutanPerjamnya($tmp->Listrik->shift, $tanpa_penyusutan_total);

                    /**
                     * @menghitung total tanpa mtc + perjamnya. fix.
                     */

                    $tanpa_mtc_total = $this->TotalTanpaPenyusutanTanpaMTC($total, $mtcsfe);
                    $tanpa_mtc_total_perjam = $this->TotalPenyusutanTanpaMTCPerjamnya($tmp->Listrik->shift, $tanpa_mtc_total);

                        // return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan();
                        // $recall = AllRecalculate::orderBy('created_at', 'desc')->first();
                            $data_recalculate[] = [
                                // 'id_labor' => $totallbr,
                                'id' => $tmp->id,
                                'id_labor' => $laborsfn->total_biaya,
                                // 'id_penyusutan' => $penyusutanfefn->penyusutan_perbulan,
                                'id_penyusutan' => 0,
                                // 'id_mtc' => $mtcsfefn->total_biaya_perbulan,
                                'id_mtc' => 0,
                                'id_bprodlain_insteadof_mtc' => $mtcsfefn->biaya_produksi_lain,
                                'id_gajilain' => $gaji_lainnya,
                                // 'id_bgoenjualan' => $bagianpenjualanfe->biaya_perbulan_bag_penjualan,
                                'id_bgoenjualan' => $b_penjualan,
                                'id_bau' => $bau,
                                'total_semua_biaya' => $total,
                                'total_semua_biaya_perjam' => $semua_total_biaya_perjam,

                                'total_tanpa_penyusutan_n_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_penyusutan_n_mtc_perjam' => $tanpa_penyusutan_plus_mtc_perjam,

                                'total_tanpa_penyusutan' => $tanpa_penyusutan_total,
                                'total_tanpa_penyusutan_perjam' => $tanpa_penyusutan_total_perjam,

                                'total_tanpa_mtc' => $tanpa_penyusutan_plus_mtc_total,
                                'total_tanpa_mtc_perjam' => $tanpa_mtc_total_perjam,

                            ];

                            $sid = 'id';
                            
                            $bulk_batch = \Batch::update($SendTemporaryCalculateInstance, $data_recalculate, $sid);

                        }
    
                    return response()->json(['json' => $bulk_batch]);

                } catch (Exception $e) {
                    $code = 500;
                    $message = __('voyager::generic.internal_error');

                    if ($e->getMessage()) {
                        $message = $e->getMessage();
                    }

                    return response()->json([
                        'data' => [
                            'message' => $message,
                        ],
                    ], $code);
                }


    }

    public function exportCalcTanpaPenyusutan(){
        
        return Excel::download(new CalcsMachineExport, 'Calculate-Machine-Tanpa-Penyusutan.xlsx');

    }

    public function exportCalcTanpaMTC(){
        
        return Excel::download(new CalcsMachineMtCExport, 'Calculate-Machine-Tanpa-MTC.xlsx');

    }

    public function exportCalcTanpaMTCnTanpaPenyusutan(){
        
        return Excel::download(new CalcMachineTanpaMTCnTanpaPenyusutanExports, 'Calculate-Machine-Tanpa-MTC.xlsx');

    }

    public function CalcSmuaBiayaExports(){
        
        return Excel::download(new CalcSmuaBiayaExports, 'Calculate-Machine-Semua-Biaya.xlsx');

    }

    public function ListrikInstanceOfPenyusutan(){

        return RptCalcMachine::InstanceOfListrik();

    }

    public function IPenyusutanInstanceOfPenyusutan(){

        return RptCalcMachine::InstanceOfPenyusutan();

    }

    public function IPenyusutanInstanceOfMaintenance(){

        return RptCalcMachine::InstanceOfMaintenance();

    }

    public function IPenyusutanInstanceOfMtcRpt(){

        return RptCalcMachine::InstanceOfMtcRpt();

    }


    public function IPenyusutanInstanceOfGajiLainLaborMTC(){

        return RptCalcMachine::InstanceOfLaborMTC();

    }

    public function IPenyusutanInstanceOfGajiLainLaborRptMtc(){

        return RptCalcMachine::InstanceOfLaborRptMtc();

    }

    public function IPenyusutanInstanceOfGajiLainLaborUMUM(){

        return RptCalcMachine::InstanceOfLaborUMUM();

    }

    public function IPenyusutanInstanceOfGajiLainLaborMTCtPyt(){

        return RptCalcMachine::InstanceOfLaborMtcPyt();

    }


    public function IPenyusutanInstanceOfGajiLainLaborQC(){

        return RptCalcMachine::InstanceOfLaborQC();

    }

    public function IPenyusutanInstanceOfGajiLainLaborUmPyt(){

        return RptCalcMachine::InstanceOfLaborUmmPyts();

    }

    public function IPenyusutanInstanceOfGajiLainLaborPREPRESS(){

        return RptCalcMachine::InstanceOfLaborPREPRESS();

    }

    public function IPenyusutanInstanceOfGajiLainLaborQCPyts(){

        return RptCalcMachine::InstanceOfLaborQcPyts();

    }

    public function BpnjInstanceOfBagianPenjualan(){

        return RptCalcMachine::InstanceOfBagPenjualanToTls();

    }

    public function BpnjInstanceOfBagianPenjualanPyts(){

        return RptCalcMachine::InstanceOfLBagPenjualanToTls();

    }
    
    public function BagianAdministrasiUmumToTls(){

        return RptCalcMachine::InstanceOfBagianAdministrasiUmumToTls();

    }

    public function BagianAdministrasiUmumPytsToTls(){

        return RptCalcMachine::InstanceOfBagianAdministrasiUmumToTlsPyts();

    }

    public function LoadProsentaseListrik(){

        return RptCalcMachine::InsteadOfListrikNsheet();

    }

    public function LoadProsentaseListriktPyts(){

        return RptCalcMachine::InsteadOfListrikAFsheet();

    }

    public function LoadLabor(){

        return RptCalcMachine::InstanceOfLaborToTls();

    }

    public function LoadBiayaProduksiLain(){

        return RptCalcMachine::InstanceOfBiayaProdLainToTls();

    }

    public function CalcBiayaGajiLainInstaceOfKalkulasi($gaji_lainlabor_MTC, $gaji_lainlabor_UMUM, $gaji_lainlabor_QC, $gaji_lainlabor_PREPRESS, $listrikN5){

        return RptCalcMachine::InstanceOfCalcGajiLainSSR($gaji_lainlabor_MTC, $gaji_lainlabor_UMUM, $gaji_lainlabor_QC, $gaji_lainlabor_PREPRESS, $listrikN5);

    }

    public function CalcBiayaBagPenjualanInstaceOfKalkulasi($bpenjualan, $prosentaselistrik){

        return RptCalcMachine::InstanceOfCalcBagianPenjualanSSR($bpenjualan, $prosentaselistrik);

    }

    public function CalcBiayaAdministrasiUmumInstaceOfKalkulasi($bpenjualan, $prosentaselistrik){

        return RptCalcMachine::InstanceOfCalcBiayaAdministrasiUmumSSR($bpenjualan, $prosentaselistrik);

    }

    public function CalcToTlsInstaceOfKalkulasi($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau){

        return RptCalcMachine::InstanceOfCalcTotalPenyusutanPerbulan($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau);

    }

    public function CalcPersenListrikPerbulan($totallistrikperbulan, $totalcostmesinperbulan){

        return RptCalcMachine::tlspersenListrik($totallistrikperbulan, $totalcostmesinperbulan);

    }

    public function CalcTotalPerjamCalcMesin($shift, $totalcalcmesinperbulan){

        return RptCalcMachine::tlsperjamcalclistrik($shift, $totalcalcmesinperbulan);

    }

    public function CalcPersenPenyusutanPerbulan($penyusutanperbulan, $totalcostmesinperbulan){

        return RptCalcMachine::tlspersenPenyusutan($penyusutanperbulan, $totalcostmesinperbulan);
        
    }
    
    public function CalcPersenLaborPerbulan($laborperbulan, $totalcostmesinperbulan){

        return RptCalcMachine::tlspersenLabor($laborperbulan, $totalcostmesinperbulan);
        
    }

    public function CalcPersenMaintenancePerbulan($mtcperbulan, $totalcostmesinperbulan){

        return RptCalcMachine::tlspersenMTC($mtcperbulan, $totalcostmesinperbulan);
        
    }

    public function CalcPersenGajiLainnyaPerbulan($gajilainnyaperbulan, $totalcostmesinperbulan){

        return RptCalcMachine::tlspersenGajiLainnya($gajilainnyaperbulan, $totalcostmesinperbulan);
        
    }

    public function CalcPersenBagianPenjualanPerbulan($Bagianpenjualanperbulan, $totalcostmesinperbulan){

        return RptCalcMachine::tlspersenBagianPenjualan($Bagianpenjualanperbulan, $totalcostmesinperbulan);
        
    }

    public function CalcPersenBiayaAdministrasiUmum($BauPerbulan, $totalcostmesinperbulan){

        return RptCalcMachine::tlspersenBiayaAdministrasiUmum($BauPerbulan, $totalcostmesinperbulan);
        
    }

    public function CalcPersenTotSallpersenMaster($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau){

        return RptCalcMachine::CalcAllPercentMasterPenyusutanPerbulan($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau);
        
    }
    
    public function ButtonexportCalcTanpaPenyusutan(){
        return response(['button_ButtonexportCalcTanpaPenyusutan' => static::ButtonexportCalcTanpaPenyusutan]);
    }

    public function ButtonCalcSmuaBiayaExports(){
        return response(['button_ButtonCalcSmuaBiayaExports' => static::ButtonCalcSmuaBiayaExports]);
    }

    public function ButtonexportCalcTanpaMTC(){
        return response(['button_ButtonexportCalcTanpaMTC' => static::ButtonexportCalcTanpaMTC]);
    }

    public function ButtonexportCalcTanpaMTCnTanpaPenyusutan(){
        return response(['button_ButtonexportCalcTanpaMTCnTanpaPenyusutan' => static::exportCalcTanpaMTCnTanpaPenyusutan]);
    }

    public function TotalTanpaPenyusutanPlusMTC($penyusutan, $mtc, $totalsemuabiayapenyusutan){

        return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanplusMTC($penyusutan, $mtc, $totalsemuabiayapenyusutan);

    }
    
    public function ITnpenyusutanTotalPerjam($shift, $totalsemuabiayatanpapenyusutan){

        return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerJam($shift, $totalsemuabiayatanpapenyusutan);

    }

    public function TotalTanpaPenyusutanPerjamnya($shift, $totalsemuabiayatanpapenyusutan){

        return RptCalcMachine::InstanceOfKalkulasiTanpaPenyusutanPerjam($shift, $totalsemuabiayatanpapenyusutan);

    }

    public function TotalPenyusutanTanpaMTCPerjamnya($shift, $totalsemuabiayatanpapenyusutan){

        return RptCalcMachine::InstanceOfKalkulasiTanpaPenyusutanMTCPerjam($shift, $totalsemuabiayatanpapenyusutan);

    }

    public function TotTnpaPenyusutanATT($totalsemuabiayatanpapenyusutan, $penyusutan){

        return RptCalcMachine::InstanceTotalTanpaPenyusutan($totalsemuabiayatanpapenyusutan, $penyusutan);

    }

    public function TotalTanpaPenyusutanTanpaMTC($totalsemuabiayatanpapenyusutan, $maintenance){

        return RptCalcMachine::InstanceTotalTanpaPenyusutanTanpaMTC($totalsemuabiayatanpapenyusutan, $maintenance);

    }

    public function ITnpenyusutanTotalPerjamPlusMTC($shift, $totalsemuabiayatanpapenyusutan){

        return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerJamPlusMTC($shift, $totalsemuabiayatanpapenyusutan);

    }

    public function IPenyusutanInstanceOfTotalTanpaPenyusutan($listrik, $penyusutan, $labor, $maintenance, $biaya_prod_lain, $gaji_lainnya, $bagian_penjualan, $bau){

        return RptCalcMachine::InstanceOfCalcTotalTanpaPenyusutanPerbulan($listrik, $penyusutan, $labor, $maintenance, $biaya_prod_lain, $gaji_lainnya, $bagian_penjualan, $bau);

    }

    public function OpenTransactionTanpaPenyusutan(Request $r){

        $gaji_lainnya = $this->CalcBiayaGajiLainInstaceOfKalkulasi($r->b_labor_repro, $r->b_labor_mtcs, $r->b_labor_umumspyt, $r->b_lbr_qcpyt, $r->prosentase_listrik);
        $b_penjualan = $this->CalcBiayaBagPenjualanInstaceOfKalkulasi($r->b_penjualan, $r->prosentase_listrik);
        $bau = $this->CalcBiayaAdministrasiUmumInstaceOfKalkulasi($r->bau, $r->prosentase_listrik);

        $semua_total_biaya = $this->IPenyusutanInstanceOfTotalTanpaPenyusutan($r->listrik, $r->penyusutan, $r->labor, $r->mtc, $r->b_prod_lain, $gaji_lainnya, $b_penjualan, $bau);
        $semua_total_biaya_perjam = $this->ITnpenyusutanTotalPerjam($r->shift, $semua_total_biaya);

        $tanpa_penyusutan_plus_mtc_total = $this->TotalTanpaPenyusutanPlusMTC($r->penyusutan, $r->mtc, $semua_total_biaya);
        $tanpa_penyusutan_plus_mtc_perjam = $this->ITnpenyusutanTotalPerjamPlusMTC($r->shift, $tanpa_penyusutan_plus_mtc_total);

        $tanpa_penyusutan_total = $this->TotTnpaPenyusutanATT($semua_total_biaya, $r->penyusutan);
        $tanpa_penyusutan_total_perjam = $this->TotalTanpaPenyusutanPerjamnya($r->shift, $tanpa_penyusutan_plus_mtc_total);

        $tanpa_mtc_total = $this->TotalTanpaPenyusutanTanpaMTC($semua_total_biaya, $r->mtc);
        $tanpa_mtc_total_perjam = $this->TotalPenyusutanTanpaMTCPerjamnya($r->shift, $tanpa_mtc_total);

        $persenListrikTPnytsn = RumusListrikOutputPerjam::percent(RptCalcMachine::ListrikPersenTanpaPenyusutan($r->listrik, $semua_total_biaya));
        $ls = RptCalcMachine::ListrikPersenTanpaPenyusutan($r->listrik, $semua_total_biaya);
        $persenPenyusutanTPnytsn = RumusListrikOutputPerjam::percent(RptCalcMachine::PenyusutanPersenTanpaPenyusutan($r->penyusutan, $semua_total_biaya));
        $pystn = RptCalcMachine::PenyusutanPersenTanpaPenyusutan($r->penyusutan, $semua_total_biaya);
        $persenLaborTPnytsn = RumusListrikOutputPerjam::percent(RptCalcMachine::LaborPersenTanpaPenyusutan($r->labor, $semua_total_biaya));
        $lbr = RptCalcMachine::LaborPersenTanpaPenyusutan($r->labor, $semua_total_biaya);
        $persenMTCTPnytsn = RumusListrikOutputPerjam::percent(RptCalcMachine::MtcsPersenTanpaPenyusutan($r->mtc, $semua_total_biaya));
        $mtcsn = RptCalcMachine::MtcsPersenTanpaPenyusutan($r->mtc, $semua_total_biaya);
        $persenProduksiLainTPnytsn = RumusListrikOutputPerjam::percent(RptCalcMachine::BiayaProduksiLainPersenTanpaPenyusutan($r->b_prod_lain, $semua_total_biaya));
        $bpdkln = RptCalcMachine::BiayaProduksiLainPersenTanpaPenyusutan($r->b_prod_lain, $semua_total_biaya);
        $GajiLainPersenTanpaPenyusutan = RumusListrikOutputPerjam::percent(RptCalcMachine::GajiLainPersenTanpaPenyusutan($gaji_lainnya, $semua_total_biaya));
        $gjlnn = RptCalcMachine::GajiLainPersenTanpaPenyusutan($gaji_lainnya, $semua_total_biaya);
        $BagianPenjualanPersenTanpaPenyusutan = RumusListrikOutputPerjam::percent(RptCalcMachine::BagianPenjualanPersenTanpaPenyusutan($b_penjualan, $semua_total_biaya));
        $Bgpnjln = RptCalcMachine::BagianPenjualanPersenTanpaPenyusutan($b_penjualan, $semua_total_biaya);
        $BiayaAdministrasiMesinPersenTanpaPenyusutan = RumusListrikOutputPerjam::percent(RptCalcMachine::BiayaAdministrasiMesinPersenTanpaPenyusutan($bau, $semua_total_biaya));
        $baupytn = RptCalcMachine::BiayaAdministrasiMesinPersenTanpaPenyusutan($bau, $semua_total_biaya);
        $TotalPersenTanpaPenyusutan = RumusListrikOutputPerjam::percent(RptCalcMachine::TotalPersenTanpaPenyusutan($ls, $pystn, $lbr, $mtcsn, $bpdkln, $gjlnn, $Bgpnjln, $baupytn));
        
        $result_calc = [
            'code_calc_tnp_penyusutan' => RptCalcMachine::generateIDAccountPystan(),

            'company_parent_id' => $r->company_parent_id,
            'category_bagian' => $r->category_bagian,
            'code_mesin' => $r->code_mesin,

            'listrik' => $r->listrik,
            'penyusutan' => $r->penyusutan,
            'labor' => $r->labor,
            'mtc' => $r->mtc,
            'b_prod_lain' => $r->b_prod_lain,

            'gaji_lainnya' => $gaji_lainnya,
            'bagian_penjualan' => $b_penjualan,
            'bau' => $bau,

            'semua_total_biaya' => $semua_total_biaya,
            'semua_total_biaya_perjam' => $semua_total_biaya_perjam,

            'tanpa_penyusutan_plus_mtc_total' => $tanpa_penyusutan_plus_mtc_total,
            'tanpa_penyusutan_plus_mtc_perjam' => $tanpa_penyusutan_plus_mtc_perjam,

            'tanpa_penyusutan_total' => $tanpa_penyusutan_total,
            'tanpa_penyusutan_total_perjam' => $tanpa_penyusutan_total_perjam,

            'tanpa_mtc_total' => $tanpa_mtc_total,
            'tanpa_mtc_total_perjam' => $tanpa_mtc_total_perjam,

        ];

        $strdatacalcpenyusutan = TotalKalkulasiTanpaPenyusutan::create($result_calc);

        return response()->json(
            [
                'Case' => $strdatacalcpenyusutan,

                'listrik' => $strdatacalcpenyusutan->listrik,
                'penyusutan' => $strdatacalcpenyusutan->penyusutan,
                'labor' => $strdatacalcpenyusutan->labor,
                'mtc' => $strdatacalcpenyusutan->mtc,

                'gaji_lainnya' => $strdatacalcpenyusutan->gaji_lainnya,
                'b_penjualan' => $strdatacalcpenyusutan->bagian_penjualan,
                'bau' => $strdatacalcpenyusutan->bau,
                'b_prod_lain' => $strdatacalcpenyusutan->b_prod_lain,

                //recall
                'semua_total_biaya' => $strdatacalcpenyusutan->semua_total_biaya,
                'semua_total_biaya_perjam' => $strdatacalcpenyusutan->semua_total_biaya_perjam,
    
                'tanpa_penyusutan_plus_mtc_total' => $strdatacalcpenyusutan->tanpa_penyusutan_plus_mtc_total,
                'tanpa_penyusutan_plus_mtc_perjam' => $strdatacalcpenyusutan->tanpa_penyusutan_plus_mtc_perjam,
    
                'tanpa_penyusutan_total' => $strdatacalcpenyusutan->tanpa_penyusutan_total,
                'tanpa_penyusutan_total_perjam' => $strdatacalcpenyusutan->tanpa_penyusutan_total_perjam,
    
                'tanpa_mtc_total' => $strdatacalcpenyusutan->tanpa_mtc_total,
                'tanpa_mtc_total_perjam' => $strdatacalcpenyusutan->tanpa_mtc_total_perjam,

                //panel response listrik
                'prsLstrk' => $persenListrikTPnytsn,
                'prsPystan' => $persenPenyusutanTPnytsn,
                'persenMTCTPnytsn' => $persenMTCTPnytsn,
                'persenLaborTPnytsn' => $persenLaborTPnytsn,
                'TotalPersenTanpaPenyusutan' => $TotalPersenTanpaPenyusutan,
                'persenProduksiLainTPnytsn' => $persenProduksiLainTPnytsn,
                'GajiLainPersenTanpaPenyusutan' => $GajiLainPersenTanpaPenyusutan,
                'BagianPenjualanPersenTanpaPenyusutan' => $BagianPenjualanPersenTanpaPenyusutan,
                'BiayaAdministrasiMesinPersenTanpaPenyusutan' => $BiayaAdministrasiMesinPersenTanpaPenyusutan,
            ]
        );

    }

    public function view_totalkalkulasi_tnp_penyusutan() {

        $company = Company::all();
        $b_listrik = $this->ListrikInstanceOfPenyusutan();
        $b_penyusutan = $this->IPenyusutanInstanceOfPenyusutan();
        $b_mtc = $this->IPenyusutanInstanceOfMtcRpt();
        $b_labor_mtc = $this->IPenyusutanInstanceOfGajiLainLaborRptMtc();
        $b_labor_mtcpyt = $this->IPenyusutanInstanceOfGajiLainLaborMTCtPyt();
        $b_labor_ummpyt = $this->IPenyusutanInstanceOfGajiLainLaborUmPyt();
        $b_blqc_pyts = $this->IPenyusutanInstanceOfGajiLainLaborQCPyts();
        $b_bag_penjualan = $this->BpnjInstanceOfBagianPenjualanPyts();
        $b_bag_administrasi_umum = $this->BagianAdministrasiUmumPytsToTls();
        $mesin = Mesin::all();
        $loadProsentaseListrik = $this->LoadProsentaseListriktPyts();
        $LoadLabor = $this->LoadLabor();
        $LoadProdLain = $this->LoadBiayaProduksiLain();
        $cbagian = KategoriBagian::all();

        return view('vendor.voyager.total-kalkulasi-rpt.form_tnpnystanrpt', compact('LoadProdLain','LoadLabor','loadProsentaseListrik','b_bag_administrasi_umum','b_bag_penjualan','b_labor_mtcpyt','b_labor_ummpyt','b_blqc_pyts','b_labor_mtc','b_mtc','b_penyusutan','b_listrik','company','mesin','cbagian'));

    }

    public function detailTransactionPenyusutan(Request $request)
    {
        // dd($new);
        if ($request->ajax()) {
            
            if(!empty($request->penyusutan))
            {
        $new = AllRecalculate::with(['listrik','KategoriBagian','Mesin.GroupMesinTo','GroupMesin','Company'])->get();
                
               
                $listrik = DB::table('total_kalkulasi_tanpa_penyusutan')
                ->leftJoin('mesin', 'total_kalkulasi_tanpa_penyusutan.code_mesin', '=', 'mesin.id')
                ->rightJoin('lb8_kategori_mesin', 'total_kalkulasi_tanpa_penyusutan.group_mesin', '=', 'lb8_kategori_mesin.id')
                ->join('kategori_bagian', 'total_kalkulasi_tanpa_penyusutan.category_bagian', '=', 'kategori_bagian.id')
                ->join('company', 'total_kalkulasi_tanpa_penyusutan.company_parent_id', '=', 'company.id')
                ->get();
                
                if($request->penyusutan == static::NULLABLE_PENYUSUTAN)
                {
                    $listrik = [];
                }

            } 
                else {
                
                    $listrik = [];
            }
          
        
            // $listrik = TotalKalkulasiTanpaPenyusutan::with(['mesin','kategori_bagian'])->select('total_kalkulasi.*','mesin.*');
          
            // ->leftjoin('kategori_bagian', 'kategori_bagian.id', '=', 'total_kalkulasi.category_bagian')
            // ->join('mesin as msn', function($join){
            //     $join->on('tk.code_mesin', '=', 'msn.id');
            // })
            // ->join('kategori_bagian as kb', function($join){
            //     $join->on('total_kalkulasi as tk', 'tk.category_mesin', '=', 'kb.id');
            // })
            // ->select(['mesin.*','kategori_bagian.*','total_kalkulasi.*']);

            // dd($listrik);

            return DataTables::of($new)
                        // ->addColumn('title', function ($squery) {
                        //     return $squery->map(function($post) {
                        //         return str_limit($post, 30, '...');
                        //     })->implode('<br>');
                        // })
                        ->editColumn('fungsi_mesin', function($fungsimesin) {
                            return $fungsimesin->mesin->code_mesin;
                        })
                        ->editColumn('company_name', function($company) {
                            // dd($company->Company);
                            return $company->Company->company_name;
                        })
                        ->editColumn('code_mesin', function($codemesin) {
                            return $codemesin->mesin->code_mesin;
                        })
                        ->editColumn('nama_mesin_karegori', function($lb8_kategori_mesin) {
                            return $lb8_kategori_mesin->Mesin->GroupMesinTo->nama_kategori_mesin;
                        })
                    // ->addIndexColumn()
                    // ->addColumn('kategori_bagian',function($query){
                    //     return $query->kategori_bagian->nama_bagian;
                    //      //return DB::raw("SELECT * FROM 'patients' WHERE 'patients_id' = ?", $action->patient_id);
                    //  })
                    // ->editColumn('title', '{!! str_limit($title, 60) !!}')
                    // ->filter(function ($query) use ($request) {
                    //     if ($request->has('name')) {
                    //         $query->where('customer.customer_name', 'like', "%{$request->get('name')}%");
                    //     }
                    // })
                    ->editColumn('listrik', function($listrik) {
                        return RptCalcMachine::frm_rph($listrik->id_listrik);
                    }) 
                    ->editColumn('penyusutan', function($penyusutan) {
                        return RptCalcMachine::frm_rph($penyusutan->id_penyusutan);
                    })   
                    ->editColumn('labor', function($labor) {
                        return RptCalcMachine::frm_rph($labor->id_labor);
                    })
                    ->editColumn('mtc', function($mtc) {
                        return RptCalcMachine::frm_rph($mtc->id_mtc);
                    })
                    ->editColumn('b_prod_lain', function($b_prod_lain) {
                        return RptCalcMachine::frm_rph($b_prod_lain->id_bprodlain_insteadof_mtc);
                    })  
                    ->editColumn('gaji_lainnya', function($gaji_lainnya) {
                        return RptCalcMachine::frm_rph($gaji_lainnya->id_gajilain);
                    })
                    ->editColumn('bagian_penjualan', function($bagian_penjualan) {
                        return RptCalcMachine::frm_rph($bagian_penjualan->id_bgoenjualan);
                    })
                    ->editColumn('bau', function($bau) {
                        return RptCalcMachine::frm_rph($bau->id_bau);
                    }) 
                    ->editColumn('semua_total_biaya', function($semua_total_biaya) {
                        return RptCalcMachine::frm_rph($semua_total_biaya->total_semua_biaya);
                    }) 
                    ->editColumn('semua_total_biaya_perjam', function($semua_total_biaya_perjam) {
                        return RptCalcMachine::frm_rph($semua_total_biaya_perjam->total_semua_biaya_perjam);
                    }) 
                    ->editColumn('tanpa_penyusutan_plus_mtc_total', function($tanpa_penyusutan_plus_mtc_total) {
                        return RptCalcMachine::frm_rph($tanpa_penyusutan_plus_mtc_total->total_tanpa_penyusutan_n_mtc);
                    }) 
                    ->editColumn('tanpa_penyusutan_plus_mtc_perjam', function($tanpa_penyusutan_plus_mtc_perjam) {
                        return RptCalcMachine::frm_rph($tanpa_penyusutan_plus_mtc_perjam->total_tanpa_penyusutan_n_mtc_perjam);
                    }) 
                    ->editColumn('tanpa_penyusutan_total', function($tanpa_penyusutan_total) {
                        return RptCalcMachine::frm_rph($tanpa_penyusutan_total->total_tanpa_penyusutan);
                    }) 
                    ->editColumn('tanpa_penyusutan_total_perjam', function($tanpa_penyusutan_total_perjam) {
                        return RptCalcMachine::frm_rph($tanpa_penyusutan_total_perjam->total_tanpa_penyusutan_perjam);
                    }) 
                    ->editColumn('tanpa_mtc_total', function($tanpa_mtc_total) {
                        return RptCalcMachine::frm_rph($tanpa_mtc_total->total_tanpa_mtc);
                    }) 
                    ->editColumn('tanpa_mtc_total_perjam', function($tanpa_mtc_total_perjam) {
                        return RptCalcMachine::frm_rph($tanpa_mtc_total_perjam->total_tanpa_mtc_perjam);
                    }) 
                    // ->addColumn('action', function($row) use($request){
                    //     // dd($request->all());

                    //     return '<div class="col-md-12"><span class="no-sort no-click bread-actions"><a class="btn btn-sm btn-primary pull-right edit"><span class="voyager-edit"> Ubah ?</span> </a>';
                    
                    // })
                    ->rawColumns(['group_mesin'])
                    ->escapeColumns()->make(true);
        }
      
    }

    public function OpenTransactionPenyusutan(Request $r){

        /**
         * Open transaction kalkulasi mesin (Penyusutan) / bulan. field == gaji_lain instead of table total_kalkulasi.
         */
        $gaji_lainnya = $this->CalcBiayaGajiLainInstaceOfKalkulasi($r->b_labor_mtc, $r->b_labor_umum, $r->b_labor_qc, $r->b_labor_prepress, $r->prosentase_listrik);
        
        $b_penjualan = $this->CalcBiayaBagPenjualanInstaceOfKalkulasi($r->b_penjualan, $r->prosentase_listrik);

        $bau = $this->CalcBiayaAdministrasiUmumInstaceOfKalkulasi($r->bau, $r->prosentase_listrik);

        $tptalcaclmesin_perbulan = $this->CalcToTlsInstaceOfKalkulasi($r->listrik, $r->penyusutan, $r->labor, $r->Maintenance, $gaji_lainnya, $b_penjualan, $bau);

        $total_perjam = $this->CalcTotalPerjamCalcMesin($r->shift_listrik, $tptalcaclmesin_perbulan);
        
        $persen_listrik = $this->CalcPersenListrikPerbulan($r->listrik, $tptalcaclmesin_perbulan);

        $penyusutan_persen = $this->CalcPersenPenyusutanPerbulan($r->penyusutan, $tptalcaclmesin_perbulan);

        $labor_persen = $this->CalcPersenLaborPerbulan($r->labor, $tptalcaclmesin_perbulan);

        $maintenance_persen = $this->CalcPersenMaintenancePerbulan($r->Maintenance, $tptalcaclmesin_perbulan);

        $gaji_lainnya_persen = $this->CalcPersenGajiLainnyaPerbulan($gaji_lainnya, $tptalcaclmesin_perbulan);

        $b_penjualan_persen = $this->CalcPersenBagianPenjualanPerbulan($b_penjualan, $tptalcaclmesin_perbulan);

        $bau_persen = $this->CalcPersenBiayaAdministrasiUmum($bau, $tptalcaclmesin_perbulan);

        $total_persen = $this->CalcPersenTotSallpersenMaster($persen_listrik, $penyusutan_persen, $labor_persen, $maintenance_persen, $gaji_lainnya_persen, $b_penjualan_persen, $bau_persen);

        $result_calc = [
            'code_kalkulasi' => RptCalcMachine::generateIDAccountCALCEDP(),

            'company_parent_id' => $r->company_parent_id,
            'category_bagian' => $r->category_bagian,
            'code_mesin' => $r->code_mesin,

            'listrik' => $r->listrik,
            'penyusutan' => $r->penyusutan,
            'labor' => $r->labor,
            'Maintenance' => $r->Maintenance,

            'gaji_lainnya' => $gaji_lainnya,
            'b_penjualan' => $b_penjualan,
            'bau' => $bau,
            'listrik_persen' => $persen_listrik,
            'penyusutan_persen' => $penyusutan_persen,

            'total' => $tptalcaclmesin_perbulan,
            'labor_persen' => $labor_persen,
            'maintenance_persen' => $maintenance_persen,
            'gaji_lainnya_persen' => $gaji_lainnya_persen,
            'b_penjualan_persen' => $b_penjualan_persen,
            'bau_persen' => $bau_persen,
            
            'total_perjam' => $total_perjam,
            'total_persen' => $total_persen,

        ];

        $strdatacalcpenyusutan = TotalKalkulasiTanpaPenyusutan::create($result_calc);

        return response()->json(
            [
                'Case' => $result_calc,
                'listrik' => $strdatacalcpenyusutan->listrik,
                'penyusutan' => $strdatacalcpenyusutan->penyusutan,
                'labor' => $strdatacalcpenyusutan->labor,
                'Maintenance' => $strdatacalcpenyusutan->Maintenance,

                'gaji_lainnya' => $strdatacalcpenyusutan->gaji_lainnya,
                'b_penjualan' => $strdatacalcpenyusutan->b_penjualan,
                'bau' => $strdatacalcpenyusutan->bau,
                'persen_listrik' => $strdatacalcpenyusutan->listrik_persen,
                'penyusutan_persen' => $strdatacalcpenyusutan->penyusutan_persen,

                'total' => $strdatacalcpenyusutan->total,
                'labor_persen' => $strdatacalcpenyusutan->labor_persen,
                'maintenance_persen' => $strdatacalcpenyusutan->maintenance_persen,
                'gaji_lainnya_persen' => $strdatacalcpenyusutan->gaji_lainnya_persen,
                'b_penjualan_persen' => $strdatacalcpenyusutan->b_penjualan_persen,
                'bau_persen' => $strdatacalcpenyusutan->bau_persen,

                'total_perjam' => $strdatacalcpenyusutan->total_perjam,
                'total_persen' => $strdatacalcpenyusutan->total_persen,
            ]
        );

    }

    public function form_tr_kakulasi(){

        $company = Company::all();
        $b_listrik = $this->ListrikInstanceOfPenyusutan();
        $b_penyusutan = $this->IPenyusutanInstanceOfPenyusutan();
        $b_mtc = $this->IPenyusutanInstanceOfMaintenance();
        $b_labor_mtc = $this->IPenyusutanInstanceOfGajiLainLaborMTC();
        $b_labor_umum = $this->IPenyusutanInstanceOfGajiLainLaborUMUM();
        $b_labor_qc = $this->IPenyusutanInstanceOfGajiLainLaborQC();
        $b_labor_prepress = $this->IPenyusutanInstanceOfGajiLainLaborPREPRESS();
        $b_bag_penjualan = $this->BpnjInstanceOfBagianPenjualan();
        $b_bag_administrasi_umum = $this->BagianAdministrasiUmumToTls();
        $mesin = Mesin::all();
        $loadProsentaseListrik = $this->LoadProsentaseListrik();
        $LoadLabor = $this->LoadLabor();
        $cbagian = KategoriBagian::all();

        return view('vendor.voyager.total-kalkulasi-rpt.form_kalkulasirpts', compact('LoadLabor','loadProsentaseListrik','b_bag_administrasi_umum','b_bag_penjualan','b_labor_umum','b_labor_qc','b_labor_prepress','b_labor_mtc','b_mtc','b_penyusutan','b_listrik','company','mesin','cbagian'));
    }

}
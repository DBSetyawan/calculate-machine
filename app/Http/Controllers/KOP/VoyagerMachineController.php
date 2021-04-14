<?php

namespace App\Http\Controllers\KOP;

use App\Labor;
use App\Mesin;
use Exception;
use App\RptMtc;
use App\Company;
use App\Listrik;
use Carbon\Carbon;
use App\AccountMtc;
use App\LaborTotal;
use App\LwbpMaster;
use App\MesinTotal;
use App\Penyusutan;
use App\RPTMtcTotal;
use RumusPenyusutan;
use App\ListrikOutput;
use App\KategoriBagian;
use App\LocationMachine;
use App\PenyusutanTotal;
use App\Lb8KategoriMesin;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Events\BreadDataRestored;
use TCG\Voyager\Events\BreadImagesDeleted;
use Illuminate\Database\Eloquent\SoftDeletes;
use TCG\Voyager\Database\Schema\SchemaManager;
use App\Http\Controllers\KOP\Helpers\RumusLabor;
use App\Http\Controllers\KOP\VoyagerLaborController;
use App\Http\Controllers\KOP\VoyagerRptMTController;
use App\Http\Controllers\KOP\Helpers\RumusRptMaintenance;
use App\Http\Controllers\KOP\Helpers\ModulTrackingDataHelpers;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as BaseVoyagerBaseController;

class VoyagerMachineController extends BaseVoyagerBaseController
{
 
    public function index(Request $request)
    {
        // GET THE SLUG, ex. 'posts', 'pages', etc.
        $slug = $this->getSlug($request);

        // GET THE DataType based on the slug
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('browse', app($dataType->model_name));

        $getter = $dataType->server_side ? 'paginate' : 'get';

        $search = (object) ['value' => $request->get('s'), 'key' => $request->get('key'), 'filter' => $request->get('filter')];

        $searchNames = [];
        if ($dataType->server_side) {
            $searchable = SchemaManager::describeTable(app($dataType->model_name)->getTable())->pluck('name')->toArray();
            $dataRow = Voyager::model('DataRow')->whereDataTypeId($dataType->id)->get();
            foreach ($searchable as $key => $value) {
                $field = $dataRow->where('field', $value)->first();
                $displayName = ucwords(str_replace('_', ' ', $value));
                if ($field !== null) {
                    $displayName = $field->getTranslatedAttribute('display_name');
                }
                $searchNames[$value] = $displayName;
            }
        }

        $orderBy = $request->get('order_by', $dataType->order_column);
        $sortOrder = $request->get('sort_order', $dataType->order_direction);
        $usesSoftDeletes = false;
        $showSoftDeleted = false;

        // Next Get or Paginate the actual content from the MODEL that corresponds to the slug DataType
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope'.ucfirst($dataType->scope))) {
                $query = $model->{$dataType->scope}();
            } else {
                $query = $model::select('*');
            }

            // Use withTrashed() if model uses SoftDeletes and if toggle is selected
            if ($model && in_array(SoftDeletes::class, class_uses_recursive($model)) && Auth::user()->can('delete', app($dataType->model_name))) {
                $usesSoftDeletes = true;

                if ($request->get('showSoftDeleted')) {
                    $showSoftDeleted = true;
                    $query = $query->withTrashed();
                }
            }

            // If a column has a relationship associated with it, we do not want to show that field
            $this->removeRelationshipField($dataType, 'browse');

            if ($search->value != '' && $search->key && $search->filter) {
                $search_filter = ($search->filter == 'equals') ? '=' : 'LIKE';
                $search_value = ($search->filter == 'equals') ? $search->value : '%'.$search->value.'%';
                $query->where($search->key, $search_filter, $search_value);
            }

            if ($orderBy && in_array($orderBy, $dataType->fields())) {
                $querySortOrder = (!empty($sortOrder)) ? $sortOrder : 'desc';
                $dataTypeContent = call_user_func([
                    $query->orderBy($orderBy, $querySortOrder),
                    $getter,
                ]);
            } elseif ($model->timestamps) {
                $dataTypeContent = call_user_func([$query->latest($model::CREATED_AT), $getter]);
            } else {
                $dataTypeContent = call_user_func([$query->orderBy($model->getKeyName(), 'DESC'), $getter]);
            }

            // Replace relationships' keys for labels and create READ links if a slug is provided.
            $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType);
        } else {
            // If Model doesn't exist, get data from table name
            $dataTypeContent = call_user_func([DB::table($dataType->name), $getter]);
            $model = false;
        }

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($model);

        // Eagerload Relations
        $this->eagerLoadRelations($dataTypeContent, $dataType, 'browse', $isModelTranslatable);

        // Check if server side pagination is enabled
        $isServerSide = isset($dataType->server_side) && $dataType->server_side;

        // Check if a default search key is set
        $defaultSearchKey = $dataType->default_search_key ?? null;

        // Actions
        $actions = [];
        if (!empty($dataTypeContent->first())) {
            foreach (Voyager::actions() as $action) {
                $action = new $action($dataType, $dataTypeContent->first());

                if ($action->shouldActionDisplayOnDataType()) {
                    $actions[] = $action;
                }
            }
        }

        // Define showCheckboxColumn
        $showCheckboxColumn = false;
        if (Auth::user()->can('delete', app($dataType->model_name))) {
            $showCheckboxColumn = true;
        } else {
            foreach ($actions as $action) {
                if (method_exists($action, 'massAction')) {
                    $showCheckboxColumn = true;
                }
            }
        }

        // Define orderColumn
        $orderColumn = [];
        if ($orderBy) {
            $index = $dataType->browseRows->where('field', $orderBy)->keys()->first() + ($showCheckboxColumn ? 1 : 0);
            $orderColumn = [[$index, $sortOrder ?? 'desc']];
        }

        $view = 'voyager::bread.browse';

        if (view()->exists("voyager::$slug.browse")) {
            $view = "voyager::$slug.browse";
        }

        return Voyager::view($view, compact(
            'actions',
            'dataType',
            'dataTypeContent',
            'isModelTranslatable',
            'search',
            'orderBy',
            'orderColumn',
            'sortOrder',
            'searchNames',
            'isServerSide',
            'defaultSearchKey',
            'usesSoftDeletes',
            'showSoftDeleted',
            'showCheckboxColumn'
        ));
    }

    public function RataRataPerbaikanPerbulan($perbaikan_, $perbaikan__, $perbaikan___){

        return RumusRptMaintenance::HitungRataRataPerbaikanPerbulan($perbaikan_, $perbaikan__, $perbaikan___);

    }

    public function RataRataSparePartPerbulan($sparepart_, $sparepart__, $sparepart___){

        return RumusRptMaintenance::HitungRataRataSparePartPerbulan($sparepart_, $sparepart__, $sparepart___);

    }

    public function TotalSemuaBiayaProduksi($total_account_mtc, $listrikoutputperjam, $category_bagian){

        return RumusRptMaintenance::HitungTotalBiayaProduksi($total_account_mtc, $listrikoutputperjam, $category_bagian);

    }

    public function TotalBiayaPenyusutanMaintenance($ratarataperbaikanperbulan, $rataratasparepartperbulan){

        return RumusRptMaintenance::HitungTotalPenyusutanPerbulan($ratarataperbaikanperbulan, $rataratasparepartperbulan);
    }

    public function RumusBiayaGajiUpahSupervisor($shift, $mesin_yang_ditangai_spv, $code_mesin){

        return RumusLabor::SpvLevels($shift, $mesin_yang_ditangai_spv, $code_mesin);

    }

    public function RumusBiayaGajiUpahOperator($shift, $operator){

        return RumusLabor::OptLevels($shift, $operator);

    }

    public function RumusBiayaGajiUpahHelper($shift, $helper){

        return RumusLabor::Helplevels($shift, $helper);
        
    }

    public function RumusTotalBiayaLabor($spv, $operator, $helper){

        return RumusLabor::SumLevels($spv, $operator, $helper);

    }
    
    public function detaillocationID(Request $req){

        /**group mesin dari kategori bagian id
         * revisi mengganti 
         */
        // $mesin = Mesin::whereIn('category_bagian_id', [(Int) $req->ctgId])->where('on_off', '!=', 0)
        $mesin = LocationMachine::whereIn('id', [$req->group_mesin_id])->first();
        return response()->json(['detail'=> $mesin]);
    }

    public function detailcodemesin(Request $req){

        /**group mesin dari kategori bagian id
         * revisi mengganti 
         */
        // $mesin = Mesin::whereIn('category_bagian_id', [(Int) $req->ctgId])->where('on_off', '!=', 0)
        $mesin = Mesin::whereIn('group_mesin_id', [$req->group_mesin_id])->where('on_off', '!=', 0)
        ->with('KbagianTo','CompanyTo','GroupMesinTo','MesinListrikPerjamTo','AsumsiTo')->get();
        return response()->json(['detail'=> $mesin]);
    }

    public function detailcodemesinOn(Request $req){

        $mesin = Mesin::whereIn('id', [$req->mesinid])->where('on_off', '!=', 0)
        ->with('KbagianTo','CompanyTo','GroupMesinTo','HasLocationMchId','MesinListrikPerjamTo','AsumsiTo')->first();
        return response()->json(['detail'=> $mesin]);
    }

    public function storePlaceEv(Request $r){
        
        $datamesin = [
            'ampere' => $r->ampere,
            'faktor_kali_lwbp' =>  $r->faktor_kali_lwbp,
            'faktor_kali_wbp' =>  $r->faktor_kali_wbp,
            'voltase' =>  $r->voltase,
            'deskripsi' =>  $r->deskripsi,
            'location_mch_id' => $r->location_mch_id,
            'code_mesin' => $r->code_mesin,
            'asumsi_id' => $r->asumsi_id,
            'on_off' => 1,
            'company_id' => $r->company_id,
            'group_mesin_id' => $r->group_mesin_id,
            'category_bagian_id' => $r->category_bagian_id,
            // 'listrik_perjam_id' => $r->listrik_perjam_id
            'capacity_mch' => $r->listrik_perjam_id
            
        ];
        
        /**
         * Hitung Total Biaya Penyusutan
         * @param $purchaseorder_value, $umur_bulan.
         */
        $rumusTotalPenyusutan = RumusPenyusutan::HitungTotalPenyusutanPerbulan((float) $r->purchaseorder_value, $r->umur);


        /**
         * @Transaksi MTC, Hitung Total Perbaikan Biaya perbulan
         * @param $perbaikanpertahunn.
         */
        $RataRataPerbaikanPerbulan = $this->RataRataPerbaikanPerbulan($r->perbaikan_tahun1, $r->perbaikan_tahun2, $r->perbaikan_tahun3);
        
        /**
         * Hitung Total Sparepart Biaya perbulan
         * @param $perbaikanpertahunn.
         */
        $RataRataSparePartPerbulan = $this->RataRataSparePartPerbulan($r->sparepart_tahun1, $r->sparepart_tahun2, $r->sparepart_tahun3);
        
        /**
         * mengambil master account_mct AE$34 * sheet listrik AF5
         * @development process
         */
        $totalBiayaAccountMTC = AccountMtc::whereIn('company_parent_id', [3])->get();

        $totalAccountMTC = collect([$totalBiayaAccountMTC])->sum(function ($totalbiayaacmtc){
                return $totalbiayaacmtc->sum('biaya_perbulan');
            });

        $TotalSemuaBiayaProduksilain = $this->TotalSemuaBiayaProduksi($totalAccountMTC, $r->listrik_perjam_id, $r->category_bagian);
    
        /**
         * total biaya penyusutan perbulan
         */
        $TotalBiayaPenyusutanMaintenance = $this->TotalBiayaPenyusutanMaintenance($RataRataPerbaikanPerbulan, $RataRataSparePartPerbulan);

        // /**
        //  * @Hitung Labor, Hitung Biaya Level
        //  * @method RumusBiayaGajiUpahSupervisor, RumusBiayaGajiUpahOperator, RumusBiayaGajiUpahHelper
        //  *
        //  * Total biaya level Supervisor
        //  */
        // $biayasupervisor = $this->RumusBiayaGajiUpahSupervisor($r->shift_labor, $r->jumlah_mesin_ditanggani, $r->code_mesin_ids);
        
        // /**
        //  * Total biaya level Operator
        //  */
        // $biayaoperator = $this->RumusBiayaGajiUpahOperator($r->shift_labor, $r->operator);
         
        // /**
        //  * Total biaya level helper
        //  */
        // $biayahelper = $this->RumusBiayaGajiUpahHelper($r->shift_labor, $r->helper);

        // /**
        //  * Total biaya labor
        //  */
        // $total_biaya_upah_perbulan = $this->RumusTotalBiayaLabor($biayasupervisor, $biayaoperator, $biayahelper);

        if($r->setTo["isConfirmed"] == "true"){

            $simpanMesin = Mesin::create($datamesin);
            $dtmesin = Mesin::whereIn('id',[$simpanMesin->id])->first();
            
            if(!empty($simpanMesin) && $simpanMesin != [] && $simpanMesin != null){

                $columns = [
                    'updated_at',
                    'created_at', 
                    'created_by', 
                    'company_id',
                    'group_mesin',
                    'code_mesin',
                    'table_column',
                    'history_latest',
                    'before',
                    'history_group_mesin',
                    'before_group_mesin',
                ];
                
                $dmach[] = [
                    'updated_at' => Carbon::now(),
                    'created_at' => Carbon::now(),
                    'created_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                    'company_id' => $dtmesin->company_id,
                    'group_mesin' => $dtmesin->group_mesin_id,
                    'code_mesin' => $dtmesin->id,
                    'table_column' => 'mesin.added.event',
                    'history_latest' => 'first event',
                    'before' => '',
                    'history_group_mesin' => 'second event',
                    'before_group_mesin' => ''
                ];
                
            $MesinTotal = new MesinTotal;
                
                $batchSize = 500;
                    
            $result = \Batch::insert($MesinTotal, $columns, $dmach, $batchSize);


                /**
                 * @penyusutan
                 */
                $TotalakumulasibiayaPenyusutan = [
                    'company_parent_id' => $dtmesin->company_id,
                    'category_bagian' => $dtmesin->category_bagian_id,
                    'code_mesin' => $dtmesin->id,
                    'code_penyusutan' => RumusPenyusutan::generateIDPenyusutan(), //not 
                    'penyusutan_perbulan' => (float) $rumusTotalPenyusutan,
                    'purchaseorder_value' => $r->purchaseorder_value,
                    'umur' => $r->umur,
                    'nama_sim' => $r->nama_sim
                ];

                $columns = [
                    'updated_at',
                    'created_at', 
                    'created_by', 
                    'company_parent_id',
                    'category_id',
                    'code_mesin',
                    'table_column',
                    'history_latest',
                    'before',
                ];
                
                $datas[] = [
                    'updated_at' => Carbon::now(),
                    'created_at' => Carbon::now(),
                    'created_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                    'company_parent_id' => $dtmesin->company_id,
                    'category_id' => $dtmesin->category_bagian_id,
                    'code_mesin' => $dtmesin->id,
                    'table_column' => 'penyusutan.added.event',
                    'history_latest' => ceil($rumusTotalPenyusutan),
                    'before' => ceil($rumusTotalPenyusutan),
                ];
    
            $PenyusutanTotal = new PenyusutanTotal;
                
                $batchSize = 500;
                    
            \Batch::insert($PenyusutanTotal, $columns, $datas, $batchSize);
    
                $simpanBiayaListrik = Penyusutan::create($TotalakumulasibiayaPenyusutan);

                $data_response_rptmtc = [
                    'company_parent_id' => $dtmesin->company_id,
                    'category_bagian' => $dtmesin->category_bagian_id,
                    'code_mesin' => $dtmesin->id,
                    'code_rpt_mtc' => RumusRptMaintenance::generateIDRPTRPTMTC(), 
                    'perbaikan_tahun1' => $r->perbaikan_tahun1,
                    'perbaikan_tahun2' => $r->perbaikan_tahun2,
                    'perbaikan_tahun3' => $r->perbaikan_tahun3,
        
                    'rata_rata_perbaikan_perbulan' => $RataRataPerbaikanPerbulan,
        
                    'sparepart_tahun1' => $r->sparepart_tahun1,
                    'sparepart_tahun2' => $r->sparepart_tahun2,
                    'sparepart_tahun3' => $r->sparepart_tahun3,
        
                    'rata_rata_sparepart_perbulan' => $RataRataSparePartPerbulan,
        
                    'biaya_produksi_lain' => $TotalSemuaBiayaProduksilain,
                    'total_biaya_perbulan' => $TotalBiayaPenyusutanMaintenance,
                ];

                // foreach(array_merge((array)$r->data, $dtmesin->toArray()) as $idx => $val){
                        
                //     $LaborInstance = New Labor;

                //         $result_gaji_labor = [
                //             'company_parent_id' => $dtmesin->company_id,
                //             'category_bagian' => $dtmesin->category_bagian_id,
                //             'code_mesin' => $val,
                //             'shift' => $r->shift_labor,
                //             'supervisor' => $r->supervisor,
                //             'operator' => $r->operator,
                //             'helper' => $r->helper,
                //             'supporting' => $r->supporting,
                //             // 'supervisor_level3' => $biayasupervisor,
                //             // 'operator_level2' => $biayaoperator,
                //             // 'helper_level0' => $biayahelper,
                //             'support_level0' => 0,
                //             'jumlah_mesin_ditanggani' => count([$val]),
                //             // 'total_biaya' => $total_biaya_upah_perbulan,
                //         ];
                        
                //         $dt[] = [
                //             'company_parent_id' => $dtmesin->company_id,
                //             'category_bagian' => $dtmesin->category_bagian_id,
                //             'code_mesin' => $dtmesin->id,
                //             // 'code_mesin' => $r->code_mesin,
                //             'shift' => $r->shift_labor,
                //             'supervisor' => $r->supervisor,
                //             'operator' => $r->operator,
                //             'helper' => $r->helper,
                //             'supporting' => $r->supporting,
                //             // 'supervisor_level3' => $biayasupervisor,
                //             // 'operator_level2' => $biayaoperator,
                //             // 'helper_level0' => $biayahelper,
                //             'support_level0' => 0,
                //             'jumlah_mesin_ditanggani' => count([$val]),
                //             // 'total_biaya' => $total_biaya_upah_perbulan,
                //         ];

                //         $datas[] = [
                //             'updated_at' => Carbon::now(),
                //             'created_at' => Carbon::now(),
                //             'created_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                //             'company_id' =>  $dtmesin->company_id,
                //             'category_id' =>  $dtmesin->category_bagian_id,
                //             'code_mesin' => $dtmesin->id,
                //             'table_column' => 'labor.added.event',
                //             // 'history_latest' => ceil( $total_biaya_upah_perbulan),
                //             // 'before' => ceil($total_biaya_upah_perbulan),
                //         ];

                //         $index = 'code_mesin';
                
                //         \Batch::update($LaborInstance, $dt, $index);

                //     $simpanDataBiayaListrik = Labor::UpdateOrCreate(['code_mesin' => $dtmesin->id], $result_gaji_labor);
             
                    $simpanDataRpTMTC = RptMtc::create($data_response_rptmtc);

                // }

                //     $columns = [
                //         'updated_at',
                //         'created_at', 
                //         'created_by', 
                //         'company_id',
                //         'category_id',
                //         'code_mesin',
                //         'table_column',
                //         'history_latest',
                //         'before',
                //     ];

                // $LaborTotal = new LaborTotal;
                
                // $batchSize = 500;
                    
                // $result = \Batch::insert($LaborTotal, $columns, $datas, $batchSize);

                /**
                 * @data form MTC
                 */
                // $t = RptMtc::whereIn('company_parent_id', [3])->get();

                $columns = [
                    'updated_at',
                    'created_at', 
                    'created_by', 
                    'company_parent_id',
                    'categori_id',
                    'code_mesin',
                    'table_coloumn',
                    'history_latest',
                    'before',
                ];
                
                $datas[] = [
                    'updated_at' => Carbon::now(),
                    'created_at' => Carbon::now(),
                    'created_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                    'company_parent_id' => $dtmesin->company_id,
                    'categori_id' =>  $dtmesin->category_bagian_id,
                    'code_mesin' =>  $dtmesin->id,
                    'table_coloumn' => 'rpt_mtc.added.event',
                    'history_latest' => ceil($TotalBiayaPenyusutanMaintenance),
                    'before' => ceil($TotalBiayaPenyusutanMaintenance),
                ];
    
            $RPTMtcTotal = new RPTMtcTotal;
                
                $batchSize = 500;
                    
            $result = \Batch::insert($RPTMtcTotal, $columns, $datas, $batchSize);


            }
            
            Mesin::UpdateOrCreate(['code_mesin' => $dtmesin->code_mesin], $datamesin);

                return response()->json(
                    [
                        'isConfirmed' => $r->setTo["isConfirmed"],
                        'rumusTotalPenyusutan' => $rumusTotalPenyusutan,
                        //form labor
                        // 'set_default_mesin' => $r->jumlah_penangganan_mesin,
                        // 'spv' => $biayasupervisor,
                        // 'mesin' => count($r->data),
                        // 'opt' => $biayaoperator,
                        // 'help' => $biayahelper,
                        // 'total_biaya_levels' => $total_biaya_upah_perbulan,
                        //form mtc
                        // 'rata_rata_perbaikan_perbulan' => $simpanDataRpTMTC->rata_rata_perbaikan_perbulan,
                        // 'rata_rata_sparepart_perbulan' => $simpanDataRpTMTC->rata_rata_sparepart_perbulan,
                        // 'biaya_produksi_lain' => $simpanDataRpTMTC->biaya_produksi_lain,
                        // 'total_biaya_perbulan' => $simpanDataRpTMTC->total_biaya_perbulan,
                        'rata_rata_perbaikan_perbulan' => $RataRataPerbaikanPerbulan,
                        'rata_rata_sparepart_perbulan' => $RataRataSparePartPerbulan,
                        'biaya_produksi_lain' => $TotalSemuaBiayaProduksilain,
                        'total_biaya_perbulan' => $TotalBiayaPenyusutanMaintenance,
                    ]
                );
    
        }

            else {

                return response()->json(
                    [
                        'isDenied' => $r->setTo["isDenied"],
                        'rumusTotalPenyusutan' => $rumusTotalPenyusutan,
                        //form labor
                        // 'set_default_mesin' => $r->jumlah_penangganan_mesin,
                        // 'spv' => $biayasupervisor,
                        // 'isDenied' => $r->setTo["isDenied"],
                        // 'mesin' => count($r->data),
                        // 'opt' => $biayaoperator,
                        // 'help' => $biayahelper,
                        //form mtc
                        // 'total_biaya_levels' => $total_biaya_upah_perbulan,
                        'rata_rata_perbaikan_perbulan' => $RataRataPerbaikanPerbulan,
                        'rata_rata_sparepart_perbulan' => $RataRataSparePartPerbulan,
                        'biaya_produksi_lain' => $TotalSemuaBiayaProduksilain,
                        'total_biaya_perbulan' => $TotalBiayaPenyusutanMaintenance,
                    ]
            );
        }
    }

    public function formMachineAction(Request $request)
    {
        $company = Company::all();
        $group_mesin = Lb8KategoriMesin::all();
        $mesin = Mesin::all();
        $cbagian = KategoriBagian::all();
        $LsOutputPerjam = ListrikOutput::all();
        $LwbpMaster = LwbpMaster::all();
        $LocationMachine = LocationMachine::all();

        return view('vendor.voyager.mesin.form_machine', compact('LocationMachine','LwbpMaster','mesin','LsOutputPerjam','group_mesin','company','cbagian'));
    }

    public function show(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $isSoftDeleted = false;

        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            // Use withTrashed() if model uses SoftDeletes and if toggle is selected
            if ($model && in_array(SoftDeletes::class, class_uses_recursive($model))) {
                $model = $model->withTrashed();
            }
            if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope'.ucfirst($dataType->scope))) {
                $model = $model->{$dataType->scope}();
            }
            $dataTypeContent = call_user_func([$model, 'findOrFail'], $id);
            if ($dataTypeContent->deleted_at) {
                $isSoftDeleted = true;
            }
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('id', $id)->first();
        }

        // Replace relationships' keys for labels and create READ links if a slug is provided.
        $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType, true);

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'read');

        // Check permission
        $this->authorize('read', $dataTypeContent);

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        // Eagerload Relations
        $this->eagerLoadRelations($dataTypeContent, $dataType, 'read', $isModelTranslatable);

        $view = 'voyager::bread.read';

        if (view()->exists("voyager::$slug.read")) {
            $view = "voyager::$slug.read";
        }

        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable', 'isSoftDeleted'));
    }

    //***************************************
    //                ______
    //               |  ____|
    //               | |__
    //               |  __|
    //               | |____
    //               |______|
    //
    //  Edit an item of our Data Type BR(E)AD
    //
    //****************************************

    public function edit(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            // Use withTrashed() if model uses SoftDeletes and if toggle is selected
            if ($model && in_array(SoftDeletes::class, class_uses_recursive($model))) {
                $model = $model->withTrashed();
            }
            if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope'.ucfirst($dataType->scope))) {
                $model = $model->{$dataType->scope}();
            }
            $dataTypeContent = call_user_func([$model, 'findOrFail'], $id);
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('id', $id)->first();
        }

        foreach ($dataType->editRows as $key => $row) {
            $dataType->editRows[$key]['col_width'] = isset($row->details->width) ? $row->details->width : 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'edit');

        // Check permission
        $this->authorize('edit', $dataTypeContent);

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        // Eagerload Relations
        $this->eagerLoadRelations($dataTypeContent, $dataType, 'edit', $isModelTranslatable);

        $view = 'voyager::bread.edit-add';

        if (view()->exists("voyager::$slug.edit-add")) {
            $view = "voyager::$slug.edit-add";
        }

        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
    }

    // POST BR(E)AD
    public function update(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Compatibility with Model binding.
        $id = $id instanceof \Illuminate\Database\Eloquent\Model ? $id->{$id->getKeyName()} : $id;

        $model = app($dataType->model_name);
        if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope'.ucfirst($dataType->scope))) {
            $model = $model->{$dataType->scope}();
        }
        if ($model && in_array(SoftDeletes::class, class_uses_recursive($model))) {
            $data = $model->withTrashed()->findOrFail($id);
        } else {
            $data = $model->findOrFail($id);
        }
        
        $tb = app(Mesin::class)->getTable();
           
        $datamesin = [
            'ampere' => $request->ampere,
            'faktor_kali_lwbp' =>  $request->faktor_kali_lwbp,
            'faktor_kali_wbp' =>  $request->faktor_kali_wbp,
            'voltase' =>  $request->voltase,
            'deskripsi' =>  $request->deskripsi,
            'code_mesin' => $request->code_mesin,
            'asumsi_id' => $request->asumsi_id,
            'on_off' => $request->on_off,
            'group_mesin' => $request->group_mesin_id,
            'company_id' => $request->company_id,
            'category_bagian' => $request->category_bagian_id,
            'listrik_perjam_id' => $request->listrik_perjam_id,
            'capacity_mch' => $request->capacity_mch
            
        ];

        $md = ModulTrackingDataHelpers::ModuleTrackingTransactionData($tb, $data, $datamesin);

        foreach ($md as $key => $val) {

                $pf[] = [
                    'updated_at' => Carbon::now(),
                    'created_at' => Carbon::now(),
                    'changed_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                    'company_id' => $request->company_id,
                    'group_mesin' => $request->group_mesin_id,
                    'code_mesin' => $request->id,
                    'table_column' => $val['tabel_kolom'],
                    'history_latest' => $val['history'],
                    'before' => $val['dari'],
                    'history_group_mesin' => $val['history'],
                    'before_group_mesin' => $val['dari'],
                ];
                
            }
            
            $d = MesinTotal::insert($pf);

        // Check permission
        $this->authorize('edit', $data);

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->editRows, $dataType->name, $id)->validate();
        $this->insertUpdateData($request, $slug, $dataType->editRows, $data);

        event(new BreadDataUpdated($dataType, $data));

        if (auth()->user()->can('browse', app($dataType->model_name))) {
            $redirect = redirect()->route("voyager.{$dataType->slug}.index");
        } else {
            $redirect = redirect()->back();
        }

        return $redirect->with([
            'message'    => __('voyager::generic.successfully_updated')." {$dataType->getTranslatedAttribute('display_name_singular')}",
            'alert-type' => 'success',
        ]);
    }

    //***************************************
    //
    //                   /\
    //                  /  \
    //                 / /\ \
    //                / ____ \
    //               /_/    \_\
    //
    //
    // Add a new item of our Data Type BRE(A)D
    //
    //****************************************

    public function create(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        $dataTypeContent = (strlen($dataType->model_name) != 0)
                            ? new $dataType->model_name()
                            : false;

        foreach ($dataType->addRows as $key => $row) {
            $dataType->addRows[$key]['col_width'] = $row->details->width ?? 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'add');

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        // Eagerload Relations
        $this->eagerLoadRelations($dataTypeContent, $dataType, 'add', $isModelTranslatable);

        $view = 'voyager::bread.edit-add';

        if (view()->exists("voyager::$slug.edit-add")) {
            $view = "voyager::$slug.edit-add";
        }

        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
    }

    /**
     * POST BRE(A)D - Store data.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows)->validate();
        $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());

        event(new BreadDataAdded($dataType, $data));

        if (!$request->has('_tagging')) {
            if (auth()->user()->can('browse', $data)) {
                $redirect = redirect()->route("voyager.{$dataType->slug}.index");
            } else {
                $redirect = redirect()->back();
            }

            return $redirect->with([
                'message'    => __('voyager::generic.successfully_added_new')." {$dataType->getTranslatedAttribute('display_name_singular')}",
                'alert-type' => 'success',
            ]);
        } else {
            return response()->json(['success' => true, 'data' => $data]);
        }
    }

    //***************************************
    //                _____
    //               |  __ \
    //               | |  | |
    //               | |  | |
    //               | |__| |
    //               |_____/
    //
    //         Delete an item BREA(D)
    //
    //****************************************

    public function destroy(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Init array of IDs
        $ids = [];
        if (empty($id)) {
            // Bulk delete, get IDs from POST
            $ids = explode(',', $request->ids);
        } else {
            // Single item delete, get ID from URL
            $ids[] = $id;
        }
        foreach ($ids as $id) {
            $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);

            // listrik
            $dataListrik = call_user_func([$dataType->model_name, 'findOrFail'], $id);

            // penyusutan
            $dataPenyusutan = call_user_func([$dataType->model_name, 'findOrFail'], $id);

            // Rpt mtc
            $dataRptMtc = call_user_func([$dataType->model_name, 'findOrFail'], $id);

            // Labor
            $dataLabors = call_user_func([$dataType->model_name, 'findOrFail'], $id);

            // Check permission
            $this->authorize('delete', $data);

            $model = app($dataType->model_name);
            if (!($model && in_array(SoftDeletes::class, class_uses_recursive($model)))) {
                $this->cleanup($dataType, $data);
            }
        }

        $checklistrik = Listrik::all();

        foreach($checklistrik as $value){

            $mesin[] = $value->code_mesin;
            
            $r = in_array((Int)$mesin, $ids);
        }

        $merged = collect($ids)->map(function ($value) use ($mesin) {

            foreach($mesin as $array){
                if($value==$array){
                    $val = false;
                } else {
                    $val = true;
                }
            }
        
            return $val;
        });

        foreach($merged as $key_search){

            if($key_search == false){
                
                $displayName = count($ids) > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

                $dataListrik = [
                    'message'    => __('Maaf tidak bisa dihapus, karena mesin sudah melakukan transaksi di listrik'),
                    'alert-type' => 'error',
                ];
    
            } else if($key_search == true) {

                /**
                 * @Penyusutan
                 */
                $checkpenyusutan = Penyusutan::whereNull('ended_at')->get();

                foreach($checkpenyusutan as $pnystanloops){

                    $mesin_insteadof_penyusutan[] = $pnystanloops->code_mesin;
                    
                    $r = in_array((Int)$mesin_insteadof_penyusutan, $ids);
                }

                    $merge_insteadofpenyusutan = collect($ids)->map(function ($pnystanloops) use ($mesin_insteadof_penyusutan) {

                        foreach($mesin_insteadof_penyusutan as $array){
                            if($pnystanloops==$array){
                                $valpeny = false;
                            } else {
                                $valpeny = true;
                            }
                        }
                    
                        return $valpeny;
                    });

                    foreach($merge_insteadofpenyusutan as $key_search_mesin_insteadof_penyusutan){

                        if($key_search_mesin_insteadof_penyusutan == false){
                            
                            $displayName = count($ids) > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

                            $dataPenyusutan = [
                                'message'    => __('Maaf tidak bisa dihapus, karena mesin sudah melakukan transaksi dipenyusutan'),
                                'alert-type' => 'error',
                            ];
                
                        } else if($key_search_mesin_insteadof_penyusutan == true) {

                                /**
                                 * @RptMtc
                                 */
                                $checkRptMtc = RptMtc::all();

                                foreach($checkRptMtc as $vals_insteadofRptMtc){

                                    $mesin_insteadof_RotMtc[] = $vals_insteadofRptMtc->code_mesin;
                                    
                                    $r = in_array((Int)$mesin_insteadof_RotMtc, $ids);
                                }

                                $merge_insteadof_rpt_mtc = collect($ids)->map(function ($vals_insteadofRptMtc) use ($mesin_insteadof_RotMtc) {

                                    foreach($mesin_insteadof_RotMtc as $sssss){
                                        if((Int)$vals_insteadofRptMtc==$sssss){
                                            $rslt_rpt_mtc = false;
                                        } else {
                                            $rslt_rpt_mtc = true;
                                        }
                                    }
                                
                                    return $rslt_rpt_mtc;
                                });

                                foreach($merge_insteadof_rpt_mtc as $key_searchRpt_Mtc){

                                    if($key_searchRpt_Mtc == false){
                                        
                                        $displayName = count($ids) > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

                                        $dataRptMtc = [
                                            'message'    => __('Maaf tidak bisa dihapus, karena mesin sudah melakukan transaksi MTC'),
                                            'alert-type' => 'error',
                                        ];
                            
                                    } else if($key_searchRpt_Mtc == true) {

                                            /**
                                             * @Labors
                                             */
                                            $checkLabor = Labor::all();

                                            foreach($checkLabor as $vals_insteadofLabor){

                                                $mesin_insteadof_Labors[] = $vals_insteadofLabor->code_mesin;
                                                
                                                // $r = in_array((Int)$mesin_insteadof_Labors, $ids);
                                            }

                                            $merge_insteadof_Labor = collect($ids)->map(function ($mesin_labor) use ($mesin_insteadof_Labors) {

                                                foreach($mesin_insteadof_Labors as $blob_array){
                                                    if($mesin_labor==$blob_array){
                                                        $rstLabors = false;
                                                    } else {
                                                        $rstLabor = true;
                                                    }
                                                }
                                            
                                                return isset($rstLabors) ? $rstLabors : $rstLabor;
                                            });

                                            // dd($merge_insteadof_Labor);

                                            
                                            foreach($merge_insteadof_Labor as $s => $Keys_searchLabors){
                                                
                                                if($Keys_searchLabors == false){
                                                    
                                                    $displayName = count($ids) > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

                                                    $dataLabors = [
                                                        'message'    => __('Maaf tidak bisa dihapus, karena mesin sudah melakukan transaksi diLabor'),
                                                        'alert-type' => 'error',
                                                    ];
                                                    
                                                } else if($Keys_searchLabors == true) {

                                                    // app(VoyagerLaborController::class)->destroy($request, $ids);
                                                    $displayName = count($ids) > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

                                                    $resLabors = $dataLabors->destroy($ids);

                                                    $dataLabors = $resLabors
                                                        ? [
                                                            'message'    => __('voyager::generic.successfully_deleted')." {$displayName}",
                                                            'alert-type' => 'success',
                                                        ]
                                                        : [
                                                            'message'    => __('voyager::generic.error_deleting')." {$displayName}",
                                                            'alert-type' => 'error',
                                                        ];

                                                    if ($resLabors) {
                                                        event(new BreadDataDeleted($dataType, $dataLabors));
                                                    }

                                                }

                                            return redirect()->route("voyager.{$dataType->slug}.index")->with($dataLabors);

                                        }

                                    }

                                return redirect()->route("voyager.{$dataType->slug}.index")->with($dataRptMtc);

                            }

                        }

                    return redirect()->route("voyager.{$dataType->slug}.index")->with($dataPenyusutan);

                }

            }

            return redirect()->route("voyager.{$dataType->slug}.index")->with($dataListrik);

        }

    }

    public function restore(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('delete', app($dataType->model_name));

        // Get record
        $model = call_user_func([$dataType->model_name, 'withTrashed']);
        if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope'.ucfirst($dataType->scope))) {
            $model = $model->{$dataType->scope}();
        }
        $data = $model->findOrFail($id);

        $displayName = $dataType->getTranslatedAttribute('display_name_singular');

        $res = $data->restore($id);
        $data = $res
            ? [
                'message'    => __('voyager::generic.successfully_restored')." {$displayName}",
                'alert-type' => 'success',
            ]
            : [
                'message'    => __('voyager::generic.error_restoring')." {$displayName}",
                'alert-type' => 'error',
            ];

        if ($res) {
            event(new BreadDataRestored($dataType, $data));
        }

        return redirect()->route("voyager.{$dataType->slug}.index")->with($data);
    }

    //***************************************
    //
    //  Delete uploaded file
    //
    //****************************************

    public function remove_media(Request $request)
    {
        try {
            // GET THE SLUG, ex. 'posts', 'pages', etc.
            $slug = $request->get('slug');

            // GET file name
            $filename = $request->get('filename');

            // GET record id
            $id = $request->get('id');

            // GET field name
            $field = $request->get('field');

            // GET multi value
            $multi = $request->get('multi');

            $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

            // Load model and find record
            $model = app($dataType->model_name);
            $data = $model::find([$id])->first();

            // Check if field exists
            if (!isset($data->{$field})) {
                throw new Exception(__('voyager::generic.field_does_not_exist'), 400);
            }

            // Check permission
            $this->authorize('edit', $data);

            if (@json_decode($multi)) {
                // Check if valid json
                if (is_null(@json_decode($data->{$field}))) {
                    throw new Exception(__('voyager::json.invalid'), 500);
                }

                // Decode field value
                $fieldData = @json_decode($data->{$field}, true);
                $key = null;

                // Check if we're dealing with a nested array for the case of multiple files
                if (is_array($fieldData[0])) {
                    foreach ($fieldData as $index=>$file) {
                        // file type has a different structure than images
                        if (!empty($file['original_name'])) {
                            if ($file['original_name'] == $filename) {
                                $key = $index;
                                break;
                            }
                        } else {
                            $file = array_flip($file);
                            if (array_key_exists($filename, $file)) {
                                $key = $index;
                                break;
                            }
                        }
                    }
                } else {
                    $key = array_search($filename, $fieldData);
                }

                // Check if file was found in array
                if (is_null($key) || $key === false) {
                    throw new Exception(__('voyager::media.file_does_not_exist'), 400);
                }

                $fileToRemove = $fieldData[$key]['download_link'] ?? $fieldData[$key];

                // Remove file from array
                unset($fieldData[$key]);

                // Generate json and update field
                $data->{$field} = empty($fieldData) ? null : json_encode(array_values($fieldData));
            } else {
                if ($filename == $data->{$field}) {
                    $fileToRemove = $data->{$field};

                    $data->{$field} = null;
                } else {
                    throw new Exception(__('voyager::media.file_does_not_exist'), 400);
                }
            }

            $row = $dataType->rows->where('field', $field)->first();

            // Remove file from filesystem
            if (in_array($row->type, ['image', 'multiple_images'])) {
                $this->deleteBreadImages($data, [$row], $fileToRemove);
            } else {
                $this->deleteFileIfExists($fileToRemove);
            }

            $data->save();

            return response()->json([
                'data' => [
                    'status'  => 200,
                    'message' => __('voyager::media.file_removed'),
                ],
            ]);
        } catch (Exception $e) {
            $code = 500;
            $message = __('voyager::generic.internal_error');

            if ($e->getCode()) {
                $code = $e->getCode();
            }

            if ($e->getMessage()) {
                $message = $e->getMessage();
            }

            return response()->json([
                'data' => [
                    'status'  => $code,
                    'message' => $message,
                ],
            ], $code);
        }
    }

    /**
     * Remove translations, images and files related to a BREAD item.
     *
     * @param \Illuminate\Database\Eloquent\Model $dataType
     * @param \Illuminate\Database\Eloquent\Model $data
     *
     * @return void
     */
    protected function cleanup($dataType, $data)
    {
        // Delete Translations, if present
        if (is_bread_translatable($data)) {
            $data->deleteAttributeTranslations($data->getTranslatableAttributes());
        }

        // Delete Images
        $this->deleteBreadImages($data, $dataType->deleteRows->whereIn('type', ['image', 'multiple_images']));

        // Delete Files
        foreach ($dataType->deleteRows->where('type', 'file') as $row) {
            if (isset($data->{$row->field})) {
                foreach (json_decode($data->{$row->field}) as $file) {
                    $this->deleteFileIfExists($file->download_link);
                }
            }
        }

        // Delete media-picker files
        $dataType->rows->where('type', 'media_picker')->where('details.delete_files', true)->each(function ($row) use ($data) {
            $content = $data->{$row->field};
            if (isset($content)) {
                if (!is_array($content)) {
                    $content = json_decode($content);
                }
                if (is_array($content)) {
                    foreach ($content as $file) {
                        $this->deleteFileIfExists($file);
                    }
                } else {
                    $this->deleteFileIfExists($content);
                }
            }
        });
    }

    /**
     * Delete all images related to a BREAD item.
     *
     * @param \Illuminate\Database\Eloquent\Model $data
     * @param \Illuminate\Database\Eloquent\Model $rows
     *
     * @return void
     */
    public function deleteBreadImages($data, $rows, $single_image = null)
    {
        $imagesDeleted = false;

        foreach ($rows as $row) {
            if ($row->type == 'multiple_images') {
                $images_to_remove = json_decode($data->getOriginal($row->field), true) ?? [];
            } else {
                $images_to_remove = [$data->getOriginal($row->field)];
            }

            foreach ($images_to_remove as $image) {
                // Remove only $single_image if we are removing from bread edit
                if ($image != config('voyager.user.default_avatar') && (is_null($single_image) || $single_image == $image)) {
                    $this->deleteFileIfExists($image);
                    $imagesDeleted = true;

                    if (isset($row->details->thumbnails)) {
                        foreach ($row->details->thumbnails as $thumbnail) {
                            $ext = explode('.', $image);
                            $extension = '.'.$ext[count($ext) - 1];

                            $path = str_replace($extension, '', $image);

                            $thumb_name = $thumbnail->name;

                            $this->deleteFileIfExists($path.'-'.$thumb_name.$extension);
                        }
                    }
                }
            }
        }

        if ($imagesDeleted) {
            event(new BreadImagesDeleted($data, $rows));
        }
    }

    /**
     * Order BREAD items.
     *
     * @param string $table
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function order(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('edit', app($dataType->model_name));

        if (!isset($dataType->order_column) || !isset($dataType->order_display_column)) {
            return redirect()
            ->route("voyager.{$dataType->slug}.index")
            ->with([
                'message'    => __('voyager::bread.ordering_not_set'),
                'alert-type' => 'error',
            ]);
        }

        $model = app($dataType->model_name);
        if ($model && in_array(SoftDeletes::class, class_uses_recursive($model))) {
            $model = $model->withTrashed();
        }
        $results = $model->orderBy($dataType->order_column, $dataType->order_direction)->get();

        $display_column = $dataType->order_display_column;

        $dataRow = Voyager::model('DataRow')->whereDataTypeId($dataType->id)->whereField($display_column)->first();

        $view = 'voyager::bread.order';

        if (view()->exists("voyager::$slug.order")) {
            $view = "voyager::$slug.order";
        }

        return Voyager::view($view, compact(
            'dataType',
            'display_column',
            'dataRow',
            'results'
        ));
    }

    public function update_order(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('edit', app($dataType->model_name));

        $model = app($dataType->model_name);

        $order = json_decode($request->input('order'));
        $column = $dataType->order_column;
        foreach ($order as $key => $item) {
            if ($model && in_array(SoftDeletes::class, class_uses_recursive($model))) {
                $i = $model->withTrashed()->findOrFail($item->id);
            } else {
                $i = $model->findOrFail($item->id);
            }
            $i->$column = ($key + 1);
            $i->save();
        }
    }

    public function action(Request $request)
    {
        $slug = $this->getSlug($request);
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $action = new $request->action($dataType, null);

        return $action->massAction(explode(',', $request->ids), $request->headers->get('referer'));
    }

    /**
     * Get BREAD relations data.
     *
     * @param Request $request
     *
     * @return mixed
     */
    public function relation(Request $request)
    {
        $slug = $this->getSlug($request);
        $page = $request->input('page');
        $on_page = 50;
        $search = $request->input('search', false);
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $method = $request->input('method', 'add');

        $model = app($dataType->model_name);
        if ($method != 'add') {
            $model = $model->find($request->input('id'));
        }

        $this->authorize($method, $model);

        $rows = $dataType->{$method.'Rows'};
        foreach ($rows as $key => $row) {
            if ($row->field === $request->input('type')) {
                $options = $row->details;
                $model = app($options->model);
                $skip = $on_page * ($page - 1);

                $additional_attributes = $model->additional_attributes ?? [];

                // Apply local scope if it is defined in the relationship-options
                if (isset($options->scope) && $options->scope != '' && method_exists($model, 'scope'.ucfirst($options->scope))) {
                    $model = $model->{$options->scope}();
                }

                // If search query, use LIKE to filter results depending on field label
                if ($search) {
                    // If we are using additional_attribute as label
                    if (in_array($options->label, $additional_attributes)) {
                        $relationshipOptions = $model->all();
                        $relationshipOptions = $relationshipOptions->filter(function ($model) use ($search, $options) {
                            return stripos($model->{$options->label}, $search) !== false;
                        });
                        $total_count = $relationshipOptions->count();
                        $relationshipOptions = $relationshipOptions->forPage($page, $on_page);
                    } else {
                        $total_count = $model->where($options->label, 'LIKE', '%'.$search.'%')->count();
                        $relationshipOptions = $model->take($on_page)->skip($skip)
                            ->where($options->label, 'LIKE', '%'.$search.'%')
                            ->get();
                    }
                } else {
                    $total_count = $model->count();
                    $relationshipOptions = $model->take($on_page)->skip($skip)->get();
                }

                $results = [];

                if (!$row->required && !$search && $page == 1) {
                    $results[] = [
                        'id'   => '',
                        'text' => __('voyager::generic.none'),
                    ];
                }

                // Sort results
                if (!empty($options->sort->field)) {
                    if (!empty($options->sort->direction) && strtolower($options->sort->direction) == 'desc') {
                        $relationshipOptions = $relationshipOptions->sortByDesc($options->sort->field);
                    } else {
                        $relationshipOptions = $relationshipOptions->sortBy($options->sort->field);
                    }
                }

                foreach ($relationshipOptions as $relationshipOption) {
                    $results[] = [
                        'id'   => $relationshipOption->{$options->key},
                        'text' => $relationshipOption->{$options->label},
                    ];
                }

                return response()->json([
                    'results'    => $results,
                    'pagination' => [
                        'more' => ($total_count > ($skip + $on_page)),
                    ],
                ]);
            }
        }

        // No result found, return empty array
        return response()->json([], 404);
    }
    
}

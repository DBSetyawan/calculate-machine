<?php

namespace App\Http\Controllers\KOP;

use App\Labor;
use App\Mesin;
use Exception;
use App\Company;
use App\Listrik;
use Carbon\Carbon;
use App\LaborTotal;
use App\SpecialLabor;
use App\AllRecalculate;
use App\KategoriBagian;
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
use TCG\Voyager\Database\Schema\SchemaManager;
use App\Http\Controllers\KOP\Helpers\RumusLabor;
use App\Http\Controllers\KOP\Service\LaborInterface;
use App\Http\Controllers\KOP\Helpers\ModulTrackingDataHelpers;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as BaseVoyagerBaseController;

class VoyagerLaborController extends BaseVoyagerBaseController Implements LaborInterface
{

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

    public function HitungAkumulasiLabor(Request $r){

        try
            {

            /**
             * Hitung Biaya Level
             * @method RumusBiayaGajiUpahSupervisor, RumusBiayaGajiUpahOperator, RumusBiayaGajiUpahHelper
             *
             * Total biaya level Supervisor
             */
            // $biayasupervisor = $this->RumusBiayaGajiUpahSupervisor($r->shift, (Int) $r->jml_mesin_mch, $r->code_mesin);
            $biayasupervisor = $this->RumusBiayaGajiUpahSupervisor($r->shift, count($r->data), $r->code_mesin);
            
            /**
             * Total biaya level Operator
             */
            $biayaoperator = $this->RumusBiayaGajiUpahOperator($r->shift, $r->operator);
            
            /**
             * Total biaya level helper
             */
            $biayahelper = $this->RumusBiayaGajiUpahHelper($r->shift, $r->helper);

            /**
             * Total biaya labor
             */
            $total_biaya_upah_perbulan = $this->RumusTotalBiayaLabor($biayasupervisor, $biayaoperator, $biayahelper);

                if($r->setTo["isConfirmed"] == "true"){

                    foreach((array)$r->data as $idx => $val){
                        
                        $LaborInstance = New Labor;

                        $lbrmachine[$idx] = $val;

                            $result_gaji_labor = [
                                'company_parent_id' => $r->company_parent_id,
                                'category_bagian' => $r->category_bagian,
                                'code_mesin' => $val,
                                'grp_id' => $r->jml_mesin_mch,
                                // 'code_mesin' => $r->code_mesin,
                                'shift' => $r->shift,
                                'supervisor' => $r->supervisor,
                                'operator' => $r->operator,
                                'helper' => $r->helper,
                                'supporting' => $r->supporting,
                                'supervisor_level3' => $biayasupervisor,
                                'operator_level2' => $biayaoperator,
                                'helper_level0' => $biayahelper,
                                'support_level0' => 0,
                                'jumlah_mesin_ditanggani' => count([$val]),
                                'total_biaya' => $total_biaya_upah_perbulan,
                            ];
                            
                            $merge_event_machine = [
                                'grp_id' => $r->jml_mesin_mch,
                                'shift' => $r->shift,
                                'supervisor' => $r->supervisor,
                                'operator' => $r->operator,
                                'helper' => $r->helper,
                                'supporting' => $r->supporting,
                                'supervisor_level3' => $biayasupervisor,
                                'operator_level2' => $biayaoperator,
                                'helper_level0' => $biayahelper,
                                'support_level0' => 0,
                                'total_biaya' => $total_biaya_upah_perbulan,
                            ];

                            $merge_event_machine_closed = [
                                'shift' => $r->shift,
                                'grp_id' => $r->jml_mesin_mch,
                                'company_parent_id' => $r->company_parent_id,
                                'supervisor' => $r->supervisor,
                                'operator' => $r->operator,
                                'helper' => $r->helper,
                                'supporting' => $r->supporting,
                                'supervisor_level3' => $biayasupervisor,
                                'operator_level2' => $biayaoperator,
                                'helper_level0' => $biayahelper,
                                'support_level0' => 0,
                                'total_biaya' => $total_biaya_upah_perbulan,
                            ];
                            
                            $dt[] = [
                                'company_parent_id' => $r->company_parent_id,
                                'grp_id' => $r->jml_mesin_mch,
                                'category_bagian' => $r->category_bagian,
                                'code_mesin' => $val,
                                // 'code_mesin' => $r->code_mesin,
                                'shift' => $r->shift,
                                'supervisor' => $r->supervisor,
                                'operator' => $r->operator,
                                'helper' => $r->helper,
                                'supporting' => $r->supporting,
                                'supervisor_level3' => $biayasupervisor,
                                'operator_level2' => $biayaoperator,
                                'helper_level0' => $biayahelper,
                                'support_level0' => 0,
                                'jumlah_mesin_ditanggani' => count([$val]),
                                'total_biaya' => $total_biaya_upah_perbulan,
                            ];

                            $datas[] = [
                                'updated_at' => Carbon::now(),
                                'created_at' => Carbon::now(),
                                'created_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                                'company_id' => $r->company_parent_id,
                                'category_id' => $r->category_bagian,
                                'code_mesin' => $val,
                                'table_column' => 'labor.added.event',
                                'history_latest' => ceil( $total_biaya_upah_perbulan),
                                'before' => ceil($total_biaya_upah_perbulan),
                            ];

                            $index = 'code_mesin';

                            // \Batch::update($LaborInstance, $dt, $index);

                        }

                        /**
                         * @flow, ketika transaksi close.. ingin menambahkan mesin yang sebelumnya pernah dibuat. tapi dengan status transaksinya close. can create or update ?
                         */
                        $datacheckclosemachinesame = Labor::where('code_mesin', $lbrmachine)->whereNotNull('ended_at')->first();
                        $datacheckclosemachinesamechecked = Labor::where('code_mesin', $lbrmachine)->whereNull('ended_at')->first();

                        $users = Labor::whereIn('code_mesin', [$lbrmachine])->whereNotNull('ended_at')->get();

                        foreach ($users as $user) {
                            $datanotnull[] = $user->ended_at;
                            $code_mesins[] = $user->code_mesin;
                            $category_bagian_ids[] = $user->category_bagian_id;
                        }

                                if(isset($datanotnull)){

                                    for($floops = 0; $floops < count([$lbrmachine]); $floops++){
                                        

                                        $fgd[$floops] = $lbrmachine;
                                        
                                    }
                                    $checkmesin_msnsds[] = Mesin::whereIn('id', $fgd[0])->get();
                                    $checkmachine_ifnull[] = Labor::whereIn('id', $fgd[0])->whereNull('ended_at')->get();
                                    
                                        foreach($checkmesin_msnsds as $fh){
                                            foreach($fh as $d => $gjh){
                                                foreach($checkmachine_ifnull as $d => $fbl){
                                                    if($fbl->isEmpty()){
                                                            
                                                        $simpanDataBiayaListriksx = Labor::whereNull('ended_at')->updateOrCreate(['code_mesin' => $gjh->id ], array_merge($merge_event_machine_closed, ['category_bagian' => $gjh->category_bagian_id ], ['code_mesin' => $gjh->id ], ['jumlah_mesin_ditanggani' => count([ $gjh->id ]) ]));
                                                        // $simpanDataBiayaListriksx = Labor::firstOrCreate(array_merge($merge_event_machine_closed, ['category_bagian' => $gjh->category_bagian_id ], ['code_mesin' => $gjh->id ], ['jumlah_mesin_ditanggani' => count([ $gjh->id ]) ]));
                                                        // Labor::where(['code_mesin' => $gjh->id ])->update(['category_bagian' => $gjh->category_bagian_id ]);
                                                        // $simpanDataBiayaListriksx->category_bagian =$gjh->category_bagian_id;
                                                        // $simpanDataBiayaListriksx->save();
                                                    } 
                                                        else {
                                                            
                                                            if(count([$fbl]) > 0){

                                                            $simpanDataBiayaListriksx = Labor::whereNull('ended_at')->updateOrCreate(['code_mesin' => $code_mesins], array_merge($merge_event_machine_closed, ['jumlah_mesin_ditanggani' => count([ $gjh->id ]) ]));
                                                            Labor::where(['code_mesin' => $gjh->id ])->update(['category_bagian' => $gjh->category_bagian_id ]);
                                                        } 
                                                    }
                                                }
                                            }
                                        }

                                    return response()->json(
                                        [
                                            'set_default_mesin' => 0,
                                            'spv' => $simpanDataBiayaListriksx->supervisor_level3,
                                            'opt' => $simpanDataBiayaListriksx->operator_level2,
                                            'help' => $biayahelper,
                                            'is_tr_conn' => __('event_update'),
                                            'mesin' => count($r->data),
                                            'isConfirmed' => $r->setTo["isConfirmed"],
                                            'total_biaya_levels' => $total_biaya_upah_perbulan,
                                        ]
                                    );

                                } else {
                                    
                                    for($floops = 0; $floops < count([$lbrmachine]); $floops++){
                                        

                                        $fg[$floops] = $lbrmachine;
                                        
                                    }
                                    
                                    $checkmesin_msnss[] = Mesin::whereIn('id', $fg[0])->get();
                                    
                                        foreach($checkmesin_msnss as $fh){
                                            foreach($fh as $gjh){
                                                
                                                // $simpanDataBiayaListriksx = Labor::updateOrCreate(array_merge($merge_event_machine_closed, ['code_mesin' => $gjh->id ], ['jumlah_mesin_ditanggani' => count([ $gjh->id ]) ]) );
                                                $simpanDataBiayaListriksx = Labor::updateOrCreate(['code_mesin' => $gjh->id ], array_merge($merge_event_machine_closed, ['category_bagian' => $gjh->category_bagian_id], ['jumlah_mesin_ditanggani' => count([ $gjh->id ]) ]));

                                            }
                                        }
                                    
                                    // \Batch::update($LaborInstance, $dt, $index);

                                    // Labor::where(['code_mesin' => $val ])->whereNull('ended_at')->update(['category_bagian' => $r->category_bagian ]);
                                        return response()->json(
                                                [
                                                    'set_default_mesin' => 0,
                                                    'spv' => $simpanDataBiayaListriksx->supervisor_level3,
                                                    'opt' => $simpanDataBiayaListriksx->operator_level2,
                                                    'help' => $biayahelper,
                                                    'is_tr_conn' => __('ccv'),
                                                    'mesin' => count($r->data),
                                                    'isConfirmed' => $r->setTo["isConfirmed"],
                                                    'total_biaya_levels' => $total_biaya_upah_perbulan,
                                                ]
                                        );

                                    // $simpanDataBiayaListriksx = Labor::create($result_gaji_labor);

                                }
                            // if(is_null($datacheckclosemachinesame)){

                            //     /**
                            //      * @Module logically automatically update machine with category
                            //      */
                            //     for($floops = 0; $floops < count([$lbrmachine]); $floops++){
                                            

                            //         $fg[$floops] = $lbrmachine;
                                    
                            //     }
                                
                            //     $checkmesin_msnss[] = Mesin::whereIn('id', $fg[0])->get();
                            //         foreach($checkmesin_msnss as $fh){
                            //             foreach($fh as $gjh){

                            //                 $databns = Labor::whereIn('code_mesin', [$lbrmachine])->whereNull('ended_at')->get();

                            //                 foreach($databns as $rty){
                            //                     Labor::whereNull('ended_at')->updateOrCreate(['code_mesin' => [$rty->code_mesin] ], $merge_event_machine_closed);
                            //                 }
                            //                 // $triggerEventChanged = Labor::where(['code_mesin' => $gjh->id ])->update(['category_bagian' => $gjh->category_bagian_id]);
                            //             }
                                
                            //         }

                            //     return response()->json(
                            //             [
                            //                 'set_default_mesin' => $r->jumlah_penangganan_mesin,
                            //                 'spv' => $simpanDataBiayaListriksx->supervisor_level3,
                            //                 'opt' => $simpanDataBiayaListriksx->operator_level2,
                            //                 'help' => $biayahelper,
                            //                 'is_tr_conn' => __('dx'),
                            //                 'mesin' => count($r->data),
                            //                 'isConfirmed' => $r->setTo["isConfirmed"],
                            //                 'total_biaya_levels' => $total_biaya_upah_perbulan,
                            //             ]
                            //         );

                            //     } 
                                

                                // if($datacheckclosemachinesame){

                                    // if(!is_null($datacheckclosemachinesamechecked)){

                                    //     /**
                                    //      * @Module logically automatically update machine with category
                                    //      */
                                    //     for($floops = 0; $floops < count([$lbrmachine]); $floops++){
                                            

                                    //         $fg[$floops] = $lbrmachine;
                                            
                                    //     }
                                        
                                    //     $checkmesin_msnss[] = Mesin::whereIn('id', $fg[0])->get();
                                    //         foreach($checkmesin_msnss as $fh){
                                    //             foreach($fh as $gjh){

                                    //                 $databn = Labor::whereIn('code_mesin', [$lbrmachine])->whereNull('ended_at')->get();

                                    //                 foreach($databn as $rty){
                                    //                     Labor::whereNull('ended_at')->updateOrCreate(['code_mesin' => [$rty->code_mesin] ], $merge_event_machine_closed);
                                    //                 }

                                    //             }
                                        
                                    //         }

                                    //         return response()->json(
                                    //             [
                                    //                 'set_default_mesin' => $r->jumlah_penangganan_mesin,
                                    //                 'spv' => $simpanDataBiayaListriksx->supervisor_level3,
                                    //                 'opt' => $simpanDataBiayaListriksx->operator_level2,
                                    //                 'help' => $biayahelper,
                                    //                 'is_tr_conn' => __('xc'),
                                    //                 'mesin' => count($r->data),
                                    //                 'isConfirmed' => $r->setTo["isConfirmed"],
                                    //                 'total_biaya_levels' => $total_biaya_upah_perbulan,
                                    //             ]
                                    //         );
                                    //     } 
                                            // else {

                                                    /**
                                                     * @Module logically automatically update machine with category
                                                     */
                                            //             for($floops = 0; $floops < count([$lbrmachine]); $floops++){
                                            

                                            //                 $fg[$floops] = $lbrmachine;
                                                            
                                            //             }
                                                        
                                            //             $checkmesin_msnss[] = Mesin::whereIn('id', $fg[0])->get();
                                            //                 foreach($checkmesin_msnss as $fh){
                                            //                     foreach($fh as $gjh){

                                            //                         if(! is_null($datacheckclosemachinesame)){
                                            //                             $dataghb = Labor::whereIn('code_mesin', [$lbrmachine])->whereNull('ended_at')->get();

                                            //                             foreach($dataghb as $rty){
                                            //                                 // Labor::whereNull('ended_at')->updateOrCreate(['code_mesin' => [$rty->code_mesin] ], $merge_event_machine_closed);
                                            //                             Labor::whereNotNull('ended_at')->create(array_merge($merge_event_machine_closed, ['code_mesin' => $rty->id ], ['category_bagian' => $rty->category_bagian_id], ['jumlah_mesin_ditanggani' => count([ $rty->id ]) ]) );
                                            //                         // //    $df = Labor::whereNull('ended_at')->firstOrCreate(array_merge($merge_event_machine_closed, ['code_mesin' => $gjh->id ], ['category_bagian' => $gjh->category_bagian_id], ['jumlah_mesin_ditanggani' => count([ $gjh->id ]) ]) );
                                            //                         // //    Labor::where(['code_mesin' => $df->id ])->whereNull('ended_at')->update(['category_bagian' => $df->category_bagian_id ]);
                                            //                         // $user = Labor::firstOrCreate(array_merge($merge_event_machine_closed, ['code_mesin' => $gjh->id ], ['category_bagian' => $gjh->category_bagian_id], ['jumlah_mesin_ditanggani' => count([ $gjh->id ]) ]));
                                            //                         // Labor::where(['code_mesin' => $gjh->id ])->whereNull('ended_at')->update(['category_bagian' => $gjh->category_bagian_id ]);
                                                                    
                                            //                         //    $msg = "one";
                                            //                               }
                                                                    
                                            //                         } else {

                                            //                             $databng = Labor::whereIn('code_mesin', [$lbrmachine])->whereNull('ended_at')->get();

                                            //                             foreach($databng as $rty){
                                            //                                 Labor::whereNull('ended_at')->updateOrCreate(['code_mesin' => [$rty->code_mesin] ], $merge_event_machine_closed);
                                            //                             }
                                                                    
                                            //                         }

                                            //                     }
                                                        
                                            //                 }

                                            //     return response()->json(
                                            //         [
                                            //             'set_default_mesin' => 0,
                                            //             'spv' => $simpanDataBiayaListriksx->supervisor_level3,
                                            //             'opt' => $simpanDataBiayaListriksx->operator_level2,
                                            //             'help' => $biayahelper,
                                            //             'msg' => $msg,
                                            //             'is_tr_conn' => __('ccv'),
                                            //             'mesin' => count($r->data),
                                            //             'isConfirmed' => $r->setTo["isConfirmed"],
                                            //             'total_biaya_levels' => $total_biaya_upah_perbulan,
                                            //         ]
                                            // );
                                    // }
                            // }

                        $columns = [
                            'updated_at',
                            'created_at', 
                            'created_by', 
                            'company_id',
                            'category_id',
                            'code_mesin',
                            'table_column',
                            'history_latest',
                            'before',
                        ];

                    $LaborTotal = new LaborTotal;
                    
                $batchSize = 500;
                        
            $result = \Batch::insert($LaborTotal, $columns, $datas, $batchSize);
       
        } else {
            
                return response()->json(
                    [
                        'set_default_mesin' => $r->jumlah_penangganan_mesin,
                        'spv' => $biayasupervisor,
                        'isDenied' => $r->setTo["isDenied"],
                        'mesin' => count($r->data),
                        'opt' => $biayaoperator,
                        'help' => $biayahelper,
                        'total_biaya_levels' => $total_biaya_upah_perbulan,
                    ]
                );
                
            }

        } catch (Exception $e) {
            $code = 500;
            $message = __('voyager::generic.internal_error');

            if ($e->getMessage()) {
                $message = $e->getMessage();
            }

            return response()->json([
                'data' => [
                    'status'  => $code,
                    'message' => $message,
                    'line' => $e->getLine(),
                ],
            ], $code);
        }

    }
    
    public function formLaborAction(Request $request)
    {
        $company = Company::all();
        $mesin = Mesin::all();
        $cbagian = KategoriBagian::all();
        $specialabor = SpecialLabor::all();
        $Lb8KategoriMesin = Lb8KategoriMesin::all();
        $listrikShift = Listrik::with('Mesin')->whereNull('ended_at')->get();

        return view('vendor.voyager.labor.form_labor', compact('specialabor','company','mesin','cbagian','Lb8KategoriMesin','listrikShift'));
    }
 
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

        $specialabor = SpecialLabor::all();

        return Voyager::view($view, compact('specialabor','dataType', 'dataTypeContent', 'isModelTranslatable'));
    }

    // POST BR(E)AD
    public function update(Request $request, $id)
    {

        // dd($request->all());
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
            // DB::table('total_kalkulasi_tanpa_penyusutan')
            // ->where('labor', $data->total_biaya)
            // ->update(array('labor' => $request->total_biaya)); 
        }

        // Check permission
        $this->authorize('edit', $data);

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->editRows, $dataType->name, $id)->validate();
        // $this->insertUpdateData($request, $slug, $dataType->editRows, $data);

        // event(new BreadDataUpdated($dataType, $data));

        /**
         * Hitung Biaya Level
         * @method RumusBiayaGajiUpahSupervisor, RumusBiayaGajiUpahOperator, RumusBiayaGajiUpahHelper
         *
         * Total biaya level Supervisor
         */
        // progress deploy
        $aplbr = SpecialLabor::findOrFail($request->jml_mesin_mch);
        $jumlah_mesin = count([$aplbr->group_machine]);

        $biayasupervisor = $this->RumusBiayaGajiUpahSupervisor($request->shift, $jumlah_mesin, $request->code_mesin);
        
        /**
         * Total biaya level Operator
         */
        $biayaoperator = $this->RumusBiayaGajiUpahOperator($request->shift, $request->operator);
         
        /**
         * Total biaya level helper
         */
        $biayahelper = $this->RumusBiayaGajiUpahHelper($request->shift, $request->helper);

        /**
         * Total biaya labor
         */
        $total_biaya_upah_perbulan = $this->RumusTotalBiayaLabor($biayasupervisor, $biayaoperator, $biayahelper);

        $result_gaji_labor = [
            'company_parent_id' => $request->company_parent_id,
            'shift' => $request->shift,
            'code_mesin' => $request->code_mesin,
            'category_bagian' => $request->category_bagian,
            'supervisor' => $request->supervisor,
            'operator' => $request->operator,
            'helper' => $request->helper,
            'supporting' => $request->supporting,
            'supervisor_level3' => $biayasupervisor,
            'operator_level2' => $biayaoperator,
            'helper_level0' => $biayahelper,
            'support_level0' => 0,
            'total_biaya' => $total_biaya_upah_perbulan,
        ];

        Labor::updateOrCreate(['id'=>$id], $result_gaji_labor);

        $lbrttl = Labor::whereNull('ended_at')->get();
        $AllRecalculateInstance = new AllRecalculate;

        foreach($lbrttl as $indexs => $data_lbr){

        /**
         * Hitung Biaya Level
         * @method RumusBiayaGajiUpahSupervisor, RumusBiayaGajiUpahOperator, RumusBiayaGajiUpahHelper
         *
         * Total biaya level Supervisor
         */
        $biayasupervisor = $this->RumusBiayaGajiUpahSupervisor($data_lbr->shift, $data_lbr->jumlah_mesin_ditanggani, $data_lbr->code_mesin);
        
        /**
         * Total biaya level Operator
         */
        $biayaoperator = $this->RumusBiayaGajiUpahOperator($data_lbr->shift, $data_lbr->operator);
         
        /**
         * Total biaya level helper
         */
        $biayahelper = $this->RumusBiayaGajiUpahHelper($data_lbr->shift, $data_lbr->helper);

        /**
         * Total biaya labor
         */
        $total_biaya_upah_perbulan = $this->RumusTotalBiayaLabor($biayasupervisor, $biayaoperator, $biayahelper);

            $dlbr[] = [
                'code_mesin' => $data_lbr->code_mesin,
                'id_labor' => $total_biaya_upah_perbulan
            ];

                $code_mesin = 'code_mesin';

            \Batch::update($AllRecalculateInstance, $dlbr, $code_mesin);

        }

        $tb = app(Labor::class)->getTable();

        $md = ModulTrackingDataHelpers::ModuleTrackingTransactionData($tb, $data, $result_gaji_labor);

        foreach ($md as $key => $val) {

                $pf[] = [
                    'updated_at' => Carbon::now(),
                    'company_id' => $request->company_parent_id,
                    'category_id' => $request->category_bagian,
                    'code_mesin' => $request->code_mesin,
                    'changed_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                    'table_column' => $val['tabel_kolom'],
                    'history_latest' => ceil($val['history']),
                    'before' => ceil($val['dari']),
                ];
                
            }
        
        $d = LaborTotal::insert($pf);

        if (auth()->user()->can('browse', app($dataType->model_name))) {
            $redirect = redirect()->route("voyager.{$dataType->slug}.index");
        } else {
            $redirect = redirect()->back();
        }

        // $mesin = isset(Mesin::findOrFail($data->code_mesin)->code_mesin) ? Mesin::findOrFail($data->code_mesin)->code_mesin : "mesin tidak diketahui";

        return $redirect->with([
            'message'    => __('voyager::generic.successfully_updated')." {$dataType->getTranslatedAttribute('display_name_singular')}"."Silahkan mengakumulasi ulang biaya persen cost perbulan.",
            'alert-type' => 'success',
        ]);
    }


    public function reakumulasilabor(Request $request)
    {
        /**
         * Hitung Biaya Level
         * @method RumusBiayaGajiUpahSupervisor, RumusBiayaGajiUpahOperator, RumusBiayaGajiUpahHelper
         *
         * Total biaya level Supervisor
         */
        // progress deploy
        $aplbr = Labor::findOrFail($request->lbrid);
        $jumlah_mesin = count($request->data);

        // dd($request->lbrid);
        $biayasupervisor = $this->RumusBiayaGajiUpahSupervisor($request->shift, $jumlah_mesin, $request->code_mesin);
        
        /**
         * Total biaya level Operator
         */
        $biayaoperator = $this->RumusBiayaGajiUpahOperator($request->shift, $request->operator);
         
        /**
         * Total biaya level helper
         */
        $biayahelper = $this->RumusBiayaGajiUpahHelper($request->shift, $request->helper);

        /**
         * Total biaya labor
         */
        $total_biaya_upah_perbulan = $this->RumusTotalBiayaLabor($biayasupervisor, $biayaoperator, $biayahelper);

        $result_gaji_labor = [
            'company_parent_id' => $request->company_parent_id,
            'shift' => $request->shift,
            'code_mesin' => $request->code_mesin,
            'category_bagian' => $request->category_bagian,
            'supervisor' => $request->supervisor,
            'operator' => $request->operator,
            'helper' => $request->helper,
            'supporting' => $request->supporting,
            'supervisor_level3' => $biayasupervisor,
            'operator_level2' => $biayaoperator,
            'helper_level0' => $biayahelper,
            'support_level0' => 0,
            'total_biaya' => $total_biaya_upah_perbulan,
        ];

        $data = [
            'company_parent_id' => $aplbr->company_parent_id,
            'shift' => $aplbr->shift,
            'code_mesin' => $aplbr->code_mesin,
            'category_bagian' => $aplbr->category_bagian,
            'supervisor' => $aplbr->supervisor,
            'operator' => $aplbr->operator,
            'helper' => $aplbr->helper,
            'supporting' => $aplbr->supporting,
            'supervisor_level3' => $aplbr->supervisor_level3,
            'operator_level2' => $aplbr->operator_level2,
            'helper_level0' => $aplbr->helper_level0,
            'support_level0' => $aplbr->support_level0,
            'total_biaya' => $aplbr->total_biaya
        ];

        Labor::whereIn('id', [$request->lbrid])->update($result_gaji_labor);

        $lbrttl = Labor::whereNull('ended_at')->get();
        $AllRecalculateInstance = new AllRecalculate;

        foreach($lbrttl as $indexs => $data_lbr){

        /**
         * Hitung Biaya Level
         * @method RumusBiayaGajiUpahSupervisor, RumusBiayaGajiUpahOperator, RumusBiayaGajiUpahHelper
         *
         * Total biaya level Supervisor
         */
        $biayasupervisor = $this->RumusBiayaGajiUpahSupervisor($data_lbr->shift, $data_lbr->jumlah_mesin_ditanggani, $data_lbr->code_mesin);
        
        /**
         * Total biaya level Operator
         */
        $biayaoperator = $this->RumusBiayaGajiUpahOperator($data_lbr->shift, $data_lbr->operator);
         
        /**
         * Total biaya level helper
         */
        $biayahelper = $this->RumusBiayaGajiUpahHelper($data_lbr->shift, $data_lbr->helper);

        /**
         * Total biaya labor
         */
        $total_biaya_upah_perbulan = $this->RumusTotalBiayaLabor($biayasupervisor, $biayaoperator, $biayahelper);

            $dlbr[] = [
                'code_mesin' => $data_lbr->code_mesin,
                'id_labor' => $total_biaya_upah_perbulan
            ];

                $code_mesin = 'code_mesin';

            \Batch::update($AllRecalculateInstance, $dlbr, $code_mesin);

        }

        $tb = app(Labor::class)->getTable();

        $md = ModulTrackingDataHelpers::ModuleTrackingTransactionData($tb, $data, $result_gaji_labor);

        foreach ($md as $key => $val) {

                $pf[] = [
                    'updated_at' => Carbon::now(),
                    'company_id' => $request->company_parent_id,
                    'category_id' => $request->category_bagian,
                    'code_mesin' => $request->code_mesin,
                    'changed_by' => isset(Auth::user()->name) ? Auth::user()->name : "User ini belum me set name.",
                    'table_column' => $val['tabel_kolom'],
                    'history_latest' => ceil($val['history']),
                    'before' => ceil($val['dari']),
                ];
                
            }
        
        LaborTotal::insert($pf);

        return response()->json([
            'set_default_mesin' => 0,
            'spv' => $biayasupervisor,
            'opt' => $biayaoperator,
            'help' => $biayahelper,
            'mesin' => count($request->data),
            'isConfirmed' => $request->setTo["isConfirmed"],
            'total_biaya_levels' => $total_biaya_upah_perbulan,
            'alertype' => 'success',
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

            // Check permission
            $this->authorize('delete', $data);

            $model = app($dataType->model_name);
            if (!($model && in_array(SoftDeletes::class, class_uses_recursive($model)))) {
                $this->cleanup($dataType, $data);
            }
        }

        $displayName = count($ids) > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

        $res = $data->destroy($ids);
        $data = $res
            ? [
                'message'    => __('voyager::generic.successfully_deleted')." {$displayName}",
                'alert-type' => 'success',
            ]
            : [
                'message'    => __('voyager::generic.error_deleting')." {$displayName}",
                'alert-type' => 'error',
            ];

        if ($res) {
            event(new BreadDataDeleted($dataType, $data));
        }

        return redirect()->route("voyager.{$dataType->slug}.index")->with($data);
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

@extends('voyager::master')
@inject('listrik','App\Listrik')
@section('page_title', __('voyager::generic.viewing').' '.$dataType->getTranslatedAttribute('display_name_plural'))
@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="{{ $dataType->icon }}"></i> {{ $dataType->getTranslatedAttribute('display_name_plural') }}
        </h1>
        @can('add', app($dataType->model_name))
            {{-- <a href="{{ route('voyager.'.$dataType->slug.'.create') }}" class="btn btn-success btn-add-new">
                <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }}</span>
            </a> --}}
        @endcan
        <a href="{{ route('listriks.form.master') }}" class="btn btn-success btn-add-new">
            <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }} Listrik</span>
        </a>
        @php
                        
        $total_listrik = $listrik->whereIn('company_parent_id', [3])->get();

            $persen = collect([$total_listrik])->sum(function ($prsttl){

                $ttlpr = $prsttl->sum('persen_cost_perbulan');
                    if(is_null($ttlpr)){
                        $x = 0.0001;
                    } else {
                        $x = $ttlpr;
                    }
                        if ($x == 0) return 0;

                        $rounded = round($x, 2);
                        $minValue = 0.0001;

                        if ($rounded < $minValue) {
                            $prs = number_format($minValue, 0);
                        } else {
                            $prs = number_format($rounded * 100, 0);
                        }
                        return $prs;
                });

            $cost_lstrkperbulan = collect([$total_listrik])->sum(function ($region){
                    return sprintf("%.5f", $region->sum('nilai_cost_bulan'));
                });

                $chckt = $total_listrik->map(function ($region){
                    return $region->ncost_bulan_plus_adm;
                });

                $fetchdata = isset($chckt) ? $chckt : [];

            $totalPPJ = ( ($cost_lstrkperbulan) + ($cost_lstrkperbulan*0.03) + 6000 );

            $totalcostadm = collect([$total_listrik])->sum(function ($region){
                    return sprintf("%.5f", $region->sum('ncost_bulan_plus_adm'));
                });

        @endphp
        @can('delete', app($dataType->model_name))
            @include('voyager::partials.bulk-delete')
        @endcan
        @can('edit', app($dataType->model_name))
            @if(isset($dataType->order_column) && isset($dataType->order_display_column))
                <a href="{{ route('voyager.'.$dataType->slug.'.order') }}" class="btn btn-primary btn-add-new">
                    <i class="voyager-list"></i> <span>{{ __('voyager::bread.order') }}</span>
                </a>
            @endif
        @endcan
        @can('delete', app($dataType->model_name))
            @if($usesSoftDeletes)
                <input type="checkbox" @if ($showSoftDeleted) checked @endif id="show_soft_deletes" data-toggle="toggle" data-on="{{ __('voyager::bread.soft_deletes_off') }}" data-off="{{ __('voyager::bread.soft_deletes_on') }}">
            @endif
        @endcan
        @foreach($actions as $action)
            @if (method_exists($action, 'massAction'))
                @include('voyager::bread.partials.actions', ['action' => $action, 'data' => null])
            @endif
        @endforeach
        @include('voyager::multilingual.language-selector')
    </div>
@stop

@section('content')
    <div class="page-content browse container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        @if ($isServerSide)
                            <form method="get" class="form-search">
                                <div id="search-input">
                                    <div class="col-2">
                                        <select id="search_key" name="key">
                                            @foreach($searchNames as $key => $name)
                                                <option value="{{ $key }}" @if($search->key == $key || (empty($search->key) && $key == $defaultSearchKey)) selected @endif>{{ $name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-2">
                                        <select id="filter" name="filter">
                                            <option value="contains" @if($search->filter == "contains") selected @endif>contains</option>
                                            <option value="equals" @if($search->filter == "equals") selected @endif>=</option>
                                        </select>
                                    </div>
                                    <div class="input-group col-md-12">
                                        <input type="text" class="form-control" placeholder="{{ __('voyager::generic.search') }}" name="s" value="{{ $search->value }}">
                                        <span class="input-group-btn">
                                            <button class="btn btn-info btn-lg" type="submit">
                                                <i class="voyager-search"></i>
                                            </button>
                                        </span>
                                    </div>
                                </div>
                                @if (Request::has('sort_order') && Request::has('order_by'))
                                    <input type="hidden" name="sort_order" value="{{ Request::get('sort_order') }}">
                                    <input type="hidden" name="order_by" value="{{ Request::get('order_by') }}">
                                @endif
                            </form>
                        @endif
                        <div class="alert alert-warning" role="alert"> <i class="voyager-info-circled"></i> <span >Pastikan terlebih dahulu dokumen biaya akumulasi listrik sudah sesuai, sebelum mentransfer data ke temporary KOP kalkulasi mesin.</div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                  <h3 class="panel-title">KOP Kalkulasi mesin perhitungan listrik & transfer dokumen temporary:</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="float-right"> <a class="btn btn-success btn-small" id="RecalALLdocument">
                                        <i class="voyager-refresh"></i> <span class="protip"
                                        data-pt-position="left"
                                        data-pt-gravity="false"
                                        data-pt-title="Fungsi ini untuk mengakumulasi ulang biaya % & cost + ADM"
                                        data-pt-trigger="hover"
                                        data-pt-size="normal"
                                        data-pt-scheme="leaf"
                                        data-pt-offset-left="1">{{ __('Kalkulasi % cost & cost + ADM') }}</span>
                                    </a></div><br><br/>
                                    <div class="float-right">   <a class="btn btn-small btn-info" id="RecalTemporaryRecalculate">
                                        <i class="voyager-documentation"></i> <i class="voyager-forward"></i> <span class="protip"
                                        data-pt-position="left"
                                        data-pt-gravity="false"
                                        data-pt-title="Fungsi ini untuk mentransfer dokumen ke temporary KOP kalkulasi mesin."
                                        data-pt-trigger="hover"
                                        data-pt-size="normal"
                                        data-pt-scheme="leaf"
                                        data-pt-offset-left="1">{{ __('Transfer dokumen') }}</span>
                                    </a></div><br>
                                </div>
                              </div>
                              <div class="float-right">
                                  <div id='loading'>
                                  </div>
                              </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table id="dataTable" class="table table-hover">
                                <thead>
                                    <tr>
                                        @if($showCheckboxColumn)
                                            <th class="dt-not-orderable">
                                                <input type="checkbox" class="select_all">
                                            </th>
                                        @endif
                                        @foreach($dataType->browseRows as $row)
                                        <th>
                                            @if ($isServerSide && $row->type !== 'relationship')
                                                <a href="{{ $row->sortByUrl($orderBy, $sortOrder) }}">
                                            @endif
                                            {{ $row->getTranslatedAttribute('display_name') }}
                                            @if ($isServerSide)
                                                @if ($row->isCurrentSortField($orderBy))
                                                    @if ($sortOrder == 'asc')
                                                        <i class="voyager-angle-up pull-right"></i>
                                                    @else
                                                        <i class="voyager-angle-down pull-right"></i>
                                                    @endif
                                                @endif
                                                </a>
                                            @endif
                                        </th>
                                        @endforeach
                                        <th class="actions text-right dt-not-orderable">{{ __('voyager::generic.actions') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($dataTypeContent as $data)
                                    <tr>
                                        @if($showCheckboxColumn)
                                            <td>
                                                <input type="checkbox" name="row_id" id="checkbox_{{ $data->getKey() }}" value="{{ $data->getKey() }}">
                                            </td>
                                        @endif
                                        @foreach($dataType->browseRows as $row)
                                            @php
                                            if ($data->{$row->field.'_browse'}) {
                                                $data->{$row->field} = $data->{$row->field.'_browse'};
                                            }
                                            @endphp
                                            <td>
                                                @if (isset($row->details->view))
                                                    @include($row->details->view, ['row' => $row, 'dataType' => $dataType, 'dataTypeContent' => $dataTypeContent, 'content' => $data->{$row->field}, 'action' => 'browse', 'view' => 'browse', 'options' => $row->details])
                                                @elseif($row->type == 'image')
                                                    <img src="@if( !filter_var($data->{$row->field}, FILTER_VALIDATE_URL)){{ Voyager::image( $data->{$row->field} ) }}@else{{ $data->{$row->field} }}@endif" style="width:100px">
                                                @elseif($row->type == 'relationship')
                                                    @include('voyager::formfields.relationship', ['view' => 'browse','options' => $row->details])
                                                @elseif($row->type == 'select_multiple')
                                                    @if(property_exists($row->details, 'relationship'))

                                                        @foreach($data->{$row->field} as $item)
                                                            {{ $item->{$row->field} }}
                                                        @endforeach

                                                    @elseif(property_exists($row->details, 'options'))
                                                        @if (!empty(json_decode($data->{$row->field})))
                                                            @foreach(json_decode($data->{$row->field}) as $item)
                                                                @if (@$row->details->options->{$item})
                                                                    {{ $row->details->options->{$item} . (!$loop->last ? ', ' : '') }}
                                                                @endif
                                                            @endforeach
                                                        @else
                                                            {{ __('voyager::generic.none') }}
                                                        @endif
                                                    @endif

                                                    @elseif($row->type == 'multiple_checkbox' && property_exists($row->details, 'options'))
                                                        @if (@count(json_decode($data->{$row->field})) > 0)
                                                            @foreach(json_decode($data->{$row->field}) as $item)
                                                                @if (@$row->details->options->{$item})
                                                                    {{ $row->details->options->{$item} . (!$loop->last ? ', ' : '') }}
                                                                @endif
                                                            @endforeach
                                                        @else
                                                            {{ __('voyager::generic.none') }}
                                                        @endif

                                                @elseif(($row->type == 'select_dropdown' || $row->type == 'radio_btn') && property_exists($row->details, 'options'))

                                                    {!! $row->details->options->{$data->{$row->field}} ?? '' !!}

                                                @elseif($row->type == 'date' || $row->type == 'timestamp')
                                                    @if ( property_exists($row->details, 'format') && !is_null($data->{$row->field}) )
                                                        {{ \Carbon\Carbon::parse($data->{$row->field})->formatLocalized($row->details->format) }}
                                                    @else
                                                        {{ $data->{$row->field} }}
                                                    @endif
                                                @elseif($row->type == 'checkbox')
                                                    @if(property_exists($row->details, 'on') && property_exists($row->details, 'off'))
                                                        @if($data->{$row->field})
                                                            <span class="label label-info">{{ $row->details->on }}</span>
                                                        @else
                                                            <span class="label label-primary">{{ $row->details->off }}</span>
                                                        @endif
                                                    @else
                                                    {{ $data->{$row->field} }}
                                                    @endif
                                                @elseif($row->type == 'color')
                                                    <span class="badge badge-lg" style="background-color: {{ $data->{$row->field} }}">{{ $data->{$row->field} }}</span>
                                                @elseif($row->type == 'text')
                                                    @include('voyager::multilingual.input-hidden-bread-browse')
                                                    <div>{{ mb_strlen( $data->{$row->field} ) > 200 ? mb_substr($data->{$row->field}, 0, 200) . ' ...' : $data->{$row->field} }}</div>
                                                @elseif($row->type == 'text_area')
                                                    @include('voyager::multilingual.input-hidden-bread-browse')
                                                    <div>{{ mb_strlen( $data->{$row->field} ) > 200 ? mb_substr($data->{$row->field}, 0, 200) . ' ...' : $data->{$row->field} }}</div>
                                                @elseif($row->type == 'file' && !empty($data->{$row->field}) )
                                                    @include('voyager::multilingual.input-hidden-bread-browse')
                                                    @if(json_decode($data->{$row->field}) !== null)
                                                        @foreach(json_decode($data->{$row->field}) as $file)
                                                            <a href="{{ Storage::disk(config('voyager.storage.disk'))->url($file->download_link) ?: '' }}" target="_blank">
                                                                {{ $file->original_name ?: '' }}
                                                            </a>
                                                            <br/>
                                                        @endforeach
                                                    @else
                                                        <a href="{{ Storage::disk(config('voyager.storage.disk'))->url($data->{$row->field}) }}" target="_blank">
                                                            Download
                                                        </a>
                                                    @endif
                                                @elseif($row->type == 'rich_text_box')
                                                    @include('voyager::multilingual.input-hidden-bread-browse')
                                                    <div>{{ mb_strlen( strip_tags($data->{$row->field}, '<b><i><u>') ) > 200 ? mb_substr(strip_tags($data->{$row->field}, '<b><i><u>'), 0, 200) . ' ...' : strip_tags($data->{$row->field}, '<b><i><u>') }}</div>
                                                @elseif($row->type == 'coordinates')
                                                    @include('voyager::partials.coordinates-static-image')
                                                @elseif($row->type == 'multiple_images')
                                                    @php $images = json_decode($data->{$row->field}); @endphp
                                                    @if($images)
                                                        @php $images = array_slice($images, 0, 3); @endphp
                                                        @foreach($images as $image)
                                                            <img src="@if( !filter_var($image, FILTER_VALIDATE_URL)){{ Voyager::image( $image ) }}@else{{ $image }}@endif" style="width:50px">
                                                        @endforeach
                                                    @endif
                                                @elseif($row->type == 'media_picker')
                                                    @php
                                                        if (is_array($data->{$row->field})) {
                                                            $files = $data->{$row->field};
                                                        } else {
                                                            $files = json_decode($data->{$row->field});
                                                        }
                                                    @endphp
                                                    @if ($files)
                                                        @if (property_exists($row->details, 'show_as_images') && $row->details->show_as_images)
                                                            @foreach (array_slice($files, 0, 3) as $file)
                                                            <img src="@if( !filter_var($file, FILTER_VALIDATE_URL)){{ Voyager::image( $file ) }}@else{{ $file }}@endif" style="width:50px">
                                                            @endforeach
                                                        @else
                                                            <ul>
                                                            @foreach (array_slice($files, 0, 3) as $file)
                                                                <li>{{ $file }}</li>
                                                            @endforeach
                                                            </ul>
                                                        @endif
                                                        @if (count($files) > 3)
                                                            {{ __('voyager::media.files_more', ['count' => (count($files) - 3)]) }}
                                                        @endif
                                                    @elseif (is_array($files) && count($files) == 0)
                                                        {{ trans_choice('voyager::media.files', 0) }}
                                                    @elseif ($data->{$row->field} != '')
                                                        @if (property_exists($row->details, 'show_as_images') && $row->details->show_as_images)
                                                            <img src="@if( !filter_var($data->{$row->field}, FILTER_VALIDATE_URL)){{ Voyager::image( $data->{$row->field} ) }}@else{{ $data->{$row->field} }}@endif" style="width:50px">
                                                        @else
                                                            {{ $data->{$row->field} }}
                                                        @endif
                                                    @else
                                                        {{ trans_choice('voyager::media.files', 0) }}
                                                    @endif
                                                @else
                                                    @include('voyager::multilingual.input-hidden-bread-browse')
                                                    <span>{{ $data->{$row->field} }}</span>
                                                    @if ($row->display_name == 'TOTAL LISTRIK')
                                                        <span>{{ "Rp " . number_format($data->total_biaya_listrik,0,',','.') }}</span>
                                                    @endif
                                                    @if ($row->display_name == 'NILAI COST/BLN + BIAYA ADM')
                                                        <span>{{ "Rp " . number_format($data->ncost_bulan_plus_adm,0,',','.') }}</span>
                                                    @endif
                                                    @if ($row->display_name == 'NILAI COST/BLN')
                                                        <span>{{ "Rp " . number_format($data->nilai_cost_bulan,0,',','.') }}</span>
                                                    @endif
                                                    @php
                                                    // dd($data->persen_cost_perbulan);

                                                    
                                                    if(is_null($data->persen_cost_perbulan)){
                                                        $x = 0.0001;
                                                    } else {
                                                        $x = $data->persen_cost_perbulan;
                                                    }
                                                     if ($x == 0) return 0;

                                                        $rounded = round($x, 2);
                                                        $minValue = 0.0001;

                                                        
                                                        if ($rounded < $minValue) {
                                                            $dd=  number_format($minValue, 0);
                                                        } else {
                                                            $dd = number_format($rounded * 100, 0);
                                                        }
                                                        
                                                    @endphp
                                                    @if ($row->display_name == '%')
                                                        <span>{{ $dd . '%' }}</span>
                                                    @endif
                                                @endif
                                            </td>
                                        @endforeach
                                        <td class="no-sort no-click bread-actions">
                                            @foreach($actions as $action)
                                                @if (!method_exists($action, 'massAction'))
                                                    @include('voyager::bread.partials.actions', ['action' => $action])
                                                @endif
                                            @endforeach
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        @if ($isServerSide && isset($dataType->server_side) && $dataType->server_side)
                            <div class="pull-left">
                                <div role="status" class="show-res" aria-live="polite">{{ trans_choice(
                                    'voyager::generic.showing_entries', $dataTypeContent->total(), [
                                        'from' => $dataTypeContent->firstItem(),
                                        'to' => $dataTypeContent->lastItem(),
                                        'all' => $dataTypeContent->total()
                                    ]) }}</div>
                            </div>
                            <div class="pull-right">
                                {{-- {{dd($sortOrder)}} --}}
                                {{ $dataTypeContent->appends([
                                    's' => $search->value,
                                    'filter' => $search->filter,
                                    'key' => $search->key,
                                    'order_by' => $orderBy,
                                    'sort_order' => $sortOrder,
                                    'showSoftDeleted' => $showSoftDeleted,
                                ])->links() }}
                            </div>
                        </div>
                        @endif
                        <br/>
                        <div class="panel panel-bordered">
                            <div class="panel-body">
                                <div class="pull-left">
                                    <div class="col-2">
                                        <label for="total PPJ" class="badge badge-success">Total semua % cost :</label> <span class="">{{$persen}} %</span>
                                    </div>
                                    <div class="col-2">
                                        <label for="total PPJ" class="badge badge-success">Total cost + ADM :</label> <span class="">Rp {{number_format($totalcostadm, 0, ".", ".")}}</span>
                                    </div>
                                    <div class="col-2">
                                        <label for="total PPJ" class="badge badge-success">Total semua cost perbulannya :</label> <span class="">Rp {{number_format($cost_lstrkperbulan, 0, ".", ".")}}</span>
                                    </div>
                                    <div class="col-2">
                                        <label for="total PPJ" class="badge badge-success">Total PPJ :</label> <span class="">Rp {{number_format($totalPPJ, 0, ".", ".")}}</span>
                                        <code>
                                            seluruh total cost perbulan*(seluruh total cost perbulan * 0.03(3%)) + MATERAI 3000
                                        </code>
                                    </div>
                                    <div class="col-2">
                                        {{-- <label for="total PPJ" class="badge badge-success"></label> <span class="">Rp {{number_format($totalcostadm, 0, ".", ".")}}</span> --}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- Single delete modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> {{ __('voyager::generic.delete_question') }} {{ strtolower($dataType->getTranslatedAttribute('display_name_singular')) }}?</h4>
                </div>
                <div class="modal-footer">
                    <form action="#" id="delete_form" method="POST">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm" value="{{ __('voyager::generic.delete_confirm') }}">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop

@section('css')
@if(!$dataType->server_side && config('dashboard.data_tables.responsive'))
    <link rel="stylesheet" href="{{ voyager_asset('lib/css/responsive.dataTables.min.css') }}">
@endif
@stop

@section('javascript')
    <!-- DataTables -->
    @if(!$dataType->server_side && config('dashboard.data_tables.responsive'))
        <script src="{{ voyager_asset('lib/js/dataTables.responsive.min.js') }}"></script>
    @endif
    <script>

    function isEmpty(obj) {
        for(var prop in obj) {
            if(obj.hasOwnProperty(prop))
                return false;
        }

        return true;
    }
        let cost = @json($fetchdata)
      
        if(isEmpty(cost)){
            
            $('#RecalTemporaryRecalculate').hide();
            $('#RecalALLdocument').hide();

        } 
            else {

                    for (var i = 0; i < cost.length; i++) {
                        
                        if(cost[i] == null){
                                $('#RecalTemporaryRecalculate').hide()
                            break;            
                        }
                            else{

                                $('#RecalTemporaryRecalculate').show();
                                $('#RecalALLdocument').show();

                        }

                    };

        }
            var timeout;

            function LoadingRecalculate() {
                $('#loading').html('<img style="width:24px" src="{{ asset("public/spinning-arrows.gif")}}"/>');
                clearTimeout(timeout);
            }

            function LoadingTransfersTempKOPmachine() {
                $('#loading').html('<img style="width:30px" src="{{ asset("public/circles-menu-1.gif")}}"/>');
                clearTimeout(timeout);
            }

        $('#RecalTemporaryRecalculate').on('click', function(e) {

            Swal.fire({
                title: 'Informasi',
                text: "Apakah anda ingin melanjutkan, aksi ini akan mentransfer seluruh dokumen ini ke KOP kalkulasi mesin?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Transfer dokumen sekarang',
                cancelButtonText: 'Batalkan'
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire(
                    'Informasi',
                    'Data anda sedang diproses, tunggu sebentar..',
                    'warning'
                    );
                    
                LoadingTransfersTempKOPmachine();

                setTimeout(() => {
                        $("#RecalTemporaryRecalculate").html('Sedang ditransfer ke KOP kalkulasi mesin');
                    }, 1000);
                    
                    sendTemporaryCalculates(true).then(function(res){

                        // console.log(res.checking)

                        if(res.success.totalRows !== 0 && (res.success.totalRows !== undefined) && (res.success.totalRows !== null) && (res.success.totalRows !== "")){

                            const success = Swal.mixin({
                                toast: true,
                                position: 'top-end',
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                                didOpen: (toast) => {
                                    $("#loading").hide();
                                    toast.addEventListener('mouseenter', Swal.stopTimer)
                                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                                }
                            })

                            success.fire({
                                icon: 'success',
                                title: 'Informasi, semua dokumen listrik berhasil ditransfer ke temporary recalculate.\n keterangan detail transfer dokumen:\n total dokumen: '+res.success.totalRows+'\n hasil pencarian data event: '+res.success.totalQuery+'\n batasan yang diperbolehkan untuk transfer: '+res.success.totalBatch +' dokumen mesin',
                            });

                            $("#RecalTemporaryRecalculate").html('<i class="voyager-documentation"></i> <i class="voyager-forward"></i> Transfer dokumen');

                            let curr = '{{ route("voyager.all-recalculate.index") }}';
                            setTimeout(function(){ 
                                window.location.href = curr;
                            }, 5000);

                        }

                    });

                }
            })
         
        });

        $('#RecalALLdocument').on('click', function(e) {

            Swal.fire({
                title: 'Informasi',
                text: "Apakah anda ingin melanjutkan, aksi ini akan merekalkulasi seluruh dokumen ini?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Rekalkulasi biaya',
                cancelButtonText: 'Batalkan'
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire(
                    'Informasi',
                    'Data anda sedang diproses, tunggu sebentar..',
                    'warning'
                    );

            LoadingRecalculate();
                setTimeout(() => {
                     $("#RecalALLdocument").text("Sedang diakumulasikan..");
                }, 1000);
                
                recalculate_modules(true).then(function(res){

                    if(res.success == 1){

                        const success = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 3000,
                            timerProgressBar: true,
                            didOpen: (toast) => {
                                $("#loading").hide();
                                toast.addEventListener('mouseenter', Swal.stopTimer)
                                toast.addEventListener('mouseleave', Swal.resumeTimer)
                            }
                        })

                        success.fire({
                            icon: 'success',
                            title: 'Informasi, % cost perbulan | cost perbulan + ADM, telah diakumulasikan.'
                        });

                        // $("#RecalALLdocument").html('<i class="voyager-refresh"></i> Kalkulasi % cost & cost + ADM');
                        $("#RecalALLdocument").html('<i class="voyager-refresh"></i> Kalkulasi % cost & cost + ADM');

                        let curr = '{{ route("voyager.listrik.index") }}';
                        setTimeout(function(){ 

                                window.location.href = curr;
                            }, 5000);

                        }

                    });
                }
            });
        });

        async function recalculate_modules(mesinid
                ) {
                            let datamesinid = {
                                    mesinid:mesinid
                                }
                        const apiDataMesin = "{{ route('voyager.listrik.recalculate.all_recalculate') }}";
                                
                            const settings = {
                                        method: 'POST',
                                        headers: {
                                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                                            'Content-Type': 'application/json;charset=utf-8'
                                            },
                                        body: JSON.stringify(datamesinid)
                                }
                        try {
                                
                                const fetchResponse = await fetch(`${apiDataMesin}`, settings);
                                const data = await fetchResponse.json();
                                return data;
                            } catch (error) {
                            return JSON.parse(error)
                            }    
                    }

            async function sendTemporaryCalculates(mesinid
                ) {
                            let datatemp = {
                                    mesinid:mesinid
                                }

                        const apiDataMesin = "{{ route('voyager.listrik.recalculate.temporary.recall.all') }}";
                                
                            const settings = {
                                        method: 'POST',
                                        headers: {
                                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                                            'Content-Type': 'application/json;charset=utf-8'
                                            },
                                        body: JSON.stringify(datatemp)
                                }
                        try {
                                
                                const fetchResponse = await fetch(`${apiDataMesin}`, settings);
                                const data = await fetchResponse.json();
                                return data;
                            } catch (error) {
                                return JSON.parse(error)
                            }    
                    }
        $(document).ready(function () {
            @if (!$dataType->server_side)
                var table = $('#dataTable').DataTable({!! json_encode(
                    array_merge([
                        "order" => $orderColumn,
                        "language" => __('voyager::datatable'),
                        "columnDefs" => [
                            ['targets' => 'dt-not-orderable', 'searchable' =>  false, 'orderable' => false],
                        ],
                    ],
                    config('voyager.dashboard.data_tables', []))
                , true) !!});
            @else
                $('#search-input select').select2({
                    minimumResultsForSearch: Infinity
                });
            @endif

            @if ($isModelTranslatable)
                $('.side-body').multilingual();
                //Reinitialise the multilingual features when they change tab
                $('#dataTable').on('draw.dt', function(){
                    $('.side-body').data('multilingual').init();
                })
            @endif
            $('.select_all').on('click', function(e) {
                $('input[name="row_id"]').prop('checked', $(this).prop('checked')).trigger('change');
            });
        });

        var deleteFormAction;
        $('td').on('click', '.delete', function (e) {
            $('#delete_form')[0].action = '{{ route('voyager.'.$dataType->slug.'.destroy', '__id') }}'.replace('__id', $(this).data('id'));
            $('#delete_modal').modal('show');
        });

        @if($usesSoftDeletes)
            @php
                $params = [
                    's' => $search->value,
                    'filter' => $search->filter,
                    'key' => $search->key,
                    'order_by' => $orderBy,
                    'sort_order' => $sortOrder,
                ];
            @endphp
            $(function() {
                $('#show_soft_deletes').change(function() {
                    if ($(this).prop('checked')) {
                        $('#dataTable').before('<a id="redir" href="{{ (route('voyager.'.$dataType->slug.'.index', array_merge($params, ['showSoftDeleted' => 1]), true)) }}"></a>');
                    }else{
                        $('#dataTable').before('<a id="redir" href="{{ (route('voyager.'.$dataType->slug.'.index', array_merge($params, ['showSoftDeleted' => 0]), true)) }}"></a>');
                    }

                    $('#redir')[0].click();
                })
            })
        @endif
        $('input[name="row_id"]').on('change', function () {
            var ids = [];
            $('input[name="row_id"]').each(function() {
                if ($(this).is(':checked')) {
                    ids.push($(this).val());
                }
            });
            $('.selected_ids').val(ids);
        });
    </script>
@stop

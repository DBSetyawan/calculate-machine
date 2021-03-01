@extends('voyager::master')

@section('page_title', __('voyager::generic.viewing').' '.$dataType->getTranslatedAttribute('display_name_plural'))
@inject('laporangajilain','App\LaporanGajiLain')
@php
    $laporangajilain_bagianREPRO = $laporangajilain->whereIn('category_bagian', [9])->get();
    // ->pluck('tahun1')->dd();
    // tahun2018
    // #REPRO
    $REPRO = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
            return $REPRO->sum('tahun1');
        });

    // tahun2019
    $REPRO__ = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
            return $REPRO->sum('tahun2');
        });

    // tahun2020
    $REPRO___ = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
        return $REPRO->sum('tahun3');
    });

    $totalREPRO = collect([$laporangajilain_bagianREPRO])->sum(function ($REPRO){
        return $REPRO->sum('total_biaya_laporan_periode');
    });

    // #POTONG
    $laporanbPOTONG = $laporangajilain->whereIn('category_bagian', [1])->get();
    // ->pluck('tahun1')->dd();
    // tahun2018
    $potong = collect([$laporanbPOTONG])->sum(function ($potong){
            return $potong->sum('tahun1');
        });

    // tahun2019
    $Potong_ = collect([$laporanbPOTONG])->sum(function ($potong){
            return $potong->sum('tahun2');
        });

    // tahun2020
    $Potong__ = collect([$laporanbPOTONG])->sum(function ($potong){
        return $potong->sum('tahun3');
    });

    $Totalbpotong_ = collect([$laporanbPOTONG])->sum(function ($potong){
        return $potong->sum('total_biaya_laporan_periode');
    });

    // #CETAK
    $laporanCETAK = $laporangajilain->whereIn('category_bagian', [2])->get();
    // ->pluck('tahun1')->dd();
    // tahun2018
    $cetak = collect([$laporanCETAK])->sum(function ($cetak){
            return $cetak->sum('tahun1');
        });

    // tahun2019
    $Cetak_ = collect([$laporanCETAK])->sum(function ($cetak){
            return $cetak->sum('tahun2');
        });

    // tahun2020
    $Cetak__ = collect([$laporanCETAK])->sum(function ($cetak){
        return $cetak->sum('tahun3');
    });

    $LaporanCetak_ = collect([$laporanCETAK])->sum(function ($cetak){
        return $cetak->sum('total_biaya_laporan_periode');
    });

    // #PLONG
    $laporanPLONG = $laporangajilain->whereIn('category_bagian', [4])->get();
    // ->pluck('tahun1')->dd();
    // tahun2018
    $plong = collect([$laporanPLONG])->sum(function ($plong){
            return $plong->sum('tahun1');
        });

    // tahun2019
    $Plong_ = collect([$laporanPLONG])->sum(function ($plong){
            return $plong->sum('tahun2');
        });

    // tahun2020
    $Plong__ = collect([$laporanPLONG])->sum(function ($plong){
        return $plong->sum('tahun3');
    });

    $LaporanPlong_ = collect([$laporanPLONG])->sum(function ($plong){
        return $plong->sum('total_biaya_laporan_periode');
    });

     // #FINISHING
     $laporanFINISHING = $laporangajilain->whereIn('category_bagian', [10])->get();
    // ->pluck('tahun1')->dd();
    // tahun2018
    $FINISHING = collect([$laporanFINISHING])->sum(function ($FINISHING){
            return $FINISHING->sum('tahun1');
        });

    // tahun2019
    $finishing_ = collect([$laporanFINISHING])->sum(function ($FINISHING){
            return $FINISHING->sum('tahun2');
        });

    // tahun2020
    $finishing__ = collect([$laporanFINISHING])->sum(function ($FINISHING){
        return $FINISHING->sum('tahun3');
    });

    $Laporanfinishing_ = collect([$laporanFINISHING])->sum(function ($FINISHING){
        return $FINISHING->sum('total_biaya_laporan_periode');
    });

  // #MTC
  $laporanMTC = $laporangajilain->whereIn('category_bagian', [11])->get();
    // ->pluck('tahun1')->dd();
    // tahun2018
    $MTC = collect([$laporanMTC])->sum(function ($MTC){
            return $MTC->sum('tahun1');
        });

    // tahun2019
    $mtc_ = collect([$laporanMTC])->sum(function ($MTC){
            return $MTC->sum('tahun2');
        });

    // tahun2020
    $mtc__ = collect([$laporanMTC])->sum(function ($MTC){
        return $MTC->sum('tahun3');
    });

    $Laporanmtc_ = collect([$laporanMTC])->sum(function ($MTC){
        return $MTC->sum('total_biaya_laporan_periode');
    });

    // #UMUM (Hanya Kary KOP)
    $UMUM = $laporangajilain->whereIn('category_bagian', [12])->get();
    // ->pluck('tahun1')->dd();
    // tahun2018
    $UM = collect([$UMUM])->sum(function ($UM){
            return $UM->sum('tahun1');
        });

    // tahun2019
    $um_ = collect([$UMUM])->sum(function ($UM){
            return $UM->sum('tahun2');
        });

    // tahun2020
    $um__ = collect([$UMUM])->sum(function ($UM){
        return $UM->sum('tahun3');
    });

    $Laporanum_ = collect([$UMUM])->sum(function ($UM){
        return $UM->sum('total_biaya_laporan_periode');
    });

@endphp
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
        <a href="{{ route('laporan.g.lains.form.master') }}" class="btn btn-success btn-add-new">
            <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }} Labor</span>
        </a>
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
                        @if ($isServerSide)
                            <div class="pull-left">
                                <div role="status" class="show-res" aria-live="polite">{{ trans_choice(
                                    'voyager::generic.showing_entries', $dataTypeContent->total(), [
                                        'from' => $dataTypeContent->firstItem(),
                                        'to' => $dataTypeContent->lastItem(),
                                        'all' => $dataTypeContent->total()
                                    ]) }}</div>
                            </div>
                            <div class="pull-right">
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
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="col-2">
                                            <label for="total PPJ" class="badge badge-success">Total REPRO 2018:</label> <span class="">Rp {{number_format($REPRO, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total REPRO 2019:</label> <span class="">Rp {{number_format($REPRO__, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total REPRO 2020:</label> <span class="">Rp {{number_format($REPRO___, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total biaya / bulanan REPRO:</label> <span class="">Rp {{number_format($totalREPRO, 0, ".", ".")}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="col-2">
                                            <label for="total PPJ" class="badge badge-success">Total POTONG 2018:</label> <span class="">Rp {{number_format($potong, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total POTONG 2019:</label> <span class="">Rp {{number_format($Potong_, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total POTONG 2020:</label> <span class="">Rp {{number_format($Potong__, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total biaya / bulanan POTONG:</label> <span class="">Rp {{number_format($Totalbpotong_, 0, ".", ".")}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="col-2">
                                            <label for="total PPJ" class="badge badge-success">Total CETAK 2018:</label> <span class="">Rp {{number_format($cetak, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total CETAK 2019:</label> <span class="">Rp {{number_format($Cetak_, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total CETAK 2020:</label> <span class="">Rp {{number_format($Cetak__, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total biaya / bulanan CETAK:</label> <span class="">Rp {{number_format($LaporanCetak_, 0, ".", ".")}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="col-2">
                                            <label for="total PPJ" class="badge badge-success">Total PLONG 2018:</label> <span class="">Rp {{number_format($plong, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total PLONG 2019:</label> <span class="">Rp {{number_format($Plong_, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total PLONG 2020:</label> <span class="">Rp {{number_format($Plong__, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total biaya / bulanan PLONG:</label> <span class="">Rp {{number_format($LaporanPlong_, 0, ".", ".")}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="col-2">
                                            <label for="total PPJ" class="badge badge-success">Total FINISHING 2018:</label> <span class="">Rp {{number_format($FINISHING, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total FINISHING 2019:</label> <span class="">Rp {{number_format($finishing_, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total FINISHING 2020:</label> <span class="">Rp {{number_format($finishing__, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total biaya / bulanan FINISHING:</label> <span class="">Rp {{number_format($Laporanfinishing_, 0, ".", ".")}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="col-2">
                                            <label for="total PPJ" class="badge badge-success">Total MTC 2018:</label> <span class="">Rp {{number_format($MTC, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total MTC 2019:</label> <span class="">Rp {{number_format($mtc_, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total MTC 2020:</label> <span class="">Rp {{number_format($mtc__, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total biaya / bulanan MTC:</label> <span class="">Rp {{number_format($Laporanmtc_, 0, ".", ".")}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <div class="col-2">
                                            <label for="total PPJ" class="badge badge-success">Total UMUM 2018:</label> <span class="">Rp {{number_format($UM, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total UMUM 2019:</label> <span class="">Rp {{number_format($um_, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total UMUM 2020:</label> <span class="">Rp {{number_format($um__, 0, ".", ".")}}</span>
                                            <label for="total PPJ" class="badge badge-success">Total biaya / bulanan UMUM:</label> <span class="">Rp {{number_format($Laporanum_, 0, ".", ".")}}</span>
                                        </div>
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

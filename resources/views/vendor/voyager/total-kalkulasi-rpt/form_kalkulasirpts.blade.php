
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet" /> --}}
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi Total kalkulasi
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form"
            method="POST" enctype="multipart/form-data" autocomplete="off">

            {{ csrf_field() }}

            <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-bordered">
                            <div class="panel-body">
                                <div class="contanier">

                                    <div class="form-group">
                                        <label for="program_id">Company</label>
                                        <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                            @foreach ($company as $c)
                                        <option value="{{$c->id}}">{{$c->company_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                            
                                    <div class="form-group">
                                        <label for="program_id">Mesin</label>
                                        <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                            @foreach ($mesin as $m)
                                        <option value="{{$m->id}}">{{$m->code_mesin}} - {{$m->deskripsi}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="program_id">Category</label>
                                        <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                            @foreach ($cbagian as $cb)
                                        <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="program_id">Cari total biaya cost listrik perbulan</label>
                                        <select class="form-control select2" id="listrik" name="listrik" required>
                                            @foreach ($b_listrik as $biaya_listrik_persheet)
                                        <option value="{{$biaya_listrik_persheet->ncost_bulan_plus_adm }}">{{$biaya_listrik_persheet->code_listrik}} - Rp. {{ number_format(ceil($biaya_listrik_persheet->ncost_bulan_plus_adm), 0, ".", ".") }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="program_id">Cari total biaya penyusutan perbulan</label>
                                        <select class="form-control select2" id="penyusutan" name="penyusutan" required>
                                            @foreach ($b_penyusutan as $biaya_pnystn_persheet)
                                        <option value="{{$biaya_pnystn_persheet->penyusutan_perbulan}}">{{$biaya_pnystn_persheet->code_penyusutan}} - {{ceil($biaya_pnystn_persheet->penyusutan_perbulan)}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="program_id">Cari total biaya labor perbulan</label>
                                        <select class="form-control select2" id="labor" name="labor" required>
                                            @foreach ($LoadLabor as $biaya_labor_persheet)
                                        <option value="{{ $biaya_labor_persheet->total_biaya }}">{{$biaya_labor_persheet->mesin->code_mesin}} - {{ $biaya_labor_persheet->total_biaya }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="program_id">Cari total biaya Maintenance perbulan</label>
                                        <select class="form-control select2" id="Maintenance" name="Maintenance" required>
                                            @foreach ($b_mtc as $biaya_mtc_persheet)
                                               <option value="{{ $biaya_mtc_persheet->total_perbulan }}">{{$biaya_mtc_persheet->code_mtc}} - {{ceil($biaya_mtc_persheet->total_perbulan)}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                        <div class="panel panel-bordered">
                                            <div class="panel-body">
                                                <div class="contanier">
                                                    <div class="form-group">
                                                        <label for="program_id">Biaya Gaji Lain (Biaya Labor MTC)</label>
                                                        <input type="text" class="form-control" id="b_labor_mtc" name="b_labor_mtc" readonly="true" value="{{ $b_labor_mtc }}" placeholder="">
                                                    </div>

                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor MTC)</label>
                                                        <select class="form-control select2" id="b_labor_mtc" name="b_labor_mtc" required>
                                                            @foreach ($b_labor_mtc as $biaya_labormtc_persheet)
                                                               <option value="{{ $biaya_labormtc_persheet->total_biaya_labor }}"> {{ceil($biaya_labormtc_persheet->total_biaya_labor)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}
                                                    <div class="form-group">
                                                        <label for="program_id">Biaya Gaji Lain (Biaya Labor UMUM)</label>
                                                        <input type="text" class="form-control" id="b_labor_umum" name="b_labor_umum" readonly="true" value="{{ $b_labor_umum }}" placeholder="">
                                                    </div>
                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor UMUM)</label>
                                                        <select class="form-control select2" id="b_labor_umum" name="b_labor_umum" required>
                                                            @foreach ($b_labor_umum as $biaya_laborumum_persheet)
                                                               <option value="{{ $biaya_laborumum_persheet->total_biaya_labor }}"> {{ceil($biaya_laborumum_persheet->total_biaya_labor)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}

                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor QC)</label>
                                                        <select class="form-control select2" id="b_labor_qc" name="b_labor_qc" required>
                                                            @foreach ($b_labor_qc as $biaya_laborqc_persheet)
                                                               <option value="{{ $biaya_laborqc_persheet->total_biaya_labor }}"> {{ceil($biaya_laborqc_persheet->total_biaya_labor)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}
                                                    <div class="form-group">
                                                        <label for="program_id">Total Biaya Bag. QC</label>
                                                        <input type="text" class="form-control" id="b_labor_qc" name="b_labor_qc" readonly="true" value="{{ $b_labor_qc }}" placeholder="">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="program_id">Biaya Gaji Lain (Biaya Labor PREPRESS)</label>
                                                        <input type="text" class="form-control" id="b_labor_prepress" name="b_labor_prepress" readonly="true" value="{{ $b_labor_prepress }}" placeholder="">
                                                    </div>
                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor PREPRESS)</label>
                                                        <select class="form-control select2" id="b_labor_prepress" name="b_labor_prepress" required>
                                                            @foreach ($b_labor_prepress as $biaya_laborprepress_persheet)
                                                               <option value="{{ $biaya_laborprepress_persheet->total_biaya_labor }}"> {{ceil($biaya_laborprepress_persheet->total_biaya_labor)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}

                                                    <div class="form-group">
                                                        <label for="program_id">Cari Biaya Prosentase Listrik</label>
                                                        <select class="form-control select2" id="prosentase_listrik" name="prosentase_listrik" required>
                                                            @foreach ($loadProsentaseListrik as $pr_listrikN5)
                                                               <option value="{{ $pr_listrikN5->persen_cost_perbulan }}"> {{ RumusListrikOutputPerjam::percent($pr_listrikN5->persen_cost_perbulan) }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="program_id">Shift</label>
                                            <select class="form-control select2" id="shift_listrik" name="shift_listrik" required>
                                                   <option value="0">  {{ __('Shift unknown') }}</option>
                                                   <option value="1">  {{ __('Shift satu') }}</option>
                                                   <option value="2">  {{ __('Shift dua') }}</option>
                                                   <option value="3">  {{ __('Shift tiga') }}</option>
                                            </select>
                                        </div>

                                    <div class="form-group">
                                        <label for="program_id">Total Biaya Bag. Penjualan</label>
                                        <input type="text" class="form-control" id="b_penjualan" name="b_penjualan" readonly="true" value="{{ $b_bag_penjualan }}" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Total Biaya Adminsitrasi Umum</label>
                                        <input type="text" class="form-control removeLater" id="bau" readonly="true" name="bau" value="{{ $b_bag_administrasi_umum }}" placeholder="">
                                    </div>

                                    <div class="panel panel-bordered">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <span>Total biaya penyusutan perbulan</span>
                                                </div>
                                                <div class="col-md-6">
                                                    <span> <input type="text" class="form-control" id="totals" name="totals" placeholder=""></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-6">
                    <div class="panel panel-bordered col-md-12">
                    <div class="panel-body">
                        <h3>Informasi perhitungan kalkulasi mesin (Penyusutan) </h3>
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Listrik</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="listriks" name="listrik" placeholder=""></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Penyusutan</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="penyusutans" name="penyusutan" placeholder=""></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Labor</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="labors" name="labor" placeholder=""></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Maintenance</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="Maintenances" name="Maintenance" placeholder=""></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Gaji Lain - lain</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="gaji_lainnyas" name="gaji_lainnya" placeholder=""></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Bagian Penjualan</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="b_penjualans" name="b_penjualan" placeholder=""></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Biaya Administrasi Umum</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="baus" name="baus" placeholder=""></span>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="panel panel-bordered col-md-12">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Prosentase Listrik</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="persen_listriks" name="persen_listrik" placeholder=""></span>
                                </div>
                            </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <span>Prosentase Penyusutan</span>
                                    </div>
                                    <div class="col-md-9">
                                        <span> <input type="text" class="form-control" id="penyusutan_persens" name="penyusutan_persen" placeholder=""></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <span>Prosentase Labor</span>
                                    </div>
                                    <div class="col-md-9">
                                        <span> <input type="text" class="form-control" id="labor_persens" name="labor_persen" placeholder=""></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <span>Prosentase Maintenance</span>
                                    </div>
                                    <div class="col-md-9">
                                        <span> <input type="text" class="form-control" id="maintenance_persens" name="maintenance_persen" placeholder=""></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <span>Prosentase Gaji Lain - lain</span>
                                    </div>
                                    <div class="col-md-9">
                                        <span> <input type="text" class="form-control" id="gaji_lainnya_persens" name="gaji_lainnya_persen" placeholder=""></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <span>Prosentase Bagian Penjualan</span>
                                    </div>
                                    <div class="col-md-9">
                                        <span> <input type="text" class="form-control" id="b_penjualan_persens" name="b_penjualan_persen" placeholder=""></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <span>Prosentase Biaya Administrasi Umum</span>
                                    </div>
                                    <div class="col-md-9">
                                        <span> <input type="text" class="form-control" id="bau_persens" name="bau_persen" placeholder=""></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        </div>
                    </div>
                </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary pull-right save">Hitung master listik</button>&nbsp;

        </form>
    </div>
@stop

@section('javascript')
    <script>
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();
        });

        $(document).ready(function() {

            $('form').submit(function(event) {

                var formData = {

                    'company_parent_id'     : $('select[name=company_parent_id]').val(),
                    'category_bagian'       : $('select[name=category_bagian]').val(),
                    'code_mesin'            : $('select[name=code_mesin]').val(),
                    'listrik'               : $('select[name=listrik]').val(),
                    'penyusutan'            : $('select[name=penyusutan]').val(),
                    'labor'                 : $('select[name=labor]').val(),
                    'Maintenance'           : $('select[name=Maintenance]').val(),
                    'shift_listrik'         : $('select[name=shift_listrik]').val(),

                    // calc gaji lain mergen this
                    'b_labor_mtc'           : $('input[name=b_labor_mtc]').val(),
                    'b_labor_umum'          : $('input[name=b_labor_umum]').val(),
                    'b_labor_qc'            : $('input[name=b_labor_qc]').val(),
                    'b_labor_prepress'      : $('input[name=b_labor_prepress]').val(),
                    //end gaji

                    'b_penjualan'           : $('input[name=b_penjualan]').val(),
                    'bau'                   : $('input[name=bau]').val(),
                    'prosentase_listrik'    : $('select[name=prosentase_listrik]').val(),

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('tr.open.penyusutan') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode          : true
                })
                .done(function(data) {
            
                    $("#listriks").val(data.listrik);
                    $("#penyusutans").val(data.penyusutan);
                    $("#labors").val(data.labor);
                    $("#Maintenances").val(data.Maintenance);
                    $("#gaji_lainnyas").val(data.gaji_lainnya);
                    $("#b_penjualans").val(data.b_penjualan);
                    $("#baus").val(data.bau);
                    $("#persen_listriks").val(data.persen_listrik);
                    $("#penyusutan_persens").val(data.penyusutan_persen);
                    $("#totals").val(data.total);
                    $("#labor_persens").val(data.labor_persen);
                    $("#maintenance_persens").val(data.maintenance_persen);
                    $("#gaji_lainnya_persens").val(data.gaji_lainnya_persen);
                    $("#b_penjualan_persens").val(data.b_penjualan_persen);
                    $("#bau_persens").val(data.bau_persen);
                    $("#total_persens").val(data.total_persen);
                    $("#total_perjams").val(data.total_perjam);

                    Toast.fire({
                        icon: 'success',
                        title: 'Berhasil menyimpan data.'
                    })

                });

             event.preventDefault();
            });

        });

    </script>
@stop
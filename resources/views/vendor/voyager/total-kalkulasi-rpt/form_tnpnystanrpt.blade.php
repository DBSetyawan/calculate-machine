
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
                    <div class="col-md-5">
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
                                        <select class="form-control select2" id="mtc" name="mtc" required>
                                            @foreach ($b_mtc as $biaya_mtc_persheet)
                                               <option value="{{ $biaya_mtc_persheet->total_biaya_perbulan }}">{{ $biaya_mtc_persheet->total_biaya_perbulan }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="program_id">Cari total Biaya Prod Lain</label>
                                        <select class="form-control select2" id="b_prod_lain" name="b_prod_lain" required>
                                            @foreach ($LoadProdLain as $bprodlain)
                                               <option value="{{ $bprodlain->biaya_produksi_lain }}">{{ceil($bprodlain->biaya_produksi_lain)}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                        <div class="panel panel-bordered">
                                            <div class="panel-body">
                                                <div class="contanier">

                                                    <div class="form-group">
                                                        <label for="program_id">Laporan Biaya Gaji Lain (Biaya Labor REPRO)</label>
                                                        <input type="text" class="form-control" id="b_labor_repro" name="b_labor_repro" readonly="true" value="{{ $b_labor_mtc }}" placeholder="">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="program_id">Laporan Biaya Gaji Lain (Biaya Labor MTC)</label>
                                                        <input type="text" class="form-control" id="b_labor_mtcs" name="b_labor_mtcs" readonly="true" value="{{ $b_labor_mtcpyt }}" placeholder="">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="program_id">Laporan Biaya Gaji Lain (Biaya Labor UMUM)</label>
                                                        <input type="text" class="form-control" id="b_labor_umumspyt" name="b_labor_umumspyt" readonly="true" value="{{ $b_labor_ummpyt }}" placeholder="">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="program_id">Laporan Biaya Gaji Lain (Biaya Labor QC)</label>
                                                        <input type="text" class="form-control" id="b_lbr_qcpyt" name="b_lbr_qcpyt" readonly="true" value="{{ $b_blqc_pyts }}" placeholder="">
                                                    </div>

                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor REPRO)</label>
                                                        <select readonly="true" class="form-control select2" id="b_labor_repro" name="b_labor_repro" required>
                                                            @foreach ($b_labor_mtc as $biaya_labormtc_persheet)
                                                               <option value="{{ $biaya_labormtc_persheet->total_biaya_laporan_periode }}"> {{ceil($biaya_labormtc_persheet->total_biaya_laporan_periode)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}

                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor MTC)</label>
                                                        <select class="form-control select2" id="b_labor_mtcs" name="b_labor_mtcs" required>
                                                            @foreach ($b_labor_mtcpyt as $biaya_laborumum_persheet)
                                                               <option value="{{ $biaya_laborumum_persheet->total_biaya_laporan_periode }}"> {{ceil($biaya_laborumum_persheet->total_biaya_laporan_periode)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}

                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor UMUM)</label>
                                                        <select class="form-control select2" id="b_labor_umumspyt" name="b_labor_umumspyt" required>
                                                            @foreach ($b_labor_ummpyt as $biaya_laborqc_persheet)
                                                               <option value="{{ $biaya_laborqc_persheet->total_biaya_laporan_periode }}"> {{ceil($biaya_laborqc_persheet->total_biaya_laporan_periode)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}

                                                    {{-- <div class="form-group">
                                                        <label for="program_id">Cari Biaya Gaji Lain (Biaya Labor QC)</label>
                                                        <select class="form-control select2" id="b_lbr_qcpyt" name="b_lbr_qcpyt" required>
                                                            @foreach ($b_blqc_pyts as $biaya_laborprepress_persheet)
                                                               <option value="{{ $biaya_laborprepress_persheet->total_biaya_laporan_periode }}"> {{ceil($biaya_laborprepress_persheet->total_biaya_laporan_periode)}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div> --}}

                                                    <div class="form-group">
                                                        <label for="program_id">Cari Biaya Prosentase Listrik</label>
                                                        <select class="form-control select2" id="prosentase_listrik" name="prosentase_listrik" required>
                                                            @foreach ($loadProsentaseListrik as $pr_listrikN5)
                                                               <option value="{{ $pr_listrikN5->persen }}"> {{ RumusListrikOutputPerjam::percent($pr_listrikN5->persen) }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="program_id">Shift</label>
                                            <select class="form-control select2" id="shift" name="shift" required>
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
                                              <button type="submit" class="btn btn-primary pull-right save">Hitung kalkulasi mesin</button>&nbsp;

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-7">
                    <div class="panel panel-bordered col-md-12">
                    <div class="panel-body">
                        <h3>Hasil perhitungan kalkulasi mesin</h3>
                        <div class="row">
                            <div class="panel panel-bordered">
                                <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Listrik</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="listriks" name="listrik" placeholder="" disabled></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Penyusutan</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="penyusutans" name="penyusutan" placeholder="" disabled></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Labor</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="labors" name="labor" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <span>Maintenance</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="Maintenances" name="Maintenance" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <span>Biaya Produksi Lain</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="bprodlain" name="bprodlain" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <span>Gaji Lainnya</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="gjLainnya" name="gjLainnya" placeholder="" disabled></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <span>Bagian Penjualan</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="BgPenjualan" name="gjLainnya" placeholder="" disabled></span>
                                </div>
                            </div>

                              <div class="row">
                                <div class="col-md-5">
                                    <span>Biaya Administrasi Umum</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="BadministrasiUm" name="gjLainnya" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <span>Semua Total Biaya</span>
                                </div>
                                <div class="col-md-9">
                                    <span> <input type="text" class="form-control" id="semua_total_biayas" name="semua_total_biayas" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <span>Semua Total Biaya (/Jam)</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="semua_total_biaya_perjams" name="semua_total_biaya_perjams" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <span>Semua Total Biaya + MTC</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="tanpa_penyusutan_plus_mtc_totals" name="tanpa_penyusutan_plus_mtc_totals" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <span>Semua Total Biaya + MTC (/Jam)</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="tanpa_penyusutan_plus_mtc_perjams" name="tanpa_penyusutan_plus_mtc_perjams" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <span>Semua Total Biaya Tanpa Penyusutan</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="tanpa_penyusutan_totals" name="tanpa_penyusutan_totals" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <span>Semua Total Biaya Tanpa Penyusutan (/Jam)</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="tanpa_penyusutan_total_perjams" name="tanpa_penyusutan_total_perjams" placeholder="" disabled></span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5">
                                    <span>Semua Total Biaya Tanpa MTC</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="tanpa_mtc_totals" name="tanpa_mtc_totals" placeholder="" disabled></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <span>Semua Total Biaya Tanpa MTC (/Jam)</span>
                                </div>
                                <div class="col-md-7">
                                    <span> <input type="text" class="form-control" id="tanpa_mtc_total_perjams" name="tanpa_mtc_total_perjams" placeholder="" disabled></span>
                                </div>
                            </div>
                        </div>
                    </div>
            <div class="panel panel-bordered col-md-12">
                <div class="panel-body">
                    <h3>Prosentase hasil perhitungan kalkulasi mesin</h3>

                    <div class="row">
                        <div class="table-responsive-xl">
                            <table class="table">
                                <div class="container px-lg-5">
                                    <div class="row mx-lg-n5">
                                      <div class="col py-3 px-lg-5 border bg-light">
                                        <table class="table table-borderless table-dark">
                                            <thead>
                                              <tr>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col" class="position-absolute top-50 start-0 translate-middle-y">%</th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                                <th scope="col"></th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                              <tr>
                                                <th scope="row">Listrik</th>
                                                <td>Penyusutan</td>
                                                <td>Labor</td>
                                                <td>Maintenance</td>
                                                <td>Biaya Produksi Lain</td>
                                                <td>Gaji Lainnya</td>
                                                <td>Bagian Penjualan</td>
                                                <td>Biaya Administrasi Umum</td>
                                                <td>Total</td>
                                              </tr>
                                              <tr>
                                                <th scope="row"><span id="listrik_persens"></span></th>
                                                <td><span id="prsPystan"></span></td>
                                                <td><span id="persenLaborTPnytsn"></span></td>
                                                <td><span id="persenMTCTPnytsn"></span></td>
                                                <td><span id="persenProduksiLainTPnytsn"></span></td>
                                                <td><span id="GajiLainPersenTanpaPenyusutan"></span></td>
                                                <td><span id="BagianPenjualanPersenTanpaPenyusutan"></span></td>
                                                <td><span id="BiayaAdministrasiMesinPersenTanpaPenyusutan"></span></td>
                                                <td><span id="TotalPersenTanpaPenyusutan"></span></td>
                                              </tr>
                                                </tbody>
                                                    </table>
                                                </div>
                                                </div>
                                            </div>
                                        </table>
                                    </div>
                                </div>
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
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
            // $('#b_labor_repro').prop('disabled',true);
            // $('#b_labor_mtcs').prop('disabled',true);
            // $('#b_labor_umumspyt').prop('disabled',true);
            // $('#b_lbr_qcpyt').prop('disabled',true);
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
                    'mtc'                   : $('select[name=mtc]').val(),
                    'shift'                 : $('select[name=shift]').val(),
                    'b_prod_lain'           : $('select[name=b_prod_lain]').val(),

                    // calc gaji lain mergen this
                    'b_labor_repro'           : $('input[name=b_labor_repro]').val(),
                    'b_labor_mtcs'          : $('input[name=b_labor_mtcs]').val(),
                    'b_labor_umumspyt'            : $('input[name=b_labor_umumspyt]').val(),
                    'b_lbr_qcpyt'      : $('input[name=b_lbr_qcpyt]').val(),
                    //end gaji

                    'b_penjualan'           : $('input[name=b_penjualan]').val(),
                    'bau'                   : $('input[name=bau]').val(),
                    'prosentase_listrik'    : $('select[name=prosentase_listrik]').val(),

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('tr.open.tanpa.penyusutan') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode          : true
                })
                .done(function(data) {
            
                    $("#listriks").val(data.listrik);
                    $("#penyusutans").val(data.penyusutan);
                    $("#labors").val(data.labor);
                    $("#Maintenances").val(data.mtc);
                    $("#gjLainnya").val(data.gaji_lainnya);
                    $("#BgPenjualan").val(data.b_penjualan);
                    $("#BadministrasiUm").val(data.bau);
                    $("#bprodlain").val(data.b_prod_lain);

                    $("#semua_total_biayas").val(data.semua_total_biaya);
                    $("#semua_total_biaya_perjams").val(data.semua_total_biaya_perjam);

                    $("#tanpa_penyusutan_plus_mtc_totals").val(data.tanpa_penyusutan_plus_mtc_total);
                    $("#tanpa_penyusutan_plus_mtc_perjams").val(data.tanpa_penyusutan_plus_mtc_perjam);

                    $("#tanpa_penyusutan_totals").val(data.tanpa_penyusutan_total);
                    $("#tanpa_penyusutan_total_perjams").val(data.tanpa_penyusutan_total_perjam);

                    $("#tanpa_mtc_totals").val(data.tanpa_mtc_total);
                    $("#tanpa_mtc_total_perjams").val(data.tanpa_mtc_total_perjam);

                    //panel persen
                    $("#prsPystan").text(data.prsPystan);
                    $("#listrik_persens").text(data.prsLstrk);
                    $("#persenMTCTPnytsn").text(data.persenMTCTPnytsn);
                    $("#persenLaborTPnytsn").text(data.persenLaborTPnytsn);
                    $("#TotalPersenTanpaPenyusutan").text(data.TotalPersenTanpaPenyusutan);
                    $("#persenProduksiLainTPnytsn").text(data.persenProduksiLainTPnytsn);
                    $("#GajiLainPersenTanpaPenyusutan").text(data.GajiLainPersenTanpaPenyusutan);
                    $("#BagianPenjualanPersenTanpaPenyusutan").text(data.BagianPenjualanPersenTanpaPenyusutan);
                    $("#BiayaAdministrasiMesinPersenTanpaPenyusutan").text(data.BiayaAdministrasiMesinPersenTanpaPenyusutan);

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
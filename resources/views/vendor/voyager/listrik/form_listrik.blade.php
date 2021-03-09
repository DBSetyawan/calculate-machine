
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi listrik
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">

        <form id="formlistriks" class="form-edit-add" role="form"
            method="POST" enctype="multipart/form-data" autocomplete="off">

            {{ csrf_field() }}
            <div class="row">
                    <div class="col-md-8">
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
                                        <label for="program_id">Group mesin</label>
                                        <select class="form-control select2" id="group_mesin" name="group_mesin" required>
                                            @foreach ($group_mesin as $c)
                                        <option value="{{$c->id}}">{{$c->nama_kategori_mesin}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="program_id">Listrik /Jam</label>
                                        <select class="form-control select2" id="perjam" name="perjam" required>
                                            @foreach ($LsOutputPerjam as $c)
                                        <option value="{{$c->id}}">{{ RumusListrikOutputPerjam::percent($c->persen)}} - {{ $c->output_perjam }}</option>
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

                                    {{-- <div class="form-group">
                                        <label for="url_instagram">Shift</label>
                                        <input type="text" class="form-control" id="shift" name="shift" placeholder="Shift">
                                    </div> --}}

                                    <div class="form-group">
                                        <label for="program_id">Shift</label>
                                        <select class="form-control select2 slect2" id="shift" name="shift" required>
                                            <option value="0">None</option>
                                            <option value="1">Shift 1</option>
                                            <option value="2">Shift 2</option>
                                            <option value="3">Shift 3</option>
                                        </select>
                                    </div>
                                    {{-- 
                                         const LWBP = 17;
                                            const WBP = 4;
                                            const IntvalMinggu = 6;
                                        --}}

                                    <div class="form-group">
                                        <label for="url_instagram">LWBP (shift1)</label>
                                        <input type="text" class="form-control" style="display: none" id="sht_1lwbp" value="{{ $LwbpMaster[2]->lwbp }}" name="sht_1lwbp" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">WBP (shift 1,2,3)</label>
                                        <input type="text" style="display: none;" class="form-control" id="wbp" value="{{ $LwbpMaster[0]->wbp }}" name="wbp" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="shift2">LWBP (shift 2)</label>
                                        <input type="text" style="display: none;" class="form-control" id="sht_2lwbp" value="{{ $LwbpMaster[1]->lwbp }}" name="sht_2lwbp" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="shift3">LWBP (shift 3)</label>
                                        <input type="text" class="form-control" style="display: none;" id="sht_3lwbp" value="{{ $LwbpMaster[0]->lwbp }}" name="sht_3lwbp" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Hitungan minggu dalam angka</label>
                                        <input type="text" class="form-control" style="display: none;" id="intervalnumeric" value="{{ $LwbpMaster[0]->Intervalmingguan }}" name="intervalnumeric" placeholder="Ampere">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Ampere</label>
                                        <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="ampere" name="ampere" placeholder="Ampere" required="required" >
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Voltase</label>
                                        <input type="text" class="form-control" id="voltase" data-validate-length-range="6" data-validate-words="2" name="voltase" placeholder="Voltase" required="required" >
                                    </div>
                                <div class="contanier">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label for="url_instagram">Faktor kali LWBP</label>
                                            <input type="text" class="form-control" id="faktor_kali_lwbp" name="faktor_kali_lwbp" placeholder="Faktor kali LWBP">
                                        </div>
                                        <div class="form-group">
                                            <label for="url_instagram">Faktor kali WBP</label>
                                            <input type="text" class="form-control" id="faktor_kali_wbp" name="faktor_kali_wbp" placeholder="Faktor kali WBP">
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Akumulasi Listrik/Minggu</h3>
                        <div class="row">
                            <div class="col-md-4">
                                <span>LWBP Perminggu</span>
                            </div>
                            <div class="col-md-8">
                                <input type="text" readonly="true" class="form-control" id="lwbp_" name="lwbp_" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>WBP Perminggu</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="wbp_" name="wbp_" placeholder=""></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total biaya listrik</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="totalbiayalstrk_" name="totalbiayalstrk_" placeholder=""></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total Cost Perbulan</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="totalcostperbulan" name="totalcostperbulan" placeholder=""></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total Cost Perbulan + ADM</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="totalcostperbulanadm" name="totalcostperbulanadm" placeholder=""></span>
                            </div>
                        </div>

                        {{-- <div class="row">
                            <div class="col-md-4">
                                <span>%</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" class="form-control" id="persenlistriks" name="persenlistriks" placeholder=""></span>
                            </div>
                        </div> --}}

                        {{-- <div class="row">
                            <div class="col-md-4">
                                <span>Domisili</span>
                            </div>
                            <div class="col-md-8">
                                <span>KODEPOS:{{$donatur->kelurahan->kd_pos}}, Kel. {{$donatur->kelurahan->kelurahan}}, Kec. {{$donatur->kelurahan->kecamatan->kecamatan}}, Kota/Kab. {{$donatur->kelurahan->kecamatan->kabkot->kabupaten_kota}}, Prov. {{$donatur->kelurahan->kecamatan->kabkot->provinsi->provinsi}}
                                </span>
                            </div>
                        </div> --}}

                    </div>
                </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary pull-right save">Hitung master listik</button>&nbsp;

            {{-- <button type="submit" class="btn btn-primary pull-right save">
                Add Donation
            </button> --}}
        </form>
    </div>
@stop

@section('javascript')
    <script>

    function shift1() {
        document.getElementById("sht_1lwbp").style.display = "inline";
        document.getElementById("wbp").style.display = "inline";
        document.getElementById("sht_2lwbp").style.display = "none";
        document.getElementById("sht_3lwbp").style.display = "none";
        document.getElementById("intervalnumeric").style.display = "inline";

        $('#sht_1lwbp').attr('disabled', true);
        $('#wbp').attr('disabled', true);
        $('#sht_2lwbp').attr('disabled', true);
        $('#sht_3lwbp').attr('disabled', true);
        $('#intervalnumeric').attr('disabled', true);

    }

    function shift2() {
        document.getElementById("sht_1lwbp").style.display = "none";
        document.getElementById("sht_2lwbp").style.display = "inline";
        document.getElementById("sht_3lwbp").style.display = "none";
        document.getElementById("wbp").style.display = "inline";
        document.getElementById("intervalnumeric").style.display = "inline";

        $('#sht_1lwbp').attr('disabled', true);
        $('#wbp').attr('disabled', true);
        $('#sht_2lwbp').attr('disabled', true);
        $('#sht_3lwbp').attr('disabled', true);
        $('#intervalnumeric').attr('disabled', true);
    }

    function shift3() {
        document.getElementById("sht_2lwbp").style.display = "none";
        document.getElementById("sht_3lwbp").style.display = "inline";
        document.getElementById("sht_1lwbp").style.display = "none";
        document.getElementById("wbp").style.display = "inline";
        document.getElementById("intervalnumeric").style.display = "inline";

        $('#sht_1lwbp').attr('disabled', true);
        $('#wbp').attr('disabled', true);
        $('#sht_2lwbp').attr('disabled', true);
        $('#sht_3lwbp').attr('disabled', true);
        $('#intervalnumeric').attr('disabled', true);
    }

    function reset() {
        // document.getElementById("wbp").style.display = "none";
        // document.getElementById("lwbp").style.display = "none";
        // document.getElementById("sht_2lwbp").style.display = "none";
        // document.getElementById("sht_3lwbp").style.display = "none";
        // document.getElementById("intervalnumeric").style.display = "none";

        $("#sht_3lwbp").hide();
        $("#sht_2lwbp").hide();
        $("#sht_1lwbp").hide();
        $("#wbp").hide();
        $("#intervalnumeric").hide();
    }

    $(document).ready(function(){

        $('.slect2').on('change', function() {
            if(this.value == "0") {
               reset();
            }

            if( this.value == "1"){
            shift1()
            } 
            if( this.value == "2"){
                shift2()

            } 
            if( this.value == "3"){
                shift3()

            }
            
        });
    });

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

                    'ampere'             : $('input[name=ampere]').val(),
                    'voltase'            : $('input[name=voltase]').val(),
                    'faktor_kali_wbp'    : $('input[name=faktor_kali_wbp]').val(),
                    'faktor_kali_lwbp'   : $('input[name=faktor_kali_lwbp]').val(),
                    'persenlistriks'     : $('input[name=persenlistriks]').val(),
                    'group_mesin'        : $('select[name=group_mesin]').val(),
                    'company_parent_id'  : $('select[name=company_parent_id]').val(),
                    'perjam'             : $('select[name=perjam]').val(),
                    'category_bagian'    : $('select[name=category_bagian]').val(),
                    'code_mesin'         : $('select[name=code_mesin]').val(),

                    'shift'              : $('select[name=shift]').val(),
                    'sht_1lwbp'          : $('input[name=sht_1lwbp]').val(),
                    'sht_2lwbp'          : $('input[name=sht_2lwbp]').val(),
                    'sht_3lwbp'          : $('input[name=sht_3lwbp]').val(),
                    'wbp'                : $('input[name=wbp]').val(),
                    'intervalnumeric'    : $('input[name=intervalnumeric]').val(),


                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('listriks.store.master') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode          : true
                })
                .done(function(data) {
                    $("#lwbp_").val(data.lwbp_perminggu); 
                    $("#wbp_").val(data.wbp_perminggu); 
                    $("#totalbiayalstrk_").val(data.total_biaya_listrik_perminggu);
                    $("#totalcostperbulan").val(data.totalbiaya_cost_perbulan);
                    $("#totalcostperbulanadm").val(data.ncost_bulan_plus_adm);
                    $("#persenlistriks").val(data.persen_listrik);
                    console.log("selesai memproses :",data);
                    
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
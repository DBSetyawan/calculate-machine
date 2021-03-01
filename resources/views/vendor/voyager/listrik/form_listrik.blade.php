
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


        <form class="form-edit-add" role="form"
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
                                        <label for="url_instagram">Shift</label>
                                        <input type="text" class="form-control" id="shift" name="shift" placeholder="Shift">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Ampere</label>
                                        <input type="text" class="form-control" id="ampere" name="ampere" placeholder="Ampere">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Voltase</label>
                                        <input type="text" class="form-control" id="voltase" name="voltase" placeholder="Voltase">
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
                                <input type="text" class="form-control" id="lwbp_" name="lwbp_" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>WBP Perminggu</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" class="form-control" id="wbp_" name="wbp_" placeholder=""></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total biaya listrik</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" class="form-control" id="totalbiayalstrk_" name="totalbiayalstrk_" placeholder=""></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total Cost Perbulan</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" class="form-control" id="totalcostperbulan" name="totalcostperbulan" placeholder=""></span>
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

                    'shift'              : $('input[name=shift]').val(),
                    'ampere'             : $('input[name=ampere]').val(),
                    'voltase'            : $('input[name=voltase]').val(),
                    'faktor_kali_wbp'    : $('input[name=faktor_kali_wbp]').val(),
                    'faktor_kali_lwbp'   : $('input[name=faktor_kali_lwbp]').val(),
                    'persenlistriks'     : $('input[name=persenlistriks]').val(),
                    'company_parent_id'  : $('select[name=company_parent_id]').val(),
                    'category_bagian'    : $('select[name=category_bagian]').val(),
                    'code_mesin'         : $('select[name=code_mesin]').val(),

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
                    $("#totalcostperbulan").val(data.totalbiaya_cost_perbulan);
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

@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi Biaya Administrasi Umum
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
                                        <label for="url_instagram">Nama biaya</label>
                                        <input type="text" class="form-control removeLater" id="nama_biaya" name="nama_biaya" placeholder="Nominal biaya lain">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya tahun awal</label>
                                        <input type="text" class="form-control removeLater" id="tahun1" name="tahun1" placeholder="Nominal biaya lain">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya tahun kedua</label>
                                        <input type="text" class="form-control removeLater" id="tahun2" name="tahun2" placeholder="Nominal biaya lain">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya tahun ketiga</label>
                                        <input type="text" class="form-control removeLater" id="tahun3" name="tahun3" placeholder="Nominal biaya lain">
                                    </div>
                                    <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Laporan biaya Administrasi umum</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <span>Total Biaya Administrasi Umum Perbulan</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" readonly="true" class="form-control" id="total_b_administrasi_umumlp" name="total_b_administrasi_umumlp" placeholder="">
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>

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

                    'company_parent_id'     : $('select[name=company_parent_id]').val(),
                    'nama_biaya'            : $('input[name=nama_biaya]').val(),
                    'tahun1'        : $('input[name=tahun1]').val(),
                    'tahun2'        : $('input[name=tahun2]').val(),
                    'tahun3'        : $('input[name=tahun3]').val()

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('lp.biaya.adminitrasi.umum.store') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode      : true
                })
                .done(function(data) {
                    $("#total_b_administrasi_umumlp").val(data.total_biaya_lp_adm);

                    console.log(data)
                    Toast.fire({
                        icon: 'success',
                        title: 'Berhasil menyimpan data.'
                    })
                    
                    $(".removeLater").val('');

                });

             event.preventDefault();
            });

        });

    </script>
@stop
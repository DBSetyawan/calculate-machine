
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    {{-- <link href="{{ voyager_asset('css/app.css') }}" rel="stylesheet" /> --}}
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi Maintenance
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
                                        <label for="url_instagram">Perbaikan Pertahun</label>
                                        <input type="text" class="form-control removeLater" id="perbaikan_pertahun" name="perbaikan_pertahun" placeholder="Biaya perbaikan pertahun">
                                    </div>
                                    {{-- <div class="form-group">
                                        <label for="url_instagram">Perbaikan Perbulan</label>
                                        <input type="text" class="form-control removeLater" id="perbaikan_perbulan" name="perbaikan_perbulan" placeholder="Purchase order">
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="url_instagram">Sparepart pertahun</label>
                                        <input type="text" class="form-control removeLater" id="sparepart_pertahun" name="sparepart_pertahun" placeholder="Sparepart pertahun">
                                    </div>

                                        <div class="row">
                                           <div class='col-sm-6'>
                                              <div class="form-group">
                                            <label for="url_instagram">Transaksi tanggal (Testing)</label>
                                                 <div class='input-group date' id='tdate'>
                                                    <input type='text' class="form-control"  name="tdate"/>
                                                    <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                 </div>
                                              </div>
                                           </div>
                                        </div>
                                    {{-- <div class="form-group">
                                        <label for="url_instagram">Sparepart perbulan</label>
                                        <input type="text" class="form-control removeLater" id="sparepart_perbulan" name="sparepart_perbulan" placeholder="Umur (Bulan)">
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Maintenance /Bulan</h3>
                        <div class="row">
                            <div class="col-md-8">
                                <span>Total biaya maintenance bulanan :</span>
                            </div>
                            <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder="">
                            </div>
                        </div><br/>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Perbaikan perbulan</span>
                            </div>
                            <div class="col-md-8">
                                <input type="text" readonly="true" class="form-control" id="perbaikanperbulan" name="perbaikanperbulan" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Sparepart perbulan</span>
                            </div>
                            <div class="col-md-8">
                              <input type="text" readonly="true" class="form-control" id="sparepartperbulan" name="sparepartperbulan" placeholder="">

                            </div>
                        </div>

                      

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

            $(function () {
                $('#tdate').datetimepicker({
                    format:'YYYY-MM-DD'
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

                    'code_mesin'            : $('select[name=code_mesin]').val(),
                    'tdate'                 : $('input[name=tdate]').val(),
                    'company_parent_id'     : $('select[name=company_parent_id]').val(),
                    'category_bagian'       : $('select[name=category_bagian]').val(),
                    'perbaikan_pertahun'    : $('input[name=perbaikan_pertahun]').val(),
                    // 'perbaikan_perbulan'    : $('input[name=perbaikan_perbulan]').val(),
                    'sparepart_pertahun'    : $('input[name=sparepart_pertahun]').val(),
                    // 'sparepart_perbulan'    : $('input[name=sparepart_perbulan]').val(),

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('mtcs.store.master') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode          : true
                })
                .done(function(data) {

                    $("#total_perbulan_p").val(data.total_perbulan);
                    $("#sparepartperbulan").val(data.sparepart_perbulan);
                    $("#perbaikanperbulan").val(data.perbaikan_perbulan);

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
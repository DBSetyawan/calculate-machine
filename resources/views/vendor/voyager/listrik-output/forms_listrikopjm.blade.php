
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Master Listrik output perjam 
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
                            
                                    {{-- <div class="form-group">
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
                                    </div> --}}

                                    <div class="form-group">
                                        <label for="url_instagram">Listrik Output Perjam</label>
                                        <input type="text" class="form-control removeLater" id="output_perjam" name="output_perjam" placeholder="Total output perjamnya">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Informasi Listrik</h3>
                        <div class="row">
                            <div class="col-md-8">
                                <span>Informasi listrik output perjam :</span>
                            </div>
                            <div class="container">
                                    {{-- <input type="text" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder=""> --}}
                            </div>
                        </div><br/>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total perjam </span>
                            </div>
                            <div class="col-md-8">
                                <input type="text" class="form-control" id="totaloutputperjam" name="totaloutputperjam" placeholder="">
                            </div>
                        </div>


                      

                    </div>
                </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;

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

                    'output_perjam'         : $('input[name=output_perjam]').val(),
                    'company_parent_id'     : $('select[name=company_parent_id]').val(),

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('listrik-outputs.mtc.store.master') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode          : true
                })
                .done(function(data) {

                    $("#totaloutputperjam").val(data.total_perbulan);

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
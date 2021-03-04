
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
                                    {{-- <div class="form-group">
                                        <label for="url_instagram">Gaji & Upah</label>
                                        <input type="text" class="form-control removeLater" id="gaji_upah" name="gaji_upah" placeholder="Jumlah Supervisor">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Tunjangan Tetap</label>
                                        <input type="text" class="form-control removeLater" id="tunjangan_tetap" name="tunjangan_tetap" placeholder="Nominal tunjangan tetap">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Tunjangan Tidak Tetap</label>
                                        <input type="text" class="form-control removeLater" id="tunjangan_tidak_tetap" name="tunjangan_tidak_tetap" placeholder="Tunjangan tidak tetap">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Lembur</label>
                                        <input type="text" class="form-control removeLater" id="lembur" name="lembur" placeholder="Jumlah lembur">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Premi</label>
                                        <input type="text" class="form-control removeLater" id="premi" name="premi" placeholder="Premi">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Tunjangan Asuransi</label>
                                        <input type="text" class="form-control removeLater" id="tunjangan_asuransi" name="tunjangan_asuransi" placeholder="Nominal tunjangan asuransi">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Tunjangan hari raya</label>
                                        <input type="text" class="form-control removeLater" id="tunjangan_hari_raya" name="tunjangan_hari_raya" placeholder="Nominal tunjangan hari raya">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya Makan</label>
                                        <input type="text" class="form-control removeLater" id="biaya_makan" name="biaya_makan" placeholder="Nominal jumlah makan">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">LAIN</label>
                                        <input type="text" class="form-control removeLater" id="lain" name="lain" placeholder="Nominal biaya lain">
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="url_instagram">Nama biaya</label>
                                        <input type="text" class="form-control removeLater" id="nama_biaya" name="nama_biaya" placeholder="Nominal biaya lain">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya pertahun</label>
                                        <input type="text" class="form-control removeLater" id="biaya_pertahun" name="biaya_pertahun" placeholder="Nominal biaya lain">
                                    </div>
                                    <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Biaya bagian penjualan</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <span>Total Penjualan</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" readonly="true" class="form-control" id="total_bag_penjualan" name="total_bag_penjualan" placeholder="">
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
                    'biaya_pertahun'        : $('input[name=biaya_pertahun]').val()

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('b.adm.store.master') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode      : true
                })
                .done(function(data) {
                    $("#total_bag_penjualan").val(data.biaya_perbulan);

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
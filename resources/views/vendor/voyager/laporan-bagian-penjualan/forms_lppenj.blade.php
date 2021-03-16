@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Laporan Bag. penjualan
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
                                        <label for="url_instagram">Biaya tahun pertama</label>
                                        <input type="text" class="form-control removeLater" id="th1" name="th1" placeholder="Nominal tahun pertama">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya tahun kedua</label>
                                        <input type="text" class="form-control removeLater" id="th2" name="th2" placeholder="Nominal tahun kedua">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya tahun ketiga</label>
                                        <input type="text" class="form-control removeLater" id="th3" name="th3" placeholder="Nominal tahun ketiga">
                                    </div>
                                    <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Laporan bagian penjualan</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <span>Total bag. penjualan</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" readonly="true" class="form-control" id="total_l_bag_penjualan" name="total_l_bag_penjualan" placeholder="">
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
                    'tahun1'        : $('input[name=th1]').val(),
                    'tahun2'        : $('input[name=th2]').val(),
                    'tahun3'        : $('input[name=th3]').val()

                };

                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin mengakumulasi biaya perhitungan bagian penjualan sekarang?',
                    showDenyButton: true,
                    showCancelButton: true,
                    confirmButtonText: `ya, akumulasikan & simpan datanya`,
                    cancelButtonText: `jangan diakumulasi & simpan data`,
                    denyButtonText: `belum, masih mengakumulasi biaya & jangan simpan`,
                    }).then((result) => {
                    /* Read more about isConfirmed, isDenied below */
                    if (result.isConfirmed) {

                        const pesanStore = Swal.mixin({
                                    toast: true,
                                    position: 'top-end',
                                    showConfirmButton: false,
                                    timer: 10000,
                                    timerProgressBar: true,
                                    didOpen: (toast) => {
                                        toast.addEventListener('mouseenter', Swal.stopTimer)
                                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                                    }
                                })
                                          
                                 pesanStore.fire({
                                    icon: 'info',
                                    title: 'Data sedang diproses, tunggu sebentar..'
                                })

                        let store = {...formData, 'setTo': result}

                        $.ajax({
                            type        : 'POST',
                            url         : "{{ route('lps.bagian.penjualan.storeds') }}",
                            data        : store, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            $("#total_l_bag_penjualan").val(data.total_biaya_perbulan_lbpenjualan);

                            if(data.isConfirmed == "true"){

                                return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya bagian penjualan berhasil diakumulasi & disimpan', 'success')
                            }

                        });

                    } else if (result.isDenied) {

                        const PesanPending = Swal.mixin({
                                    toast: true,
                                    position: 'top-end',
                                    showConfirmButton: false,
                                    timer: 10000,
                                    timerProgressBar: true,
                                    didOpen: (toast) => {
                                        toast.addEventListener('mouseenter', Swal.stopTimer)
                                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                                    }
                                })
                                          
                                 PesanPending.fire({
                                    icon: 'info',
                                    title: 'Data sedang diproses, tunggu sebentar..'
                                })

                        let dataPending = {...formData, 'setTo': result}

                        $.ajax({
                            type        : 'POST',
                            url         : "{{ route('lps.bagian.penjualan.storeds') }}",
                            data        : dataPending, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            $("#total_l_bag_penjualan").val(data.total_biaya_perbulan_lbpenjualan);

                            if(data.isDenied == "true"){

                                return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi bagian penjualan, tekan tombol berwarna biru setelah menekan tombol hitung listrik, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                            }

                        });
                    }
                })

             event.preventDefault();
            });

        });

    </script>
@stop
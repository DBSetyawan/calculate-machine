
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi Account MTC
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
                                        <label for="url_instagram">Nama account</label>
                                        <input type="text" class="form-control removeLater" id="nama_account" name="nama_account" placeholder="Biaya perbaikan tahun 1">
                                    </div>
                                

                                    <div class="form-group">
                                        <label for="url_instagram">Biaya mesin tahun 1</label>
                                        <input type="text" class="form-control removeLater" id="tahun1" name="tahun1" placeholder="Biaya perbaikan tahun 1">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Biaya mesin tahun 2</label>
                                        <input type="text" class="form-control removeLater" id="tahun2" name="tahun2" placeholder="Biaya perbaikan tahun 2">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Biaya mesin tahun 3</label>
                                        <input type="text" class="form-control removeLater" id="tahun3" name="tahun3" placeholder="Biaya perbaikan tahun 3">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Total /Bulan</h3>
                        <div class="row">
                            <div class="col-md-8">
                                <span>Biaya Lain diluar Mesin Produksi yang Mungkin Perlu di Perhitungkan :</span>
                            </div>
                            <div class="container">
                                    {{-- <input type="text" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder=""> --}}
                            </div>
                        </div><br/>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total Biaya Perbulan</span>
                            </div>
                            <div class="col-md-8">
                                <input type="text" readonly="true" class="form-control" id="total_biaya_account_perbulan" name="total_biaya_account_perbulan" placeholder="">
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

                    'company_parent_id'     : $('select[name=company_parent_id]').val(),
                    'tahun1'                 : $('input[name=tahun1]').val(),
                    'nama_account'          : $('input[name=nama_account]').val(),
                    'tahun2'                 : $('input[name=tahun2]').val(),
                    'tahun3'                 : $('input[name=tahun3]').val(),
                };

       
                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya Biaya lain produksi sekarang?',
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
                            url         : "{{ route('accounts.mtc.store.master') }}", 
                            data        : store, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {

                            $("#total_biaya_account_perbulan").val("Rp "+formatCurrency(Math.round(data.total_perbulan)));

                            if(data.isConfirmed == "true"){

                                // return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi Biaya produksi lain berhasil diakumulasi & disimpan', 'success')
                               
                                let curr = '{{ route("voyager.account-mtc.index") }}';
                                setTimeout(function(){ 
                                    window.location.href = curr;
                                }, 4000);

                                pesanStore.fire({
                                    icon: 'success',
                                    title: 'Data berhasil disimpan..'
                                })
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
                                url         : "{{ route('accounts.mtc.store.master') }}", 
                                data        : dataPending, 
                                dataType    : 'json', 
                                encode          : true
                            })
                            .done(function(data) {

                                $("#total_biaya_account_perbulan").val("Rp "+formatCurrency(Math.round(data.total_perbulan)));

                                if(data.isDenied == "true"){

                                    return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi biaya biaya produksi lain, tekan tombol hitung biaya produksi lain, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                                }

                            }
                        );
                    }
                })

             event.preventDefault();
            });

        });

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }
    </script>
@stop
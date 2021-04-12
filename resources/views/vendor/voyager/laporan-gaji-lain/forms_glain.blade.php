
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi Laporan Gaji Lain
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
                                        <label for="program_id">Category</label>
                                        <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                            @foreach ($cbagian as $cb)
                                        <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
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
                                        <label for="url_instagram">Nama akun</label>
                                        <input type="text" class="form-control removeLater" id="code_account" name="code_account" placeholder="Nominal biaya lain">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Periode 1</label>
                                        <input type="text" class="form-control removeLater" id="tahun1" name="tahun1" placeholder="Nominal biaya tahun periode 1">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Periode 2</label>
                                        <input type="text" class="form-control removeLater" id="tahun2" name="tahun2" placeholder="Nominal biaya tahun periode 2">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Periode 3</label>
                                        <input type="text" class="form-control removeLater" id="tahun3" name="tahun3" placeholder="Nominal biaya tahun periode 3">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Laporan Biaya Gaji Lain</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <span>Total gaji TAHUN 2018 - 2020 </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" readonly="true" class="form-control" id="total_gj_lainnya_periode" name="total_gj_lainnya_periode" placeholder="">

                            </div>
                            <div class="container">
                            </div>
                        </div>


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
            <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;

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

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

        $(document).ready(function() {

            $('form').submit(function(event) {

                var formData = {

                    'company_parent_id'     : $('select[name=company_parent_id]').val(),
                    'category_bagian'       : $('select[name=category_bagian]').val(),
                    'code_account'          : $('input[name=code_account]').val(),
                    'tahun1'                : $('input[name=tahun1]').val(),
                    'tahun2'                : $('input[name=tahun2]').val(),
                    'tahun3'                : $('input[name=tahun3]').val(),

                };

                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin mengakumulasi biaya perhitugan gaji lainnya sekarang?',
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
                            url         : "{{ route('laporan.g.lains.store.master') }}", 
                            data        : store, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            $("#total_gj_lainnya_periode").val("Rp "+formatCurrency(Math.round(data.total_biaya_gj_periode)));

                            if(data.isConfirmed == "true"){

                                // return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya gaji lainnya berhasil diakumulasi & disimpan', 'success')
                                
                                let curr = '{{ route("voyager.laporan-gaji-lain.index") }}';
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
                                url         : "{{ route('laporan.g.lains.store.master') }}", 
                                data        : dataPending, 
                                dataType    : 'json', 
                                encode          : true
                            })
                            .done(function(data) {
                                $("#total_gj_lainnya_periode").val("Rp "+formatCurrency(Math.round(data.total_biaya_gj_periode)));

                                if(data.isDenied == "true"){

                                    return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi gaji lainnya, tekan tombol berwarna biru setelah menekan tombol hitung listrik, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                                }
                            }
                        );
                    }
                })

             event.preventDefault();
            });

        });

    </script>
@stop
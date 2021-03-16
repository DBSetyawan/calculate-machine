
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Labor
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
                                        <label for="program_id">Mesin</label>
                                        <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                            @foreach ($mesin as $m)
                                        <option value="{{$m->id}}">{{$m->code_mesin}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <input type="text" class="form-control hidden" id="code_mesin_id" name="code_mesin_id" placeholder="">

                                    {{-- <div class="form-group">
                                        <label for="program_id">Company</label>
                                        <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                            @foreach ($company as $c)
                                        <option value="{{$c->id}}">{{$c->company_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                             --}}
                             <div class="form-group">
                                <label for="company">Company</label>
                                <input type="text" class="form-control" id="company_display" name="company_display" placeholder="">
                                <input type="text" class="form-control" id="company_parent_id" name="company_parent_id" placeholder="">
                            </div>
                                    {{-- <div class="form-group">
                                        <label for="program_id">Mesin</label>
                                        <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                            @foreach ($mesin as $m)
                                        <option value="{{$m->id}}">{{$m->code_mesin}} - {{$m->deskripsi}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}

                                    {{-- <div class="form-group">
                                        <label for="program_id">Category</label>
                                        <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                            @foreach ($cbagian as $cb)
                                        <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="company">Kategori Bagian</label>
                                        <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder="">
                                        <input type="text" class="form-control" id="category_bagian" name="category_bagian" placeholder="">
                                    </div>
                                    <div class="form-group">
                                        <label for="company">Shift</label>
                                        <input type="text" class="form-control" id="shift_display" name="shift_display" placeholder="">
                                        <input type="text" class="form-control" id="shift" name="shift" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Mesin yang ditangani</label>
                                        <input type="text" class="form-control removeLater" id="jumlah_penangganan_mesin" name="jumlah_penangganan_mesin" placeholder="Jumlah mesin yang ditangani (Khusus Inputan SPV)">
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="program_id">Shift</label>
                                        <select class="form-control select2" id="shift" name="shift" required>
                                            @foreach ($listrikShift as $x)
                                            <option value="{{$x->shift}}">{{ $x->code_listrik}} - {{ $x->shift}} </option>
                                            @endforeach
                                        </select>
                                    </div> --}}

                                    <div class="form-group">
                                        <label for="url_instagram">Jumlah Karyawan SPV</label>
                                        <input type="text" class="form-control removeLater" id="supervisor" name="supervisor" placeholder="Jumlah Supervisor">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Jumlah Karyawan Operator</label>
                                        <input type="text" class="form-control removeLater" id="operator" name="operator" placeholder="Jumlah Operator">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Jumlah karyawan helper</label>
                                        <input type="text" class="form-control removeLater" id="helper" name="helper" placeholder="Jumlah Helper">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Jumlah karyawan supporting</label>
                                        <input type="text" class="form-control removeLater" id="supporting" name="supporting" placeholder="Jumlah Supporting">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Biaya Gaji / Upah (Per bulan)</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <span>Informasi gaji karyawan </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <span>Gaji Supervisor :</span>
                            </div>
                            <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="gaji_supervisor" name="gaji_supervisor" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <span>Gaji Operator :</span>
                            </div>
                            <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="gaji_operator" name="gaji_operator" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <span>Gaji Helper :</span>
                            </div>
                            <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="gaji_helper" name="gaji_helper" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <span>Total biaya gaji upah karyawan :</span>
                            </div>
                            <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <span>Jumlah Mesin yang ditanggani :</span>
                            </div>
                            <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="jumlah_mesin_yangditangani" name="jumlah_mesin_yangditangani" placeholder="">
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

        async function GetFullDataMesin(mesinid
                ) {
                    let datamesinid = {
                            mesinid:mesinid
                        }
                const apiDataMesin = "{{ route('detail.data.mesin') }}";
                        
                    const settings = {
                                method: 'POST',
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                                    'Content-Type': 'application/json;charset=utf-8'
                                    },
                                body: JSON.stringify(datamesinid)
                        }
                        try {
                                
                                const fetchResponse = await fetch(`${apiDataMesin}`, settings);
                                const data = await fetchResponse.json();
                                return data;
                            } catch (error) {
                            return error
                        }    
                    }

    $('document').ready(function () {
        $("#code_mesin_id").hide();
        $("#company_parent_id").hide();
        $("#shift").hide();
        $("#category_bagian").hide();

        $('.toggleswitch').bootstrapToggle();
            $('#code_mesin').on('change', function() {
            GetFullDataMesin(this.value).then(function(results){

                    $("#code_mesin_id").val(results.detail.id);
                    $("#company_display").val(results.detail.company_to.company_name);
                    $("#company_parent_id").val(results.detail.company_to.id);
                    $("#category_bagian_display").val(results.detail.kbagian_to.nama_bagian);
                    $("#category_bagian").val(results.detail.kbagian_to.id);
                    $("#shift_display").val("Mesin shift ke "+results.detail.asumsi_to.shift);
                    $("#shift").val(results.detail.asumsi_to.shift);
                            
                });
            });
        });

        $(document).ready(function() {

            $('form').submit(function(event) {

                var formData = {

                    'company_parent_id'     : $('input[name=company_parent_id]').val(),
                    'code_mesin'            : $('input[name=code_mesin_id]').val(),
                    'category_bagian'       : $('input[name=category_bagian]').val(),
                    'shift'                 : $('input[name=shift]').val(),
                    'supervisor'            : $('input[name=supervisor]').val(),
                    'operator'              : $('input[name=operator]').val(),
                    'helper'                : $('input[name=helper]').val(),
                    'supporting'            : $('input[name=supporting]').val(),
                    'jumlah_penangganan_mesin' : $('input[name=jumlah_penangganan_mesin]').val(),

                };

                
                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya labor sekarang?',
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
                            url         : "{{ route('labors.store.master') }}", 
                            data        : store, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            $("#gaji_supervisor").val(data.spv);
                            $("#gaji_operator").val(data.opt);
                            $("#gaji_helper").val(data.help);
                            $("#total_perbulan_p").val(data.total_biaya_levels);
                            $("#jumlah_mesin_yangditangani").val(data.set_default_mesin);

                            if(data.isConfirmed == "true"){

                                return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya labor berhasil diakumulasi & disimpan', 'success')
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
                            url         : "{{ route('labors.store.master') }}", 
                            data        : dataPending, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            $("#gaji_supervisor").val(data.spv);
                            $("#gaji_operator").val(data.opt);
                            $("#gaji_helper").val(data.help);
                            $("#total_perbulan_p").val(data.total_biaya_levels);
                            $("#jumlah_mesin_yangditangani").val(data.set_default_mesin);
  
                            if(data.isDenied == "true"){

                                return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi labor, tekan tombol berwarna biru setelah menekan tombol hitung listrik, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                            }
                        });
                    }
                })

             event.preventDefault();
            });

        });

    </script>
@stop
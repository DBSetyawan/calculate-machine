
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi Penyusutan
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
                                    <input type="text" class="form-control" id="code_mesin_id" name="code_mesin_id" placeholder="">


                                    {{-- <div class="form-group">
                                        <label for="program_id">Company</label>
                                        <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                            @foreach ($company as $c)
                                        <option value="{{$c->id}}">{{$c->company_name}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}

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
                                        <label for="url_instagram">Nama SIM</label>
                                        <input type="text" class="form-control removeLater" id="nama_sim" name="nama_sim" placeholder="Nama SIM">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Purchase</label>
                                        <input type="text" class="form-control removeLater" id="purchaseorder_value" name="purchaseorder_value" placeholder="Purchase value">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Umur(bulan)</label>
                                        <input type="text" class="form-control removeLater" id="umur" name="umur" placeholder="Umur (Bulan)">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Penyusutan/Bulan</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <span>Penyusutan. Perbulannya :</span>
                            </div>
                            <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder="">
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
            <button type="submit" class="btn btn-primary pull-right save">Hitung biaya penyusutan</button>&nbsp;

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
            $("#category_bagian").hide();
            $("#code_mesin_id").hide();
            $("#company_parent_id").hide();
            $("#company_display").prop("disabled", true);
            $("#category_bagian_display").prop("disabled", true);

                 
            $('#code_mesin').on('change', function() {

            GetFullDataMesin(this.value).then(function(results){
                    $("#code_mesin_id").val(results.detail.id);
                    $("#company_display").val(results.detail.company_to.company_name);
                    $("#company_parent_id").val(results.detail.company_to.id);
                    $("#category_bagian_display").val(results.detail.kbagian_to.nama_bagian);
                    $("#category_bagian").val(results.detail.kbagian_to.id);
                            
                });
            });


            $('.toggleswitch').bootstrapToggle();
        });

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

        $(document).ready(function() {

            $('form').submit(function(event) {

                var formData = {

                    'nama_sim'              : $('input[name=nama_sim]').val(),
                    'company_parent_id'     : $('input[name=company_parent_id]').val(),
                    'category_bagian'       : $('input[name=category_bagian]').val(),
                    'code_mesin'            : $('input[name=code_mesin_id]').val(),
                    'purchaseorder_value'   : $('input[name=purchaseorder_value]').val(),
                    'umur'                  : $('input[name=umur]').val(),

                };

                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya penyusutan sekarang?',
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
                                    url         : "{{ route('penyusutans.store.master') }}", 
                                    data        : store, 
                                    dataType    : 'json', 
                                    encode          : true
                                })
                                .done(function(data) {
                                    $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.d)));
                                    if(data.isConfirmed == "true"){

                                        return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya penyusutan berhasil diakumulasi & disimpan', 'success')
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
                                    url         : "{{ route('penyusutans.store.master') }}", 
                                    data        : dataPending, 
                                    dataType    : 'json', 
                                    encode          : true
                                })
                                .done(function(data) {
                                    $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.d)));
                                    if(data.isDenied == "true"){

                                        return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi biaya penyusutan, tekan tombol hitung penyusutan, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                                  
                                    }
                                    
                                $(".removeLater").val('');

                            }
                        );
                    }
                })

             event.preventDefault();
            });

        });

    </script>
@stop
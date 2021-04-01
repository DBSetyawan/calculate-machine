
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Master mesin
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#machine_frm">Form machine</a></li>
            <li><a href="#penyusutan_frm">Form penyusutan</a></li>
          </ul>
    <div class="tab-content">
        <div id="machine_frm" class="tab-pane fade in active">
    {{ csrf_field() }}
        <form id="formlistriks" class="form-edit-add" role="form"
            method="POST"  enctype="multipart/form-data" autocomplete="off">
            <div class="row">
                    <div class="col-md-8">
                        <div class="panel panel-bordered">
                            <div class="panel-body">
                                <div class="contanier">
                                    <div class="form-group">
                                        <label for="url_instagram">Nama mesin</label>
                                        <input type="text" class="form-control" data-validate-length-range="2" data-validate-words="2" id="code_mesin" name="code_mesin" placeholder="Nama mesin" required="required" >
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Company</label>
                                        <select class="form-control select2" id="company_id" name="company_id" required>
                                            @foreach ($company as $c)
                                        <option value="{{$c->id}}">{{$c->company_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Category</label>
                                        <select class="form-control select2" id="category_bagian_id" name="category_bagian_id" required>
                                            @foreach ($cbagian as $cb)
                                            <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Group mesin</label>
                                        <select class="form-control select2" id="group_mesin_id" name="group_mesin_id" required>
                                            @foreach ($group_mesin as $c)
                                        <option value="{{$c->id}}">{{$c->nama_kategori_mesin}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Shift</label>
                                        <select class="form-control select2" id="asumsi_id" name="asumsi_id" required>
                                            @foreach ($LwbpMaster as $c)
                                        <option value="{{$c->id}}">{{ $c->shift }}</option>
                                            @endforeach
                                        </select>   
                                    </div>


                                    {{-- ini diganti field REC 1.1 <div class="form-group">
                                        <label for="program_id">Kapasitas mesin</label>
                                        <select class="form-control select2" id="listrik_perjam_id" name="listrik_perjam_id" required>
                                            @foreach ($LsOutputPerjam as $c)
                                            <option value="{{$c->id}}">{{ $c->output_perjam }}</option>
                                        {{-- <option value="{{$c->id}}">{{ RumusListrikOutputPerjam::percent($c->persen)}} - {{ $c->output_perjam }}</option> --}}
                                            {{-- @endforeach
                                        </select> --}}
                                    {{-- </div> --}}

                                    <div class="form-group">
                                        <label for="url_instagram">Kapasitas mesin</label>
                                        <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="listrik_perjam_id" name="listrik_perjam_id" placeholder="Jumlah kapasitas mein">
                                    </div>
                                  
                                <div class="form-group">
                                    <label for="url_instagram">Deskripsi</label>
                                    <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="deskripsi" name="deskripsi" placeholder="Deskripsi mesin">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Ampere</label>
                                    <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="ampere" name="ampere" placeholder="Ampere">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Voltase</label>
                                    <input type="text" class="form-control" id="voltase" data-validate-length-range="6" data-validate-words="2" name="voltase" placeholder="Voltase">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Faktor Kali LWBP</label>
                                    <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="faktor_kali_lwbp" name="faktor_kali_lwbp" placeholder="Faktor kali LWBP">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Faktor Kali WBP</label>
                                    <input type="text" class="form-control" id="faktor_kali_wbp" data-validate-length-range="6" data-validate-words="2" name="faktor_kali_wbp" placeholder="Faktor kali WBP">
                                </div>
                            </div>
                            {{-- <button type="submit" class="btn btn-primary pull-right save_mach">Simpan</button>&nbsp; --}}

                            {{-- <button type="submit" class="btn btn-primary pull-right save">
                                Add Donation
                            </button> --}}
                        {{-- </form> --}}
                        </div>
                    </div>
            </div>

                </div>
                  
                    </div>
                    <div id="penyusutan_frm" class="tab-pane fade">
                        <h3>Penyusutan</h3>
                        <div class="page-content container-fluid">


                            {{-- <form class="form-edit-add" role="form"
                                method="POST" enctype="multipart/form-data" autocomplete="off"> --}}
                    
                                {{-- {{ csrf_field() }} --}}
                    
                                <div class="row">
                                        <div class="col-md-8">
                                            <div class="panel panel-bordered">
                                                <div class="panel-body">
                                                    <div class="contanier">
                    
                                                        {{-- <div class="form-group">
                                                            <label for="program_id">Mesin</label>
                                                            <select class="form-control select2" id="code_mesins" name="code_mesins" required>
                                                                @foreach ($mesin as $m)
                                                            <option value="{{$m->id}}">{{$m->code_mesin}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <input type="text" class="form-control" id="code_mesin_id" name="code_mesin_id" placeholder="">
                     --}}
                    
                                                        {{-- <div class="form-group">
                                                            <label for="program_id">Company</label>
                                                            <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                                                @foreach ($company as $c)
                                                            <option value="{{$c->id}}">{{$c->company_name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div> --}}
                    
                                                        {{-- <div class="form-group">
                                                            <label for="company">Company</label>
                                                            <input type="text" class="form-control" id="company_display" name="company_display" placeholder="">
                                                            <input type="text" class="form-control" id="company_parent_id" name="company_parent_id" placeholder="">
                                                        </div>
                                                 --}}
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
                                                        {{-- <div class="form-group">
                                                            <label for="company">Kategori Bagian</label>
                                                            <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder="">
                                                            <input type="text" class="form-control" id="category_bagian" name="category_bagian" placeholder="">
                                                        </div> --}}
                    
                                                        <div class="form-group">
                                                            <label for="url_instagram">Nama SIM</label>
                                                            <input type="text" class="form-control" id="nama_sim" name="nama_sim" placeholder="Nama SIM">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="url_instagram">Purchase</label>
                                                            <input type="text" class="form-control" id="purchaseorder_value" name="purchaseorder_value" placeholder="Purchase value">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="url_instagram">Umur(bulan)</label>
                                                            <input type="text" class="form-control" id="umur" name="umur" placeholder="Umur (Bulan)">
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
                                        <button type="submit" class="btn btn-primary pull-right save_mach">Simpan & hitung penyusutan</button>&nbsp;

                                        {{-- <button type="submit" class="btn btn-primary pull-right save_peny">Hitung biaya penyusutan</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --}}
                                    </div>
                                    </div>

                                </div>
                    
                                {{-- <button type="submit" class="btn btn-primary pull-right save">
                                    Add Donation
                                </button> --}}
                            </form>
                        </div>
                    </div>
        </div>
        
    </div>
@stop

@section('javascript')
    <script>

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

        $('document').ready(function () {

            $('.toggleswitch').bootstrapToggle();

            $(".nav-tabs a").click(function(){
                $(this).tab('show');
            });
            $('.nav-tabs a').on('shown.bs.tab', function(event){
                var x = $(event.target).text();         
                var y = $(event.relatedTarget).text();  
                $(".act span").text(x);
                $(".prev span").text(y);
            });

            $("#category_bagian").hide();
            $("#code_mesin_id").hide();
            $("#company_parent_id").hide();
            $("#company_display").prop("disabled", true);
            $("#category_bagian_display").prop("disabled", true);

                 
            $('#code_mesins').on('change', function() {

            GetFullDataMesin(this.value).then(function(results){
                    $("#code_mesin_id").val(results.detail.id);
                    $("#company_display").val(results.detail.company_to.company_name);
                    $("#company_parent_id").val(results.detail.company_to.id);
                    $("#category_bagian_display").val(results.detail.kbagian_to.nama_bagian);
                    $("#category_bagian").val(results.detail.kbagian_to.id);
                            
                });
            });


        });

        $(document).ready(function() {

            $('.save_mach').click(function(event) {
            
                event.preventDefault();

                var formData = {
                    'ampere'             : $('input[name=ampere]').val(),
                    'deskripsi'             : $('input[name=deskripsi]').val(),
                    'faktor_kali_wbp'             : $('input[name=faktor_kali_wbp]').val(),
                    'faktor_kali_lwbp'             : $('input[name=faktor_kali_lwbp]').val(),
                    'voltase'            : $('input[name=voltase]').val(),
                    'code_mesin'    : $('input[name=code_mesin]').val(),
                    'group_mesin_id'   : $('select[name=group_mesin_id]').val(),
                    'category_bagian_id'     : $('select[name=category_bagian_id]').val(),
                    // 'listrik_perjam_id'        : $('select[name=listrik_perjam_id]').val(),
                    'listrik_perjam_id'        : $('input[name=listrik_perjam_id]').val(),
                    'asumsi_id'             : $('select[name=asumsi_id]').val(),
                    'company_id'    : $('select[name=company_id]').val(),
                    'nama_sim'    : $('input[name=nama_sim]').val(),
                    'purchaseorder_value'    : $('input[name=purchaseorder_value]').val(),
                    'umur'    : $('input[name=umur]').val()
                };

                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin menyimpan data mesin & hitung biaya penyusutan?',
                    showDenyButton: true,
                    showCancelButton: true,
                    confirmButtonText: `ya, simpan hasil pengakumulasian penyusutan & simpan mesin sekarang ✓`,
                    denyButtonText: `belum, masih mengakumulasi biaya penyusutan & jangan simpan mesin & penyusutannya`,
                    cancelButtonText: `jangan simpan mesin dan mengakumulasi mesin`,
                    }).then((result) => {
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
                            url         : "{{ route('mesin.storePlaceEv.master') }}", 
                            data        : store, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            
                            $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.rumusTotalPenyusutan)));

                            if(data.isConfirmed == "true"){

                                let curr = '{{ route("voyager.mesin.index") }}';
                                setTimeout(function(){ 
                                    window.location.href = curr;
                                }, 6500);

                                    // return Swal.fire('Data berhasil disimpan.', 'pastikan jika ingin menambah mesin, lengkapi data di master listrik | penyusutan | labor | MTC', 'success')
                                    pesanStore.fire({
                                        icon: 'success',
                                        title: 'Data berhasil disimpan..'
                                    })
                                }
                              
                            }
                        );

                    } if (result.isDenied) {

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

                        let Pending = {...formData, 'setTo': result}

                        $.ajax({
                            type        : 'POST',
                            url         : "{{ route('mesin.storePlaceEv.master') }}", 
                            data        : Pending, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            
                            $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.rumusTotalPenyusutan)));

                            if(data.isDenied == "true"){

                                    // return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi biaya penyusutan, tekan tombol simpan & hitung penyusutan. kemudian sistem akan mengakumulasi biaya penyusutan dan sekaligus menyimpan datanya.', 'info')
                                           
                                    pesanStore.fire({
                                        icon: 'success',
                                        title: 'Data berhasil disimpan..'
                                    })
                                }
                            }
                        );
                    }
                })

            });

        });

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

                    $('.save_peny').click(function(event) {

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

                                                let curr = '{{ route("voyager.penyusutan.index") }}';
                                                setTimeout(function(){ 
                                                    window.location.href = curr;
                                                }, 4000);

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
    </script>
@stop
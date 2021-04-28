
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi listrik
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">

        <form id="formlistriks" class="form-edit-add" role="form"
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
                                            <option value="">Pilih</option>
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
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="company">Company</label>
                                        <input type="text" class="form-control" id="company_display" name="company_display" placeholder="">
                                        <input type="text" class="form-control" id="company_parent_id" name="company_parent_id" placeholder="">
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="program_id">Group mesin</label>
                                        <select class="form-control select2" id="group_mesin" name="group_mesin" required>
                                            @foreach ($group_mesin as $c)
                                        <option value="{{$c->id}}">{{$c->nama_kategori_mesin}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}

                                    <div class="form-group">
                                        <label for="company">Group Mesin</label>
                                        <input type="text" class="form-control" id="group_mesin_display" name="group_mesin_display" placeholder="">
                                        <input type="text" class="form-control" id="group_mesin" name="group_mesin" placeholder="">
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="program_id">Listrik /Jam</label>
                                        <select class="form-control select2" id="perjam" name="perjam" required>
                                            @foreach ($LsOutputPerjam as $c)
                                        <option value="{{$c->id}}">{{ RumusListrikOutputPerjam::percent($c->persen)}} - {{ $c->output_perjam }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                             --}}
                                    <div class="form-group">
                                        <label for="company">Kapasitas mesin</label>
                                        <input type="text" class="form-control" id="perjam_display" name="perjam_display" placeholder="">
                                        <input type="text" class="form-control" id="perjam" name="perjam" placeholder="">
                                    </div>

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

                                    {{-- <div class="form-group">
                                        <label for="url_instagram">Shift</label>
                                        <input type="text" class="form-control" id="shift" name="shift" placeholder="Shift">
                                    </div> --}}

                                    {{-- <div class="form-group">
                                        <label for="program_id">Shift</label>
                                        <select class="form-control select2 slect2" id="shift" name="shift" required>
                                            <option value="0">None</option>
                                            <option value="1">Shift 1</option>
                                            <option value="2">Shift 2</option>
                                            <option value="3">Shift 3</option>
                                        </select>
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="company">Shift</label>
                                        <input type="text" class="form-control" id="shift_display" name="shift_display" placeholder="">
                                        <input type="text" class="form-control" id="shift" name="shift" placeholder="">
                                    </div>
                                    {{-- 
                                         const LWBP = 17;
                                            const WBP = 4;
                                            const IntvalMinggu = 6;
                                        --}}

                                    <div class="form-group hidden">
                                        <label for="url_instagram">LWBP (shift1)</label>
                                        {{-- <input type="text" class="form-control" id="sht_1lwbp" value="{{ $LwbpMaster[2]->lwbp }}" name="sht_1lwbp" placeholder=""> --}}
                                        <input type="text" class="form-control" id="sht_1lwbp" name="sht_1lwbp" placeholder="">
                                    </div>

                                    <div class="form-group hidden">
                                        <label for="url_instagram">WBP (shift 1,2,3)</label>
                                        <input type="text" class="form-control" id="wbp" name="wbp" placeholder="">
                                        {{-- <input type="text" class="form-control" id="wbp" value="{{ $LwbpMaster[0]->wbp }}" name="wbp" placeholder=""> --}}
                                    </div>

                                    <div class="form-group hidden">
                                        <label for="shift2">LWBP (shift 2)</label>
                                        {{-- <input type="text"  class="form-control" id="sht_2lwbp" value="{{ $LwbpMaster[1]->lwbp }}" name="sht_2lwbp" placeholder=""> --}}
                                        <input type="text"  class="form-control" id="sht_2lwbp" name="sht_2lwbp" placeholder="">
                                    </div>

                                    <div class="form-group hidden">
                                        <label for="shift3">LWBP (shift 3)</label>
                                        <input type="text" class="form-control" id="sht_3lwbp" name="sht_3lwbp" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Hitungan minggu dalam angka</label>
                                        <input type="text" class="form-control" id="intervalnumeric" name="intervalnumeric" placeholder="Ampere">
                                        {{-- <input type="text" class="form-control" id="intervalnumeric" value="{{ $LwbpMaster[0]->Intervalmingguan }}" name="intervalnumeric" placeholder="Ampere"> --}}
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Ampere</label>
                                        <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="ampere" name="ampere" placeholder="Ampere" required="required" >
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Voltase</label>
                                        <input type="text" class="form-control" id="voltase" data-validate-length-range="6" data-validate-words="2" name="voltase" placeholder="Voltase" required="required" >
                                    </div>
                                <div class="contanier">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <span class="badge badge-success" id="comp"></span>
                                        </div>
                                        <div class="form-group">
                                           
                                            <label for="url_instagram">Faktor kali LWBP</label>
                                            <input type="text" class="form-control fkl" id="faktor_kali_lwbp" name="faktor_kali_lwbp" placeholder="Faktor kali LWBP" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="url_instagram">Faktor kali WBP</label>
                                            <input type="text" class="form-control fkw" id="faktor_kali_wbp" name="faktor_kali_wbp" placeholder="Faktor kali WBP" readonly>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>Akumulasi Listrik/Minggu</h3>
                        <div class="row">
                            <div class="col-md-4">
                                <span>LWBP Perminggu</span>
                            </div>
                            <div class="col-md-8">
                                <input type="text" readonly="true" class="form-control" id="lwbp_" name="lwbp_" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>WBP Perminggu</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="wbp_" name="wbp_" placeholder=""></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total biaya listrik</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="totalbiayalstrk_" name="totalbiayalstrk_" placeholder=""></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total Cost Perbulan</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="totalcostperbulan" name="totalcostperbulan" placeholder=""></span>
                            </div>
                        </div>

                        {{-- <div class="row">
                            <div class="col-md-4">
                                <span>Total Cost Perbulan + ADM</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" class="form-control" id="totalcostperbulanadm" name="totalcostperbulanadm" placeholder=""></span>
                            </div>
                        </div> --}}

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
            <button type="submit" class="btn btn-primary pull-right save">Kalkulasi Listrik</button>&nbsp;

            {{-- <button type="submit" class="btn btn-primary pull-right save">
                Add Donation
            </button> --}}
        </form>
    </div>
@stop

@section('javascript')
    <script>

        async function GetFullDataMesin(mesinid
                ) {
                            let datamesinid = {
                                    mesinid:mesinid
                                }
                        const apiDataMesin = "{{ route('detail.data.mesins') }}";
                                
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

            $("#company_parent_id").hide();
            $("#group_mesin").hide();
            $("#perjam").hide();
            $("#category_bagian").hide();
            $("#shift").hide();

            $("#company_display").prop("disabled", true);
            $("#group_mesin_display").prop("disabled", true);
            $("#perjam_display").prop("disabled", true);
            $("#category_bagian_display").prop("disabled", true);
            $("#shift_display").prop("disabled", true);
            $("#ampere").prop("disabled", true);
            $("#voltase").prop("disabled", true);
            $('#code_mesin').on('change', function() {
   

                GetFullDataMesin(this.value).then(function(results){
                        $("#code_mesin_id").val(results.detail.id);
                        $("#company_display").val(results.detail.company_to.company_name);
                        $("#company_parent_id").val(results.detail.company_to.id);
                        $("#group_mesin_display").val(results.detail.group_mesin_to.nama_kategori_mesin);
                        $("#group_mesin").val(results.detail.group_mesin_to.id);
                        $("#perjam_display").val(results.detail.capacity_mch);
                        // $("#perjam_display").val(results.detail.mesin_listrik_perjam_to.output_perjam);
                        // $("#perjam_display").val( (results.detail.mesin_listrik_perjam_to.persen * 100 ).toFixed(1) +"%");
                        // $("#perjam").val(results.detail.mesin_listrik_perjam_to.persen);
                        $("#perjam").val(results.detail.capacity_mch);
                        $("#category_bagian_display").val(results.detail.kbagian_to.nama_bagian);
                        $("#category_bagian").val(results.detail.kbagian_to.id);
                        $("#ampere").val(results.detail.ampere);
                        $("#voltase").val(results.detail.voltase);
                        $("#shift_display").val("Mesin shift ke "+results.detail.asumsi_to.shift);
                        $("#shift").val(results.detail.asumsi_to.shift);
                        $("#comp").html(results.detail.has_location_mch_id.company_name);
                        $(".fkl").val(results.detail.faktor_kali_lwbp);
                        $(".fkw").val(results.detail.faktor_kali_wbp);

                            if( results.detail.asumsi_to.shift == "1"){
                                //  shift1()
                                $("#sht_1lwbp").val(results.detail.asumsi_to.lwbp);
                                $("#wbp").val(results.detail.asumsi_to.wbp);
                                $("#intervalnumeric").val(results.detail.asumsi_to.Intervalmingguan);

                                document.getElementById("sht_1lwbp").style.display = "inline";
                                document.getElementById("wbp").style.display = "inline";
                                document.getElementById("sht_2lwbp").style.display = "none";
                                document.getElementById("sht_3lwbp").style.display = "none";
                                document.getElementById("intervalnumeric").style.display = "inline";

                                $('#sht_1lwbp').attr('disabled', true);
                                $('#wbp').attr('disabled', true);
                                $('#sht_2lwbp').attr('disabled', true);
                                $('#sht_3lwbp').attr('disabled', true);
                                $('#intervalnumeric').attr('disabled', true);

                            } 

                            if( results.detail.asumsi_to.shift == "2"){
                                // shift2()
                                $("#sht_2lwbp").val(results.detail.asumsi_to.lwbp);
                                $("#wbp").val(results.detail.asumsi_to.wbp);
                                $("#intervalnumeric").val(results.detail.asumsi_to.Intervalmingguan);

                                document.getElementById("sht_1lwbp").style.display = "none";
                                document.getElementById("sht_2lwbp").style.display = "inline";
                                document.getElementById("sht_3lwbp").style.display = "none";
                                document.getElementById("wbp").style.display = "inline";
                                document.getElementById("intervalnumeric").style.display = "inline";

                                $('#sht_1lwbp').attr('disabled', true);
                                $('#wbp').attr('disabled', true);
                                $('#sht_2lwbp').attr('disabled', true);
                                $('#sht_3lwbp').attr('disabled', true);
                                $('#intervalnumeric').attr('disabled', true);
                                
                            }
                            
                            if( results.detail.asumsi_to.shift == "3"){
                                // shift3()
                                $("#sht_3lwbp").val(results.detail.asumsi_to.lwbp);
                                $("#wbp").val(results.detail.asumsi_to.wbp);
                                $("#intervalnumeric").val(results.detail.asumsi_to.Intervalmingguan);

                                document.getElementById("sht_2lwbp").style.display = "none";
                                document.getElementById("sht_3lwbp").style.display = "inline";
                                document.getElementById("sht_1lwbp").style.display = "none";
                                document.getElementById("wbp").style.display = "inline";
                                document.getElementById("intervalnumeric").style.display = "inline";

                                $('#sht_1lwbp').attr('disabled', true);
                                $('#wbp').attr('disabled', true);
                                $('#sht_2lwbp').attr('disabled', true);
                                $('#sht_3lwbp').attr('disabled', true);
                                $('#intervalnumeric').attr('disabled', true);

                            }
                        
                    }
                );  

            });

    function shift1() {
        document.getElementById("sht_1lwbp").style.display = "inline";
        document.getElementById("wbp").style.display = "inline";
        document.getElementById("sht_2lwbp").style.display = "none";
        document.getElementById("sht_3lwbp").style.display = "none";
        document.getElementById("intervalnumeric").style.display = "inline";

        $('#sht_1lwbp').attr('disabled', true);
        $('#wbp').attr('disabled', true);
        $('#sht_2lwbp').attr('disabled', true);
        $('#sht_3lwbp').attr('disabled', true);
        $('#intervalnumeric').attr('disabled', true);

    }

    function shift2() {
        document.getElementById("sht_1lwbp").style.display = "none";
        document.getElementById("sht_2lwbp").style.display = "inline";
        document.getElementById("sht_3lwbp").style.display = "none";
        document.getElementById("wbp").style.display = "inline";
        document.getElementById("intervalnumeric").style.display = "inline";

        $('#sht_1lwbp').attr('disabled', true);
        $('#wbp').attr('disabled', true);
        $('#sht_2lwbp').attr('disabled', true);
        $('#sht_3lwbp').attr('disabled', true);
        $('#intervalnumeric').attr('disabled', true);
    }

    function shift3() {
        document.getElementById("sht_2lwbp").style.display = "none";
        document.getElementById("sht_3lwbp").style.display = "inline";
        document.getElementById("sht_1lwbp").style.display = "none";
        document.getElementById("wbp").style.display = "inline";
        document.getElementById("intervalnumeric").style.display = "inline";

        $('#sht_1lwbp').attr('disabled', true);
        $('#wbp').attr('disabled', true);
        $('#sht_2lwbp').attr('disabled', true);
        $('#sht_3lwbp').attr('disabled', true);
        $('#intervalnumeric').attr('disabled', true);
    }

    function reset() {
        // document.getElementById("wbp").style.display = "none";
        // document.getElementById("lwbp").style.display = "none";
        // document.getElementById("sht_2lwbp").style.display = "none";
        // document.getElementById("sht_3lwbp").style.display = "none";
        // document.getElementById("intervalnumeric").style.display = "none";

        $("#sht_3lwbp").hide();
        $("#sht_2lwbp").hide();
        $("#sht_1lwbp").hide();
        $("#wbp").hide();
        $("#intervalnumeric").hide();
    }

    $(document).ready(function(){
        $("#sht_3lwbp").hide();
        $("#sht_2lwbp").hide();
        $("#sht_1lwbp").hide();
        $("#wbp").hide();
        $("#intervalnumeric").hide();
        

        $('.slect2').on('change', function() {
            if(this.value == "0") {
               reset();
            }

            if( this.value == "1"){
                shift1()
            } 
            if( this.value == "2"){
                shift2()
            } 
            if( this.value == "3"){
                shift3()
            }
            
        });
    });

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

        $('document').ready(function () {

            $('.toggleswitch').bootstrapToggle();
        });

        $(document).ready(function() {

            $('form').submit(function(event) {

                var formData = {

                    'ampere'             : $('input[name=ampere]').val(),
                    'voltase'            : $('input[name=voltase]').val(),
                    'faktor_kali_wbp'    : $('input[name=faktor_kali_wbp]').val(),
                    'faktor_kali_lwbp'   : $('input[name=faktor_kali_lwbp]').val(),
                    'persenlistriks'     : $('input[name=persenlistriks]').val(),
                    'group_mesin'        : $('input[name=group_mesin]').val(),
                    'company_parent_id'  : $('input[name=company_parent_id]').val(),
                    'perjam'             : $('input[name=perjam]').val(),
                    'category_bagian'    : $('input[name=category_bagian]').val(),
                    'code_mesin'         : $('input[name=code_mesin_id]').val(),

                    'shift'              : $('input[name=shift]').val(),
                    'sht_1lwbp'          : $('input[name=sht_1lwbp]').val(),
                    'sht_2lwbp'          : $('input[name=sht_2lwbp]').val(),
                    'sht_3lwbp'          : $('input[name=sht_3lwbp]').val(),
                    'wbp'                : $('input[name=wbp]').val(),
                    'intervalnumeric'    : $('input[name=intervalnumeric]').val(),

                };

                Swal.fire({
                    title: 'Informasi',
                    icon: "question",
                    text: 'Apakah anda ingin mengakumulasi biaya perhitugan listrik sekarang?',
                    showDenyButton: true,
                    showCancelButton: true,
                    confirmButtonText: `ya, akumulasikan & simpan datanya ✓`,
                    cancelButtonText: `jangan diakumulasi & simpan data`,
                    denyButtonText: `belum, masih mengakumulasi biaya & jangan simpan`,
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
                            url         : "{{ route('listriks.store.master') }}", 
                            data        : store, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            
                            $("#totalcostperbulanadm").val("Rp "+formatCurrency(Math.round(data.ncost_bulan_plus_adm)));
                            $("#persenlistriks").val("Rp "+formatCurrency(Math.round(data.persen_listrik)));
                            $("#lwbp_").val(Math.round(data.lwbp_perminggu)); 
                            $("#wbp_").val(Math.round(data.wbp_perminggu)); 
                            $("#totalbiayalstrk_").val("Rp "+formatCurrency(Math.round(data.total_biaya_listrik_perminggu)));
                            $("#totalcostperbulan").val("Rp "+formatCurrency(Math.round(data.totalbiaya_cost_perbulan)));
                            
                            if(data.isConfirmed == "true"){
                                let timerInterval
                                let curr = '{{ route("voyager.listrik.index") }}';
                                    if(data.is_tr_conn == 'dx'){

                                        Swal.fire({
                                            icon: "info",
                                            title: 'Machine update!',
                                            html: "Mesin berhasil diupdate & check kembali mesin jika ada mesin sudah ada dengan status closed, mesin tidak dapat ditambahkan lagi atau direkalkulasi kembali (locked).",
                                            timer: 11500,
                                            allowOutsideClick: false,
                                            allowEscapeKey: false,
                                            stopKeydownPropagation: true,
                                            timerProgressBar: true,
                                        didOpen: () => {
                                            // Swal.showLoading()
                                            timerInterval = setInterval(() => {
                                            const content = Swal.getContent()
                                            if (content) {
                                                const b = content.querySelector('b')
                                                if (b) {
                                                b.textContent = Swal.getTimerLeft()
                                                }
                                            }
                                            }, 100)
                                        },
                                        willClose: () => {
                                            clearInterval(timerInterval)
                                        }
                                        }).then((result) => {
                                            if (result.dismiss === Swal.DismissReason.timer) {
                                                console.log('I was closed by the timer')
                                            }
                                        })

                                    } else if(data.is_tr_conn == 'xc'){

                                        Swal.fire({
                                            icon: "info",
                                            title: 'Machine update!',
                                            html: "Mesin berhasil diupdate, sistem mendeteksi transaksi mesin sudah diclosed(locked) & mesin distatus open sudah ada.",
                                            timer: 11500,
                                            allowOutsideClick: false,
                                            allowEscapeKey: false,
                                            stopKeydownPropagation: true,
                                            timerProgressBar: false,
                                        didOpen: () => {
                                            // Swal.showLoading()
                                            timerInterval = setInterval(() => {
                                            const content = Swal.getContent()
                                            if (content) {
                                                const b = content.querySelector('b')
                                                if (b) {
                                                b.textContent = Swal.getTimerLeft()
                                                }
                                            }
                                            }, 100)
                                        },
                                        willClose: () => {
                                            clearInterval(timerInterval)
                                        }
                                        }).then((result) => {
                                            if (result.dismiss === Swal.DismissReason.timer) {
                                                console.log('I was closed by the timer')
                                            }
                                        })
                                    } else if(data.is_tr_conn == 'sc') {

                                        pesanStore.fire({
                                            icon: 'success',
                                            title: 'Data passed'
                                        })

                                        setTimeout(function(){ 
                                            window.location.href = curr;
                                        }, 5000);
                                    } else {
                                        pesanStore.fire({
                                            icon: 'danger',
                                            title: 'error tidak diketahui..'
                                        })
                                    }
                                }
                              
                            }
                        );

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
                                url         : "{{ route('listriks.store.master') }}", 
                                data        : dataPending, 
                                dataType    : 'json', 
                                encode          : true
                            })
                            .done(function(data) {
                                $("#lwbp_").val(Math.round(data.lwbp_perminggu)); 
                                $("#wbp_").val(Math.round(data.wbp_perminggu)); 
                                $("#totalbiayalstrk_").val("Rp "+formatCurrency(Math.round(data.total_biaya_listrik_perminggu)));
                                $("#totalcostperbulan").val("Rp "+formatCurrency(Math.round(data.totalbiaya_cost_perbulan)));
                                // $("#totalcostperbulanadm").val(data.ncost_bulan_plus_adm);
                                // $("#persenlistriks").val(data.persen_listrik);
                                
                                if(data.isDenied == "true"){

                                    return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi listrik, tekan tombol berwarna biru setelah menekan tombol hitung listrik, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
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
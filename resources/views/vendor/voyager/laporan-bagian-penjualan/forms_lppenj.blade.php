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
                                        <label for="oprd">Open periode </label>
                                        <select class="form-control select2" id="oprd" name="oprd" required>
                                            <option value="4"> All Periode</option>
                                            <option value="1"> Open periode 1</option>
                                            <option value="6"> Open periode 1 / 2</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Periode 1</label>
                                        <input type="text" class="form-control removeLater" id="tahun1" name="tahun1" placeholder="Nominal per periode">
                                        <input type="date" class="form-control" id="start_date1" placeholder="Start Date"/> 
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Periode 2</label>
                                        <input type="text" class="form-control removeLater" id="tahun2" name="tahun2" placeholder="Nominal per periode">
                                        <input type="date" class="form-control" id="start_date2" placeholder="Start Date"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Periode 3</label>
                                        <input type="text" class="form-control removeLater" id="tahun3" name="tahun3" placeholder="Nominal per periode">
                                        <input type="date" class="form-control" id="start_date3" placeholder="Start Date"/>
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

        function open_periode1(){

            $("#tahun1").show();
            $("#tahun2").hide();
            $("#tahun3").hide();

            $("#tahun2").val('');
            $("#tahun3").val('');

            $("#start_date1").show();
            $("#start_date2").hide();
            $("#start_date3").hide();

            }

            function open_periode4(){

            $("#tahun3").show();
            $("#tahun2").show();
            $("#tahun1").show();

            $("#start_date1").show();
            $("#start_date2").show();
            $("#start_date3").show();

            }

            function close_periode4(){

            $("#tahun3").hide();
            $("#tahun2").hide();
            $("#tahun1").hide();

            $("#tahun1").val('');
            $("#tahun2").val('');
            $("#tahun3").val('');

            $("#start_date3").hide();
            $("#start_date2").hide();
            $("#start_date1").hide();


            }

            function open_periode2(){

            $("#tahun2").show();
            $("#tahun3").hide();
            $("#tahun1").hide();

            $("#tahun3").val('');
            $("#tahun1").val('');

            $("#start_date1").hide();
            $("#start_date3").hide();
            $("#start_date2").show();

            }

            function open_periode3(){

            $("#tahun3").show();
            $("#tahun2").hide();
            $("#tahun1").hide();

            $("#tahun2").val('');
            $("#tahun1").val('');

            $("#start_date1").hide();
            $("#start_date3").show();
            $("#start_date2").hide();

            }

            function open_periode31(){

            $("#tahun3").show();
            $("#tahun2").hide();
            $("#tahun1").show();

            $("#tahun2").val('');

            $("#start_date3").show();
            $("#start_date1").show();
            $("#start_date2").hide();

            }

            function open_periode21(){

            $("#tahun3").hide();
            $("#tahun2").show();
            $("#tahun1").show();

            $("#tahun3").val('');

            $("#start_date3").hide();
            $("#start_date2").show();
            $("#start_date2").show();

            }

            function open_periode32(){

            $("#tahun3").show();
            $("#tahun2").show();
            $("#tahun1").hide();

            $("#tahun1").val('');

            $("#start_date1").hide();
            $("#start_date2").show();
            $("#start_date2").show();


            }

            $('#oprd').on('change', function() {
            if(this.value == 1){
                open_periode1();
            }else if(this.value == 2){
                open_periode2();
            }else if(this.value == 3){
                open_periode3();
            }else if(this.value == 4){
                open_periode4();
            }else if(this.value == 5){
                open_periode31();
            }else if(this.value == 6){
                open_periode21();
            }else if(this.value == 7){
                open_periode32();
            } else {
                close_periode4();
            }

    });

        
    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

        $('document').ready(function () {
            var today = moment().format('l');

            $('#start_date1').val(today);
            $('#start_date2').val(today);
            $('#start_date3').val(today);

            $("#start_date1").hide();
            $("#start_date2").hide();
            $("#start_date3").hide();

            $('.toggleswitch').bootstrapToggle();
        });

        $(document).ready(function() {

            $('form').submit(function(event) {
                var formData = {

                    'company_parent_id'     : $('select[name=company_parent_id]').val(),
                    'nama_biaya'            : $('input[name=nama_biaya]').val(),
                    'tahun1'                : $('input[name=tahun1]').val(),
                    'tahun2'                : $('input[name=tahun2]').val(),
                    'tahun3'                : $('input[name=tahun3]').val(),
                    'tahun_periode_vr1'      : $('input[id=start_date1]').val(),
                    'tahun_periode_vr2'      : $('input[id=start_date2]').val(),
                    'tahun_periode_vr3'      : $('input[id=start_date2]').val()

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
                            $("#total_l_bag_penjualan").val("Rp "+formatCurrency(Math.round(data.total_biaya_perbulan_lbpenjualan)));

                            if(data.isConfirmed == "true"){

                                // return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya bagian penjualan berhasil diakumulasi & disimpan', 'success')
                                
                                let curr = '{{ route("voyager.laporan-bagian-penjualan.index") }}';
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
                            url         : "{{ route('lps.bagian.penjualan.storeds') }}",
                            data        : dataPending, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            $("#total_l_bag_penjualan").val("Rp "+formatCurrency(Math.round(data.total_biaya_perbulan_lbpenjualan)));

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
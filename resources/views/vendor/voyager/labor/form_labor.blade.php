
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
                                        <label for="program_id">Detail group</label>
                                            <select class="form-control select2" id="grp_id" name="grp_id" required>
                                                <option value="5"> Group Potong / Cetak</option>
                                                <option value="7"> Groupp Hotprint / Plong / Sortir</option>
                                                <option value="4"> Groupp Lem</option>
                                            </select>
                                    </div>
                                    {{-- <div class="form-group">
                                        <label for="program_id">Group mesin</label>
                                            <select class="form-control select2" id="group_mesin_id" name="group_mesin_id" required>
                                            {{-- @foreach ($Lb8KategoriMesin as $m)
                                        <option value="{{$m->id}}">{{$m->nama_kategori_mesin}}</option>
                                            @endforeach --}}
                                        {{-- </select>
                                    </div> --}}
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
                             {{-- <div class="form-group">
                                <label for="company">kategori bagian group mesin</label>
                                <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder="">
                                <input type="text" class="form-control" id="category_bagian_id" name="category_bagian_id" placeholder="">

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
                                    {{-- <div class="form-group">
                                        <label for="company">Kategori Bagian</label> --}}
                                        {{-- <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder=""> --}}
                                    {{-- </div> --}}
                                    {{-- <div class="form-group">
                                        <label for="program_id">Mesin</label>
                                        <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                            @foreach ($mesin as $m)
                                        <option value="{{$m->id}}">{{$m->code_mesin}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    <div class="form-group"> 
                                        <label for="company">Shift</label>
                                        <input type="text" class="form-control" id="shift_display" name="shift_display" placeholder="">
                                        <input type="text" class="form-control" id="shift" name="shift" placeholder="">
                                    </div>

                                    {{-- <div class="form-group">
                                        <label for="url_instagram">Mesin yang ditangani</label>
                                        <input type="text" class="form-control removeLater" id="jumlah_penangganan_mesin" name="jumlah_penangganan_mesin" placeholder="Jumlah mesin yang ditangani (Khusus Inputan SPV)">
                                    </div> --}}

                                    <div class="form-group mesinch">
                                        <label for="msncheck">Jumlah mesin yang ditanggani</label>
                                        <ul><div id="mesinttid" class="mesintt"></div></ul>
                                        {{-- <input type="text" class="form-control removeLater" id="jumlah_penangganan_mesin" name="jumlah_penangganan_mesin" placeholder="Jumlah mesin yang ditangani (Khusus Inputan SPV)"> --}}
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
                                        <input type="text" class="form-control removeLater" disabled="true" value="1" id="supervisor" name="supervisor" placeholder="Jumlah Supervisor">
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

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

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

        async function GetFullDataMesin(grp_id
                ) {
                    let datamesinid = {
                            grp_id:grp_id
                            // group_mesin_id:mesinid
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

            function isEmpty(value){
                var isEmptyObject = function(a) {
                    if (typeof a.length === 'undefined') { // it's an Object, not an Array
                    var hasNonempty = Object.keys(a).some(function nonEmpty(element){
                        return !isEmpty(a[element]);
                    });
                    return hasNonempty ? false : isEmptyObject(Object.keys(a));
                    }

                    return !a.some(function nonEmpty(element) { // check if array is really not empty as JS thinks
                    return !isEmpty(element); // at least one element should be non-empty
                    });
                };
                return (
                    value == false
                    || typeof value === 'undefined'
                    || value == null
                    || (typeof value === 'object' && isEmptyObject(value))
                );
                }

    $('document').ready(function () {
 
        $("#code_mesin_id").hide();
        $("#company_parent_id").hide();
        $("#shift").hide();
        $("#category_bagian_id").hide();

        $("#company_display").prop("disabled", true);
        $("#perjam_display").prop("disabled", true);
        $("#supervisor").prop("disabled", true);
        $("#shift_display").prop("disabled", true);
        $("#category_bagian_display").prop("disabled", true);

        $('.toggleswitch').bootstrapToggle();

        $('#code_mesin').on('change', function() {
            $("#code_mesin_id").val($(this).val());
        });

            $('#grp_id').on('change', function() {
                GetFullDataMesin($("#grp_id").val()).then(function(results){

                        if(isEmpty(results.detail) == false){

                            if(results.detail.length > 0){
                                $(".notification").remove();
                            }

                            results.detail.forEach(function(eval) {
                            // for(x = 0; x < results.detail.length; x++) {
                                var element = $('<input id="mesnid" type="checkbox" name="code_mesin[]" value="'+eval.id+'"> <span class="badge badge-primary"> '+eval.code_mesin+' </span></>');
                            // console.log()
                                // console.log(results.detail[x])
                                // $("#code_mesin_id").val(results.detail.id);
                                $("#company_display").val(eval.company_to.company_name);
                                $("#company_parent_id").val(eval.company_to.id);
                                // $("#category_bagian_display").val(eval.kbagian_to.nama_bagian);
                                $("#category_bagian_display").val(eval.kbagian_to.nama_bagian);
                                $("#category_bagian_id").val(eval.kbagian_to.id);
                                $("#shift_display").val("Mesin shift ke "+eval.asumsi_to.shift);
                                $("#shift").val(eval.asumsi_to.shift);
                                // $('#mesinttid').append(elements);
                                // var clone = $("#mesinttid").clone();
                                // $("#mesinttid").remove();   
                                // $("body").append(clone);  
                                $("<div/>").addClass("notification").appendTo(".mesinch");
     
                                // elements.push(element);
                                $(".notification").each(function(){

                                    $(this).append(element);

                                });

                            })
                    
                    } else if(isEmpty(results.detail) == true) {
                              
                        $(".notification").remove();

                    }
                            
                });
            });

        });

        $(document).ready(function() {

            $('form').submit(function(event) {

            event.preventDefault();

            var data = [];
            $("input[name='code_mesin[]']:checked").each(function() {
                data.push($(this).val());
            });

                var formData = {

                    'company_parent_id'     : $('input[name=company_parent_id]').val(),
                    'code_mesin'            : $('input[name=code_mesin_id]').val(),
                    'category_bagian'       : $('input[name=category_bagian_id]').val(),
                    'shift'                 : $('input[name=shift]').val(),
                    'supervisor'            : $('input[name=supervisor]').val(),
                    'operator'              : $('input[name=operator]').val(),
                    'helper'                : $('input[name=helper]').val(),
                    'supporting'            : $('input[name=supporting]').val(),
                    'jumlah_penangganan_mesin' : $('input[name=jumlah_penangganan_mesin]').val(),
                    'jml_mesin_mch'     : $('select[name=grp_id]').val(),

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

                        if(isEmpty(data) == true) {
                           
                           return Swal.fire('#Informasi.', 'anda masih belum memilih mesin yang ditanggani.', 'info')

                       } 
                            else {

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


                                let store = {...formData, 'setTo': result, data}
                            
                                $.ajax({
                                    type        : 'POST',
                                    url         : "{{ route('labors.store.master') }}", 
                                    data        : store, 
                                    dataType    : 'json', 
                                    encode          : true
                                })
                                .done(function(data) {

                                    $("#gaji_supervisor").val("Rp "+formatCurrency(Math.round(data.spv)));
                                    $("#gaji_operator").val("Rp "+formatCurrency(Math.round(data.opt)));
                                    $("#gaji_helper").val("Rp "+formatCurrency(Math.round(data.help)));
                                    $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.total_biaya_levels)));
                                    $("#jumlah_mesin_yangditangani").val("Sebanyak : "+data.mesin+" mesin");

                                    if(data.isConfirmed == "true"){

                                        // let curr = '{{ route("voyager.labor.index") }}';
                                        // setTimeout(function(){ 
                                        //     window.location.href = curr;
                                        // }, 4000);
                                        
                                        // // return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya labor berhasil diakumulasi & disimpan', 'success')
                                        // pesanStore.fire({
                                        //     icon: 'success',
                                        //     title: 'Data berhasil disimpan..'
                                        // })

                                        let timerInterval

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
                                                    Swal.showLoading()
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
                                                    timerProgressBar: true,
                                                didOpen: () => {
                                                    Swal.showLoading()
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

                                                let curr = '{{ route("voyager.labor.index") }}';
                                                setTimeout(function(){ 
                                                    window.location.href = curr;
                                                }, 5000);
                                            } else {
                                                pesanStore.fire({
                                                    icon: 'danger',
                                                    title: 'error tidak diketahui..'
                                                }
                                            )
                                        }
                                    }
                                }
                            );
                        }

                    } else if (result.isDenied) {

                        if(isEmpty(data) == true) {
                           
                            return Swal.fire('#Informasi.', 'anda masih belum memilih mesin yang ditanggani.', 'info')

                        }
                            else {

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
                     

                        let dataPending = {...formData, 'setTo': result, data}

                        $.ajax({
                            type        : 'POST',
                            url         : "{{ route('labors.store.master') }}", 
                            data        : dataPending, 
                            dataType    : 'json', 
                            encode          : true
                        })
                        .done(function(data) {
                            $("#gaji_supervisor").val("Rp "+formatCurrency(Math.round(data.spv)));
                            $("#gaji_operator").val("Rp "+formatCurrency(Math.round(data.opt)));
                            $("#gaji_helper").val("Rp "+formatCurrency(Math.round(data.help)));
                            $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.total_biaya_levels)));
                            $("#jumlah_mesin_yangditangani").val("Sebanyak : "+data.mesin+" mesin");
  
                                if(data.isDenied == "true"){

                                     return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi labor, tekan tombol berwarna biru setelah menekan tombol hitung, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                                }
                            });
                        }
                    }
                })

            });

        });

    </script>
@stop
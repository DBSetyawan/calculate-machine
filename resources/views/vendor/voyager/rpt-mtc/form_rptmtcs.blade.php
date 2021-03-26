
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi RPT MTC
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

                                    {{-- <div class="form-group">
                                        <label for="program_id">Company</label>
                                        <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                            @foreach ($company as $c)
                                        <option value="{{$c->id}}">{{$c->company_name}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="program_id">Mesin</label>
                                        <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                            @foreach ($mesin as $m)
                                        <option value="{{$m->id}}">{{$m->code_mesin}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <input type="text" class="form-control" id="code_mesin_id" name="code_mesin_id" placeholder="">

                                    <div class="form-group">
                                        <label for="company">Company</label>
                                        <input type="text" class="form-control" id="company_display" name="company_display" placeholder="">
                                        <input type="text" class="form-control" id="company_parent_id" name="company_parent_id" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="company">Kategori Bagian</label>
                                        <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder="">
                                        <input type="text" class="form-control" id="category_bagian" name="category_bagian" placeholder="">
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
{{-- 
                                    <div class="form-group">
                                        <label for="program_id">Listrik Output Perjam</label>
                                        <select class="form-control select2" id="percent" name="percent" required>
                                            @foreach ($LsOutputPerjam as $ls)
                                        <option value="{{$ls->persen}}">{{$ls->persen}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="company">Listrik /Jam</label>
                                        <input type="text" class="form-control" id="perjam_display" name="perjam_display" placeholder="">
                                        <input type="text" class="form-control" id="perjam" name="perjam" placeholder="">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Perbaikan tahun 1</label>
                                        <input type="text" class="form-control removeLater" id="perbaikan_tahun1" name="perbaikan_tahun1" placeholder="Biaya perbaikan tahun 1">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Perbaikan tahun 2</label>
                                        <input type="text" class="form-control removeLater" id="perbaikan_tahun2" name="perbaikan_tahun2" placeholder="Biaya perbaikan tahun 2">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Perbaikan tahun 3</label>
                                        <input type="text" class="form-control removeLater" id="perbaikan_tahun3" name="perbaikan_tahun3" placeholder="Biaya perbaikan tahun 3">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Sparepart tahun 1</label>
                                        <input type="text" class="form-control removeLater" id="sparepart_tahun1" name="sparepart_tahun1" placeholder="Biaya perbaikan tahun 1">
                                    </div>
                                    <div class="form-group">
                                        <label for="url_instagram">Sparepart tahun 2</label>
                                        <input type="text" class="form-control removeLater" id="sparepart_tahun2" name="sparepart_tahun2" placeholder="Biaya perbaikan tahun 2">
                                    </div>

                                    <div class="form-group">
                                        <label for="url_instagram">Sparepart tahun 3</label>
                                        <input type="text" class="form-control removeLater" id="sparepart_tahun3" name="sparepart_tahun3" placeholder="Biaya perbaikan tahun 3">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3>RPT MTC /Bulan & /Tahun</h3>
                        <div class="row">
                            <div class="col-md-8">
                                <span>Total Biaya Sparepart dan Perbaikan di susutkan dalam 4 tahun :</span>
                            </div>
                            <div class="container">
                                    {{-- <input type="text" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder=""> --}}
                            </div>
                        </div><br/>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Rata rata perbaikan perbulan</span>
                            </div>
                            <div class="col-md-8">
                                <input type="text" readonly="true" class="form-control" id="rtrtperbaikanperbulan" name="rtrtperbaikanperbulan" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Rata rata sparepart perbulan</span>
                            </div>
                            <div class="col-md-8">
                              <input type="text" readonly="true" class="form-control" id="sparepart_perbulan" name="sparepart_perbulan" placeholder="">

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Biaya Produksi lain</span>
                            </div>
                            <div class="col-md-8">
                              <input type="text" readonly="true" class="form-control" id="biaya_produksi_lain" name="biaya_produksi_lain" placeholder="">

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total biaya perbulan</span>
                            </div>
                            <div class="col-md-8">
                              <input type="text" readonly="true" class="form-control" id="total_biaya_perbulan" name="total_biaya_perbulan" placeholder="">

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

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

        $('document').ready(function () {
            $("#company_display").prop("disabled", true);
            $("#category_bagian_display").prop("disabled", true);
            $("#perjam_display").prop("disabled", true);

            $('.toggleswitch').bootstrapToggle();
            $("#company_parent_id").hide();
            $("#code_mesin_id").hide();
            $("#category_bagian").hide();
            $("#perjam").hide();
            $('#code_mesin').on('change', function() {

                GetFullDataMesin(this.value).then(function(results){
                        $("#code_mesin_id").val(results.detail.id);
                        $("#company_display").val(results.detail.company_to.company_name);
                        $("#company_parent_id").val(results.detail.company_to.id);
                        $("#category_bagian_display").val(results.detail.kbagian_to.nama_bagian);
                        $("#category_bagian").val(results.detail.kbagian_to.id);
                        $("#perjam_display").val(parseFloat(results.detail.mesin_listrik_perjam_to.persen).toFixed(2)+"%");
                        $("#perjam").val(results.detail.mesin_listrik_perjam_to.persen);
                                
                    });
                });

        });

        $(document).ready(function() {

            $('form').submit(function(event) {

                var formData = {

                    'code_mesin'          : $('input[name=code_mesin_id]').val(),
                    'category_bagian'     : $('input[name=category_bagian]').val(),
                    'percent'             : $('input[name=perjam]').val(),
                    'company_parent_id'   : $('input[name=company_parent_id]').val(),
                    'perbaikan_tahun1'    : $('input[name=perbaikan_tahun1]').val(),
                    'perbaikan_tahun2'    : $('input[name=perbaikan_tahun2]').val(),
                    'perbaikan_tahun3'    : $('input[name=perbaikan_tahun3]').val(),

                    'sparepart_tahun1'    : $('input[name=sparepart_tahun1]').val(),
                    'sparepart_tahun2'    : $('input[name=sparepart_tahun2]').val(),
                    'sparepart_tahun3'    : $('input[name=sparepart_tahun3]').val(),

                };

                
                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya MTC sekarang?',
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
                                url         : "{{ route('rpt.mtc.store.master') }}", 
                                data        : store, 
                                dataType    : 'json', 
                                encode          : true
                            })
                            .done(function(data) {

                                $("#rtrtperbaikanperbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_perbaikan_perbulan)));
                                $("#sparepart_perbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_sparepart_perbulan)));
                                $("#biaya_produksi_lain").val("Rp "+formatCurrency(Math.round(data.biaya_produksi_lain)));
                                $("#total_biaya_perbulan").val("Rp "+formatCurrency(Math.round(data.total_biaya_perbulan)));

                                if(data.isConfirmed == "true"){

                                    let curr = '{{ route("voyager.rpt-mtc.index") }}';
                                        setTimeout(function(){ 
                                            window.location.href = curr;
                                        }, 4000);

                                        pesanStore.fire({
                                            icon: 'success',
                                            title: 'Data berhasil disimpan..'
                                        })


                                    // return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya MTC berhasil diakumulasi & disimpan', 'success')
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
                                url         : "{{ route('rpt.mtc.store.master') }}", 
                                data        : dataPending, 
                                dataType    : 'json', 
                                encode          : true
                            })
                            .done(function(data) {

                                $("#rtrtperbaikanperbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_perbaikan_perbulan)));
                                $("#biaya_produksi_lain").val("Rp "+formatCurrency(Math.round(data.biaya_produksi_lain)));
                                $("#total_biaya_perbulan").val("Rp "+formatCurrency(Math.round(data.total_biaya_perbulan)));
                                $("#sparepart_perbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_sparepart_perbulan)));
                                if(data.isDenied == "true"){

                                    return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi biaya mtc, tekan tombol hitung mtc, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                                }

                            });
                    }
                })

             event.preventDefault();
            });

        });

    </script>
@stop
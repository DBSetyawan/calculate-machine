@php
    $edit = !is_null($dataTypeContent->getKey());
    $add  = is_null($dataTypeContent->getKey());
@endphp

@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))
@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.($edit ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
    @include('voyager::multilingual.language-selector')
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
                                <div class="form-group hidden">
                                    <label for="nama">ID</label>
                                        <input type="text" class="form-control" id="id" name="id" placeholder="" value="{{ old('id', $dataTypeContent->id ?? '') }}">
                                </div>
                                <div class="form-group">
                                    <label for="program_id">Company</label>
                                    <select class="form-control select2" aria-readonly="true" id="company_parent_id" name="company_parent_id" required>
                                        @foreach ($company as $c)
                                            <option value="{{$c->id}}"  @if($dataTypeContent->company_parent_id == $c->id) selected='selected' @endif>{{$c->company_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="program_id">Mesin</label>
                                    <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                        @foreach ($mesin as $m)
                                    <option value="{{$m->id}}" @if($dataTypeContent->code_mesin == $m->id) selected='selected' @endif>{{$m->code_mesin}}</option>
                                        @endforeach
                                    </select>
                                </div>
    
                                <div class="form-group">
                                    <label for="program_id">Category</label>
                                    <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                        @foreach ($cbagian as $cb)
                                            <option value="{{$cb->id}}" @if($dataTypeContent->category_bagian == $cb->id) selected='selected' @endif>{{$cb->nama_bagian}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="program_id">Listrik Output Perjam</label>
                                    <select class="form-control select2" id="percent" name="percent" required>
                                        @foreach ($LsOutputPerjam as $ls)
                                            <option value="{{$ls->persen}}">{{ RumusListrikOutputPerjam::percent($ls->persen)}}</option>
                                    {{-- <option value="{{$ls->id}}" @if($dataTypeContent->persen == $ls->id) selected='selected' @endif>{{$cb->persen}}</option> --}}

                                        @endforeach
                                    </select>
                                </div>
                                {{-- <div class="form-group">
                                    <label for="url_instagram">Nama biaya</label>
                                    <input type="text" class="form-control removeLater" id="nama_biaya" name="nama_biaya" value="{{ $dataTypeContent->nama_biaya }}" placeholder="Nominal biaya lain">
                                </div> --}}
                                {{-- <div class="form-group">
                                    <label for="oprd">Open periode </label>
                                    <select class="form-control select2" id="oprd" name="oprd" required>
                                        <option disabled value="4"> All Periode</option>
                                        <option disabled value="1"> Open periode 1</option>
                                        <option disabled value="6"> Open periode 1 / 2</option>
                                    </select>
                                </div> --}}
                                <div class="form-group">
                                    <label for="url_instagram">Biaya periode 1 [ PERBAIKAN ]</label>
                                    <input type="text" class="form-control removeLater" id="perbaikan_tahun1" value="{{ $dataTypeContent->perbaikan_tahun1 }}" name="perbaikan_tahun1" placeholder="Nominal perbaikan periode 1">
                                    {{-- <input type="date" class="form-control" id="start_date1" value="{{  $dataTypeContent->thn_periode_1->format('Y') }}" placeholder="Start Date"/> --}}
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Periode tahun 1 [ PERBAIKAN ]</label>
                                    <input class="form-control" readonly type="text" value="{{ $dataTypeContent->thn_perbaikan_periode_1 }}" style="width:209px;" placeholder="Enter ETD" maxlength="5" id="thn_perbaikan_periode_1" name="thn_perbaikan_periode_1">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Biaya periode 2 [ PERBAIKAN ]</label>
                                    <input type="text" class="form-control removeLater" id="perbaikan_tahun2" value="{{ $dataTypeContent->perbaikan_tahun2 }}" name="perbaikan_tahun2" placeholder="Nominal perbaikan periode 2">
                                    {{-- <input type="date" class="form-control" id="start_date2" placeholder="Start Date"/> --}}
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Periode tahun 2 [ PERBAIKAN ]</label>
                                    <input class="form-control" readonly type="text" value="{{ $dataTypeContent->thn_perbaikan_periode_2 }}" style="width:209px;" placeholder="Enter ETD" maxlength="5" id="thn_perbaikan_periode_2" name="thn_perbaikan_periode_2">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Biaya periode 3 [ PERBAIKAN ]</label>
                                    <input type="text" class="form-control removeLater" id="perbaikan_tahun3" value="{{ $dataTypeContent->perbaikan_tahun3 }}" name="perbaikan_tahun3" placeholder="Nominal perbaikan periode 3">
                                    {{-- <input type="date" class="form-control" id="start_date3" placeholder="Start Date"/> --}}
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Periode tahun 3 [ PERBAIKAN ]</label>
                                    <input class="form-control" readonly type="text" value="{{ $dataTypeContent->thn_perbaikan_periode_3 }}" style="width:209px;" placeholder="Enter ETD" maxlength="5" id="thn_perbaikan_periode_3" name="thn_perbaikan_periode_3">
                                </div>
                                <br/>
                                <div class="form-group">
                                    <label for="url_instagram">Biaya periode 1 [ SPAREPART ]</label>
                                    <input type="text" class="form-control removeLater" id="sparepart_tahun1" value="{{ $dataTypeContent->sparepart_tahun1 }}" name="sparepart_tahun1" placeholder="Nominal sparepart periode 1">
                                    {{-- <input type="date" class="form-control" id="start_date3" placeholder="Start Date"/> --}}
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Periode tahun 1 [ SPAREPART ]</label>
                                    <input class="form-control" readonly type="text" value="{{ $dataTypeContent->thn_sparepart_periode_1 }}" style="width:209px;" placeholder="Enter ETD" maxlength="5" id="thn_sparepart_periode_1" name="thn_sparepart_periode_1">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Biaya periode 2 [ SPAREPART ]</label>
                                    <input type="text" class="form-control removeLater" id="sparepart_tahun2" value="{{ $dataTypeContent->sparepart_tahun2 }}" name="sparepart_tahun2" placeholder="Nominal sparepart periode 3">
                                    {{-- <input type="date" class="form-control" id="start_date3" placeholder="Start Date"/> --}}
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Periode tahun 2[ SPAREPART ]</label>
                                    <input class="form-control" readonly type="text" value="{{ $dataTypeContent->thn_sparepart_periode_2 }}" style="width:209px;" placeholder="Enter ETD" maxlength="5" id="thn_sparepart_periode_2" name="thn_sparepart_periode_2">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Biaya periode 3 [ SPAREPART ]</label>
                                    <input type="text" class="form-control removeLater" id="sparepart_tahun3" value="{{ $dataTypeContent->sparepart_tahun3 }}" name="sparepart_tahun3" placeholder="Nominal sparepart periode 3">
                                    {{-- <input type="date" class="form-control" id="start_date3" placeholder="Start Date"/> --}}
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Periode tahun 3 [ SPAREPART ]</label>
                                    <input class="form-control" readonly type="text" value="{{ $dataTypeContent->thn_sparepart_periode_3 }}" style="width:209px;" placeholder="Enter ETD" maxlength="5" id="thn_sparepart_periode_3" name="thn_sparepart_periode_3">
                                </div>
                                <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;
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
                                <input type="text" readonly="true" class="form-control" id="rtrtperbaikanperbulan" value="{{ RptCalcMachine::frm_rph( $dataTypeContent->rata_rata_sparepart_perbulan )}}" name="rtrtperbaikanperbulan" placeholder="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Rata rata sparepart perbulan</span>
                            </div>
                            <div class="col-md-8">
                              <input type="text" readonly="true" class="form-control" id="sparepart_perbulan" value="{{ RptCalcMachine::frm_rph( $dataTypeContent->rata_rata_perbaikan_perbulan )}}" name="sparepart_perbulan" placeholder="">

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Biaya Produksi lain</span>
                            </div>
                            <div class="col-md-8">
                              <input type="text" readonly="true" class="form-control" id="biaya_produksi_lain" value="{{ RptCalcMachine::frm_rph( $dataTypeContent->biaya_produksi_lain) }}" name="biaya_produksi_lain" placeholder="">

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <span>Total biaya perbulan</span>
                            </div>
                            <div class="col-md-8">
                              <input type="text" readonly="true" class="form-control" id="total_biaya_perbulan" value="{{ RptCalcMachine::frm_rph( $dataTypeContent->total_biaya_perbulan ) }}" name="total_biaya_perbulan" placeholder="">

                            </div>
                        </div>
                    </div>
                </div>
                </div>
            {{-- <div class="col-md-4">
                <div class="panel panel-bordered">
                <div class="panel-body">
                    <h3>Laporan biaya RPT</h3>
                    <div class="row">
                        <div class="col-md-12">
                            <span>Total Biaya MTC Perbulan</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="text" readonly="true" class="form-control" id="total_b_administrasi_umumlp" value="{{RptCalcMachine::frm_rph( $dataTypeContent->biaya_perbulan_bag_penjualan) }}" name="total_b_administrasi_umumlp" placeholder="">
                        </div>
                    </div>
                </div>
            </div>
            </div> --}}
        </div>

        {{-- <button type="submit" class="btn btn-primary pull-right save">
            Add Donation
        </button> --}}
    </form>
</div>
@stop

@section('javascript')
    <script>
        let jkls = "{{ $dataTypeContent->id }}";
        let id = "{{ $dataTypeContent->grp_id }}";
        let cb_id = "{{ $dataTypeContent->category_bagian }}";
        let code_mesin = "{{ $dataTypeContent->code_mesin }}";
        var params = {};
        var $file;

        function deleteHandler(tag, isMulti) {
          return function() {
            $file = $(this).siblings(tag);

            params = {
                slug:   '{{ $dataType->slug }}',
                filename:  $file.data('file-name'),
                id:     $file.data('id'),
                field:  $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
          };
        }

        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();

            //Init datepicker for date fields if data-datepicker attribute defined
            //or if browser does not handle date inputs
            $('.form-group input[type=date]').each(function (idx, elt) {
                if (elt.hasAttribute('data-datepicker')) {
                    elt.type = 'text';
                    $(elt).datetimepicker($(elt).data('datepicker'));
                } else if (elt.type != 'date') {
                    elt.type = 'text';
                    $(elt).datetimepicker({
                        format: 'L',
                        extraFormats: [ 'YYYY-MM-DD' ]
                    }).datetimepicker($(elt).data('datepicker'));
                }
            });

            @if ($isModelTranslatable)
                $('.side-body').multilingual({"editing": true});
            @endif

            $('.side-body input[data-slug-origin]').each(function(i, el) {
                $(el).slugify();
            });

            $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
            $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
            $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
            $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

            $('#confirm_delete').on('click', function(){
                $.post('{{ route('voyager.'.$dataType->slug.'.media.remove') }}', params, function (response) {
                    if ( response
                        && response.data
                        && response.data.status
                        && response.data.status == 200 ) {

                        toastr.success(response.data.message);
                        $file.parent().fadeOut(300, function() { $(this).remove(); })
                    } else {
                        toastr.error("Error removing file.");
                    }
                });

                $('#confirm_delete_modal').modal('hide');
            });
            $('[data-toggle="tooltip"]').tooltip();
        });


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

        $('.save').click(function(event) {

            event.preventDefault();
                    var formData = {
                        // 'id'                : "{{ $dataTypeContent->id }}",
                        // 'company_parent_id'     : $('select[name=company_parent_id]').val(),
                        // 'nama_biaya'            : $('input[name=nama_biaya]').val(),
                        // 'tahun1'        : $('input[name=tahun1]').val(),
                        // 'tahun2'        : $('input[name=tahun2]').val(),
                        // 'tahun3'        : $('input[name=tahun3]').val(),
                        // 'tahun_periode_vr1'      : $('input[id=start_date1]').val(),
                        // 'tahun_periode_vr2'      : $('input[id=start_date2]').val(),
                        // 'tahun_periode_vr3'      : $('input[id=start_date2]').val(),
                        'id'                    : $('input[name=id]').val(),
                        'category_bagian'       : $('select[name=category_bagian]').val(),
                        'code_mesin'            : $('select[name=code_mesin]').val(),
                        'company_parent_id'     : $('select[name=company_parent_id]').val(),
                        'perbaikan_tahun1'      : $('input[name=perbaikan_tahun1]').val(),
                        'perbaikan_tahun2'      : $('input[name=perbaikan_tahun2]').val(),
                        'perbaikan_tahun3'      : $('input[name=perbaikan_tahun3]').val(),

                        'sparepart_tahun1'      : $('input[name=sparepart_tahun1]').val(),
                        'sparepart_tahun2'      : $('input[name=sparepart_tahun2]').val(),
                        'sparepart_tahun3'      : $('input[name=sparepart_tahun3]').val(),

                        'thn_perbaikan_periode_1'      : $('input[name=thn_perbaikan_periode_1]').val(),
                        'thn_perbaikan_periode_2'      : $('input[name=thn_perbaikan_periode_2]').val(),
                        'thn_perbaikan_periode_3'      : $('input[name=thn_perbaikan_periode_3]').val(),

                        'thn_sparepart_periode_1'      : $('input[name=thn_sparepart_periode_1]').val(),
                        'thn_sparepart_periode_2'      : $('input[name=thn_sparepart_periode_2]').val(),
                        'thn_sparepart_periode_3'      : $('input[name=thn_sparepart_periode_3]').val(),

                        'percent'               : $('select[name=percent]').val(),

                    };

                    Swal.fire({
                        title: 'Informasi',
                        text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya MTC sekarang?',
                        showDenyButton: false,
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
                        url         : "{{ route('rpt.mtc.form.EventChangeRptMTC') }}", 
                        data        : store, 
                        dataType    : 'json', 
                        encode      : true
                    })
                    .done(function(data) {
                        // $("#total_b_administrasi_umumlp").val("Rp "+formatCurrency(Math.round(data.total_biaya_lp_adm)));
                        $("#rtrtperbaikanperbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_perbaikan_perbulan)));
                        $("#biaya_produksi_lain").val("Rp "+formatCurrency(Math.round(data.biaya_produksi_lain)));
                        $("#total_biaya_perbulan").val("Rp "+formatCurrency(Math.round(data.total_biaya_perbulan)));
                        $("#sparepart_perbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_sparepart_perbulan)));

                    if(data.isConfirmed == "true"){
                        
                        let curr = '{{ route("voyager.rpt-mtc.index") }}';
                        setTimeout(function(){ 
                            window.location.href = curr;
                        }, 4000);

                            pesanStore.fire({
                                icon: 'success',
                                title: 'Data berhasil disimpan..'
                            })
                            // return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya biaya administrasi umum berhasil diakumulasi & disimpan', 'success')
                        }

                    });


                }
            })

        });

        $('#thn_perbaikan_periode_1').daterangepicker({
            singleDatePicker: true,
            startDate: $('#thn_perbaikan_periode_1').val(),
            showDropdowns: true,
            timePicker: false,
            timePicker24Hour: false,
            timePickerIncrement: 10,
            autoUpdateInput: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            locale: {
                format: 'Y',
                "applyLabel": "Terapkan",
                "cancelLabel": "Batal",
                "parentEl": "date",
             },
        });

        $('#thn_perbaikan_periode_2').daterangepicker({
            singleDatePicker: true,
            startDate: $('#thn_perbaikan_periode_2').val(),
            showDropdowns: true,
            timePicker: false,
            timePicker24Hour: false,
            timePickerIncrement: 10,
            autoUpdateInput: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            locale: {
                format: 'Y',
                "applyLabel": "Terapkan",
                "cancelLabel": "Batal",
                "parentEl": "date",
             },
        });

        $('#thn_sparepart_periode_1').daterangepicker({
            singleDatePicker: true,
            startDate: $('#thn_sparepart_periode_1').val(),
            showDropdowns: true,
            timePicker: false,
            timePicker24Hour: false,
            timePickerIncrement: 10,
            autoUpdateInput: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            locale: {
                format: 'Y',
                "applyLabel": "Terapkan",
                "cancelLabel": "Batal",
                "parentEl": "date",
             },
        });

        $('#thn_sparepart_periode_2').daterangepicker({
            singleDatePicker: true,
            startDate: $('#thn_sparepart_periode_2').val(),
            showDropdowns: true,
            timePicker: false,
            timePicker24Hour: false,
            timePickerIncrement: 10,
            autoUpdateInput: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            locale: {
                format: 'Y',
                "applyLabel": "Terapkan",
                "cancelLabel": "Batal",
                "parentEl": "date",
             },
        });

        $('#thn_sparepart_periode_3').daterangepicker({
            singleDatePicker: true,
            startDate: $('#thn_sparepart_periode_3').val(),
            showDropdowns: true,
            timePicker: false,
            timePicker24Hour: false,
            timePickerIncrement: 10,
            autoUpdateInput: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            locale: {
                format: 'Y',
                "applyLabel": "Terapkan",
                "cancelLabel": "Batal",
                "parentEl": "date",
             },
        });

        $('#thn_perbaikan_periode_3').daterangepicker({
            singleDatePicker: true,
            startDate: $('#thn_perbaikan_periode_3').val(),
            showDropdowns: true,
            timePicker: false,
            timePicker24Hour: false,
            timePickerIncrement: 10,
            autoUpdateInput: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            locale: {
                format: 'Y',
                "applyLabel": "Terapkan",
                "cancelLabel": "Batal",
                "parentEl": "date",
             },
        });


    
    });

    </script>
@stop

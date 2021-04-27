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
                            
                            <div class="form-group">
                                <label for="program_id">Mesin</label>
                                <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                    @foreach ($mesin as $m)
                                {{-- <option value="{{$m->id}}">{{$m->code_mesin}}</option> --}}
                                <option value="{{$m->id}}"  @if($dataTypeContent->code_mesin == $m->id) selected='selected' @endif>{{$m->code_mesin}}</option>

                                    @endforeach
                                </select>
                            </div>
                            <input type="text" class="form-control hidden" id="code_mesin_id" name="code_mesin_id" placeholder="">


                            <div class="form-group">
                                <label for="program_id">Company</label>
                                <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                    @foreach ($company as $c)
                                {{-- <option value="{{$c->id}}">{{$c->company_name}}</option> --}}
                                <option value="{{$c->id}}"  @if($dataTypeContent->company_parent_id == $c->id) selected='selected' @endif>{{$c->company_name}}</option>

                                    @endforeach
                                </select>
                            </div>
                            {{-- <div class="form-group">
                                <label for="company">Company</label>
                                <input type="text" class="form-control" id="company_display" name="company_display" placeholder="">
                                <input type="text" class="form-control" id="company_parent_id" name="company_parent_id" placeholder="">
                            </div> --}}

                            <div class="form-group">
                                <label for="program_id">Group mesin</label>
                                <select class="form-control select2" id="group_mesin" name="group_mesin" required>
                                    @foreach ($group_mesin as $c)
                                      <option value="{{$c->id}}" @if($mesjklin->group_mesin_id == $c->id) selected='selected' @endif>{{$c->nama_kategori_mesin}}</option>
                                    @endforeach
                                </select>
                            </div>

                            {{-- <div class="form-group">
                                <label for="company">Group Mesin</label>
                                <input type="text" class="form-control" id="group_mesin_display" name="group_mesin_display" placeholder="">
                                <input type="text" class="form-control" id="group_mesin" name="group_mesin" placeholder="">
                            </div> --}}

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
                                {{-- <input type="text" class="form-control" id="perjam_display" name="perjam_display" placeholder=""> --}}
                                <input type="text" class="form-control" id="perjam" name="perjam" value="{{ $mesjklin->capacity_mch }}" placeholder="">
                            </div>

                            <div class="form-group">
                                <label for="program_id">Category</label>
                                <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                    @foreach ($cbagian as $cb)
                                {{-- <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option> --}}
                                        <option value="{{$cb->id}}"  @if($dataTypeContent->category_bagian == $cb->id) selected='selected' @endif>{{$cb->nama_bagian}}</option>
                                    @endforeach
                                </select>
                            </div>

                            {{-- <div class="form-group">
                                <label for="company">Kategori Bagian</label>
                                <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder="">
                                <input type="text" class="form-control" id="category_bagian" name="category_bagian" placeholder="">
                            </div> --}}

                            {{-- <div class="form-group">
                                <label for="url_instagram">Shift</label>
                                <input type="text" class="form-control" id="shift" name="shift" placeholder="Shift">
                            </div> --}}
                            
                            <div class="form-group">
                                <label for="program_id">Shift</label>
                                <select class="form-control select2" id="shift" name="shift" required>
                                    @foreach ($LwbpMaster as $cb)
                                {{-- <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option> --}}
                                        <option value="{{$cb->id}}"  @if($dataTypeContent->shift == $cb->id) selected='selected' @endif>{{$cb->shift}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="url_instagram">LWBP (shift1)</label>
                                <input type="text" class="form-control" id="sht_1lwbp" name="sht_1lwbp" value="{{$dataTypeContent->assumptionshift_lwbp1 }}" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="url_instagram">WBP (shift 1,2,3)</label>
                                <input type="text" class="form-control" id="wbp" value="{{$dataTypeContent->assumption_wbp }}" name="wbp" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="shift2">LWBP (shift 2)</label>
                                <input type="text"  class="form-control" id="sht_2lwbp" value="{{$dataTypeContent->assumptionshift_lwbp2 }}" name="sht_2lwbp" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="shift3">LWBP (shift 3)</label>
                                <input type="text" class="form-control" id="sht_3lwbp" name="sht_3lwbp" value="{{$dataTypeContent->assumptionshift_lwbp3 }}" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="url_instagram">Hitungan minggu dalam angka</label>
                                <input type="text" class="form-control" id="intervalnumeric" readonly name="intervalnumeric" value="{{ $dataTypeContent->assumption_itval_perminggu }}" placeholder="Ampere">
                                {{-- <input type="text" class="form-control" id="intervalnumeric" value="{{ $LwbpMaster[0]->Intervalmingguan }}" name="intervalnumeric" placeholder="Ampere"> --}}
                            </div>
                            <div class="form-group">
                                <label for="url_instagram">Ampere</label>
                                <input type="text" class="form-control" data-validate-length-range="6" value="{{$dataTypeContent->ampere }}" data-validate-words="2" id="ampere" name="ampere" placeholder="Ampere" required="required" >
                            </div>
                            <div class="form-group">
                                <label for="url_instagram">Voltase</label>
                                <input type="text" class="form-control" id="voltase" data-validate-length-range="6" value="{{$dataTypeContent->voltase }}" data-validate-words="2" name="voltase" placeholder="Voltase" required="required" >
                            </div>
                        <div class="contanier">
                            <div class="panel-body">
                                <div class="form-group">
                                    {{-- <span class="badge badge-success" id="comp"></span> --}}
                                </div>
                                <div class="form-group">
                                    
                                    <label for="url_instagram">Faktor kali LWBP</label>
                                    <input type="text" value="{{$dataTypeContent->LWBP_faktorkali }}" class="form-control fkl" id="faktor_kali_lwbp" name="faktor_kali_lwbp" placeholder="Faktor kali LWBP" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Faktor kali WBP</label>
                                    <input type="text" class="form-control fkw" value="{{$dataTypeContent->LWBP_faktorkali }}" id="faktor_kali_wbp" name="faktor_kali_wbp" placeholder="Faktor kali WBP" readonly>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;

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
                                <input type="text" readonly="true" value="{{ RptCalcMachine::frm_rph($dataTypeContent->LWBP_perminggu) }}" class="form-control" id="lwbp_" name="lwbp_" placeholder="">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span>WBP Perminggu</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" value="{{ RptCalcMachine::frm_rph($dataTypeContent->WBP_perminggu) }}" class="form-control" id="wbp_" name="wbp_" placeholder=""></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span>Total biaya listrik</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" value="{{ RptCalcMachine::frm_rph($dataTypeContent->total_biaya_listrik) }}" class="form-control" id="totalbiayalstrk_" name="totalbiayalstrk_" placeholder=""></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span>Total Cost Perbulan</span>
                            </div>
                            <div class="col-md-8">
                                <span> <input type="text" readonly="true" value="{{ RptCalcMachine::frm_rph($dataTypeContent->nilai_cost_bulan) }}" class="form-control" id="totalcostperbulan" name="totalcostperbulan" placeholder=""></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                        'id'                 : "{{ $dataTypeContent->id }}",
                        'category_bagian'    : $('select[name=category_bagian]').val(),
                        'company_parent_id'  : $('select[name=company_parent_id]').val(),
                        'code_mesin'         : $('select[name=code_mesin]').val(),
                        'shift'              : $('select[name=shift]').val(),
                        'group_mesin'        : $('select[name=group_mesin]').val(),

                        'ampere'             : $('input[name=ampere]').val(),
                        'voltase'            : $('input[name=voltase]').val(),
                        'faktor_kali_wbp'    : $('input[name=faktor_kali_wbp]').val(),
                        'faktor_kali_lwbp'   : $('input[name=faktor_kali_lwbp]').val(),
                        'perjam'             : $('input[name=perjam]').val(),

                        'sht_1lwbp'          : $('input[name=sht_1lwbp]').val(),
                        'sht_2lwbp'          : $('input[name=sht_2lwbp]').val(),
                        'sht_3lwbp'          : $('input[name=sht_3lwbp]').val(),
                        'wbp'                : $('input[name=wbp]').val(),
                        'intervalnumeric'    : $('input[name=intervalnumeric]').val(),
                    };

                    Swal.fire({
                        title: 'Informasi',
                        text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya Listrik sekarang?',
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

                            const pesanUpdate = Swal.mixin({
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
                        url         : "{{ route('updateListriks') }}", 
                        data        : store, 
                        dataType    : 'json', 
                        encode      : true
                    })
                    .done(function(data) {

                        $("#totalcostperbulanadm").val("Rp "+formatCurrency(Math.round(data.ncost_bulan_plus_adm)));
                        $("#persenlistriks").val("Rp "+formatCurrency(Math.round(data.persen_listrik)));
                        $("#lwbp_").val(Math.round(data.lwbp_perminggu)); 
                        $("#wbp_").val(Math.round(data.wbp_perminggu)); 
                        $("#totalbiayalstrk_").val("Rp "+formatCurrency(Math.round(data.total_biaya_listrik_perminggu)));
                        $("#totalcostperbulan").val("Rp "+formatCurrency(Math.round(data.totalbiaya_cost_perbulan)));

                    if(data.sts == true){
                        
                        let curr = '{{ route("voyager.listrik.index") }}';
                        setTimeout(function(){ 
                            window.location.href = curr;
                        }, 4000);

                            pesanStore.fire({
                                icon: 'success',
                                title: 'Data berhasil disimpan..'
                            })
                            // return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya biaya administrasi umum berhasil diakumulasi & disimpan', 'success')
                           
                    } else {
                                pesanUpdate.fire({
                                    icon: 'info',
                                    title: 'Data berhasil diupdate, tidak ada perbuahan apapun..'
                                })
                            }
                    });


                }
            })

        });


        $('#start_date1').daterangepicker({
            singleDatePicker: true,
            startDate: $('#start_date1').val(),
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

        $('#start_date2').daterangepicker({
            singleDatePicker: true,
            startDate: $('#start_date2').val(),
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

        $('#start_date3').daterangepicker({
            singleDatePicker: true,
            startDate: $('#start_date3').val(),
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

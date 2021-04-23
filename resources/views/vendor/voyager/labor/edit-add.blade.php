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
                                    <label for="program_id">Detail group</label>
                                        <select class="form-control select2" id="grp_id" name="grp_id" required>
                                            <option value="0">Maaf anda tidak bisa merubah detail group saat ini</option>
                                            @foreach ($specialabor as $c)
                                                <option disabled="disabled" value="{{$c->id}}"  @if($dataTypeContent->grp_id == $c->id) selected='selected' @endif>{{$c->nama_group_labor}}</option>
                                            @endforeach
                                        </select>
                                </div>
                                <input type="text" class="form-control hidden" id="code_mesin_id" name="code_mesin_id" placeholder="">

                         <div class="form-group">
                            <label for="company">Company</label>
                            <input type="text" class="form-control" id="company_display" name="company_display" placeholder="">
                            <input type="text" class="form-control" id="company_parent_id" name="company_parent_id" placeholder="">
                        </div>
                                <div class="form-group"> 
                                    <label for="company">Shift</label>
                                    <input type="text" class="form-control" id="shift_display" name="shift_display" placeholder="">
                                    <input type="text" class="form-control" id="shift" name="shift" placeholder="">
                                </div>
                                <div class="form-group mesinch">
                                    <div class="col-md-9">
                                        <label for="msncheck">Jumlah mesin yang ditanggani oleh SPV.</label>
                                    </div>
                                    <div class="row">
                                    </div>
                                    <div class="text-right">
                                        <ul><div id="mesinttid" class="mesintt"></div><br /> <code>* jumlah mesin yang dicentang, akan masuk perhitungan labor supervisor.</code></ul>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Jumlah Karyawan SPV <code>* Supervisor dapat menanggani beberapa mesin, 1 mesin 1 supervisor.</code></label>
                                    <input type="text" class="form-control removeLater" disabled="true" value="{{ $dataTypeContent->supervisor }}" id="supervisor" name="supervisor" placeholder="Jumlah Supervisor">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Jumlah Karyawan Operator</label>
                                    <input type="text" class="form-control removeLater" id="operator" name="operator" value="{{ $dataTypeContent->operator }}" placeholder="Jumlah Operator">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Jumlah karyawan helper</label>
                                    <input type="text" class="form-control removeLater" id="helper" name="helper" value="{{ $dataTypeContent->helper }}" placeholder="Jumlah Helper">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Jumlah karyawan supporting</label>
                                    <input type="text" class="form-control removeLater" id="supporting" value="{{ $dataTypeContent->supporting }}" name="supporting" placeholder="Jumlah Supporting">
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
                                <input type="text" readonly="true" class="form-control" id="gaji_supervisor" value="{{ RptCalcMachine::frm_rph(ceil($dataTypeContent->supervisor_level3)) }}" ame="gaji_supervisor" placeholder="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <span>Gaji Operator :</span>
                        </div>
                        <div class="container">
                                    <input type="text" readonly="true" class="form-control" id="gaji_operator" value="{{ RptCalcMachine::frm_rph(ceil($dataTypeContent->operator_level2)) }}" name="gaji_operator" placeholder="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <span>Gaji Helper :</span>
                        </div>
                        <div class="container">
                                <input type="text" readonly="true" class="form-control" id="gaji_helper" value="{{ RptCalcMachine::frm_rph(ceil($dataTypeContent->helper_level0)) }}" name="gaji_helper" placeholder="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <span>Total biaya gaji upah karyawan :</span>
                        </div>
                        <div class="container">
                            <input type="text" readonly="true" class="form-control" id="total_perbulan_p" value="{{ RptCalcMachine::frm_rph(ceil($dataTypeContent->total_biaya)) }}" name="total_perbulan_p" placeholder="">
                        </div>
                    </div>
                <div class="container"><br/>
                    <div class="row">
                            <p class="col-md-12">
                                {{  "generate otomatis, dari hasil akumulasi create awal transaksi : ".$dataTypeContent->jumlah_mesin_ditanggani." Mesin, dengan 1 supervisor." }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary pull-right save">Hitung</button>&nbsp;
    </form>
</div>
@stop

@section('javascript')
    <script>
        let lbrid = "{{ $dataTypeContent->id }}";
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
     
            // $(document).on('ready', function() {
                GetFullDataMesin(id).then(function(results){
                    if(results.detail.length > 0){
                                $(".notification").remove();
                            }
                        if(isEmpty(results.detail) == false){
                            results.detail.forEach(function(eval) {

                                    if(code_mesin == eval.id){

                                        var element = $('<input id="mesnid" type="checkbox" name="code_mesin[]" value="'+eval.id+'"> <span class="badge badge-primary"> '+eval.code_mesin+' </span></>');
                                    } else {
                                        var element = $('<input id="mesnid" type="checkbox" name="code_mesin[]" value="'+eval.id+'"> <span class="badge badge-primary"> '+eval.code_mesin+' </span></>');

                                    }
                            // for(x = 0; x < results.detail.length; x++) {
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

                                    $(element).prop("checked", true);

                                });

                            })
                    
                    } else if(isEmpty(results.detail) == true) {
                              
                        $(".notification").remove();

                    }
                            
                });
            // });

        });

        $(document).ready(function() {

            $('form').submit(function(event) {

            event.preventDefault();

            var data = [];
            $("input[name='code_mesin[]']:checked").each(function() {
                data.push($(this).val());
            });

                var formData = {

                    'lbrid'     : lbrid,
                    'company_parent_id'     : $('input[name=company_parent_id]').val(),
                    'code_mesin'            : code_mesin,
                    'category_bagian'       : cb_id,
                    'shift'                 : $('input[name=shift]').val(),
                    'supervisor'            : $('input[name=supervisor]').val(),
                    'operator'              : $('input[name=operator]').val(),
                    'helper'                : $('input[name=helper]').val(),
                    'supporting'            : $('input[name=supporting]').val(),
                    'jumlah_penangganan_mesin' : $('input[name=jumlah_penangganan_mesin]').val(),
                    'jml_mesin_mch'         : id,

                };

                
                Swal.fire({
                    title: 'Informasi',
                    text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya labor sekarang?',
                    showDenyButton: false,
                    showCancelButton: true,
                    confirmButtonText: `ya, akumulasikan & simpan datanya`,
                    cancelButtonText: `jangan diakumulasi & simpan data`,
                    denyButtonText: `belum, masih mengakumulasi biaya & jangan simpan`,
                    }).then((result) => {
                    /* Read more about isConfirmed, isDenied below */
                    if (result.isConfirmed) {

                    //     if(isEmpty(data) == true) {
                           
                    //        return Swal.fire('#Informasi.', 'anda masih belum memilih mesin yang ditanggani.', 'info')

                    //    } 
                    //         else {

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
                                    url         : "{{ route('labors.reakumulasilabor') }}", 
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

                                        if(data.alertype == 'success') {

                                                Swal.fire({
                                                    icon: "info",
                                                    title: 'Machine update!',
                                                    html: "[update_mlabor] Mesin berhasil diupdate, sistem mendeteksi transaksi labor telah diupdate.",
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

                                                let curr = '{{ route("voyager.labor.index") }}';
                                                setTimeout(function(){ 
                                                    window.location.href = curr;
                                                }, 5000);

                                        }
                                           else if(data.is_tr_conn == 'ccv') {

                                                Swal.fire({
                                                    icon: "info",
                                                    title: 'Machine update!',
                                                    html: "[ccv] Mesin berhasil diupdate, sistem mendeteksi transaksi labor telah diupdate.",
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
                                                
                                                let curr = '{{ route("voyager.labor.index") }}';
                                                setTimeout(function(){ 
                                                    window.location.href = curr;
                                                }, 5000);
                                            }  
                                            else if(data.is_tr_conn == 'event_update') {

                                                    Swal.fire({
                                                        icon: "info",
                                                        title: 'Machine update!',
                                                        html: "[fcv] Mesin berhasil diupdate, sistem mendeteksi transaksi labor telah diupdate.",
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
                                                    
                                                    let curr = '{{ route("voyager.labor.index") }}';
                                                    setTimeout(function(){ 
                                                        window.location.href = curr;
                                                    }, 5000);
                                                } else {
                                                
                                                pesanStore.fire({
                                                    icon: 'error',
                                                    title: 'error tidak diketahui..'
                                                }
                                            )
                                        }
                                    }
                                }
                            );
                        // }

                    }
                })

            });

        });

    </script>
@stop

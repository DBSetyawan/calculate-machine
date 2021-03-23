@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form"
              method="POST" enctype="multipart/form-data" autocomplete="off">
              {{ csrf_field() }}
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                    {{-- <div class="panel"> --}}
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div class="panel-body">
                            <div class="form-group hidden">
                            <label for="nama">ID</label>
                                <input type="text" class="form-control" id="id" name="id" placeholder=""
                                       value="{{ old('id', $dataTypeContent->id ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="program_id">Company</label>
                                <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
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
                                <label for="nama">Perbaikan tahun 2018</label>
                                <input type="text" class="form-control" id="perbaikan_tahun1" name="perbaikan_tahun1" placeholder=""
                                       value="{{ old('perbaikan_tahun1', $dataTypeContent->perbaikan_tahun1 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="perbaikan_tahun2">Perbaikan tahun 2019</label>
                                <input type="text" class="form-control" id="perbaikan_tahun2" name="perbaikan_tahun2" placeholder=""
                                       value="{{ old('perbaikan_tahun2', $dataTypeContent->perbaikan_tahun2 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="perbaikan_tahun3">Perbaikan tahun 2020</label>
                                <input type="text" class="form-control" id="perbaikan_tahun3" name="perbaikan_tahun3" placeholder=""
                                       value="{{ old('perbaikan_tahun3', $dataTypeContent->perbaikan_tahun3 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="sparepart_tahun1">Sparepart tahun 2018</label>
                                <input type="text" class="form-control" id="sparepart_tahun1" name="sparepart_tahun1" placeholder=""
                                value="{{ old('sparepart_tahun1', $dataTypeContent->sparepart_tahun1 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="sparepart_tahun2">Sparepart tahun 2019</label>
                                <input type="text" class="form-control" id="sparepart_tahun2" name="sparepart_tahun2" placeholder=""
                                value="{{ old('sparepart_tahun2', $dataTypeContent->sparepart_tahun2 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="sparepart_tahun3">Sparepart tahun 2020</label>
                                <input type="text" class="form-control" id="sparepart_tahun1" name="sparepart_tahun3" placeholder=""
                                value="{{ old('sparepart_tahun3', $dataTypeContent->sparepart_tahun3 ?? '') }}">
                            </div>

                                    <div class="form-group">
                                        <label for="program_id">Listrik Output Perjam</label>
                                        <select class="form-control select2" id="percent" name="percent" required>
                                            @foreach ($LsOutputPerjam as $ls)
                                        <option value="{{$ls->persen}}">{{ RumusListrikOutputPerjam::percent($ls->persen)}}</option>
                                            @endforeach
                                        </select>
                                    </div>


                            {{--  <div class="form-group">
                                <label for="kelurahan_id">Pilih Domisili</label>
                                <select class="form-control select2" id="kelurahan_id" name="kelurahan_id">
                                    @if(isset($selected_domisili))
                                        <option value="{{$selected_domisili->value}}" selected>{{$selected_domisili->text}}</option>
                                    @endif
                                </select>
                            </div>  --}}
                            
                            {{-- <div class="form-group">
                                <label for="kelurahan_id">Grup Donatur</label>
                                <select class="form-control select2" id="donatur_group_id" name="donatur_group_id">
                                    @foreach ($donatur_groups as $donatur_group)
                                        <option value="{{$donatur_group->id}}" >{{$donatur_group->donatur_group_name}}</option>
                                    @endforeach
                                </select>
                            </div> --}}

                        </div>
                    </div>
                </div>

            </div>

            <button type="submit" class="btn btn-primary pull-right save">{{ __('voyager::generic.save') }}</button>&nbsp;

        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
        {{-- <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
            {{ csrf_field() }}
            <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
        </form> --}}
    </div>
@stop

@section('javascript')
    <script>
    
        $('document').ready(function () {

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

            var perbaikan_tahun1 = document.getElementById("perbaikan_tahun1");
            // var tunjangan_tetap = document.getElementById("tunjangan_tetap");
            // var tunjangan_asuransi = document.getElementById("tunjangan_asuransi");
            // var thr = document.getElementById("thr");
            
            perbaikan_tahun1.addEventListener("keyup", function(e) {
                thr.value = convertRupiah(this.value, "");
            });

            // tunjangan_tetap.addEventListener("keyup", function(e) {
            //     tunjangan_tetap.value = convertRupiah(this.value, "");
            // });

            // tunjangan_tidak_tetap.addEventListener("keyup", function(e) {
            //     tunjangan_tidak_tetap.value = convertRupiah(this.value, "");
            // });

            // tunjangan_asuransi.addEventListener("keyup", function(e) {
            //     tunjangan_asuransi.value = convertRupiah(this.value, "");
            // });

            function convertRupiah(angka, prefix) {
                var number_string = angka.replace(/[^,\d]/g, "").toString(),
                    split  = number_string.split(","),
                    sisa   = split[0].length % 3,
                    rupiah = split[0].substr(0, sisa),
                    ribuan = split[0].substr(sisa).match(/\d{3}/gi);

                    if (ribuan) {
                        separator = sisa ? "." : "";
                        rupiah += separator + ribuan.join(".");
                    }

                        rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;

                    return prefix == undefined ? rupiah : rupiah ? prefix + rupiah : "";
                    
                }

            // $('#perbaikan_tahun1').mask('#.##0', {reverse: true});
            // $('#perbaikan_tahun2').mask('#.##0', {reverse: true});
            // $('#perbaikan_tahun3').mask('#.##0', {reverse: true});
            // $('#sparepart_tahun1').mask('#.##0', {reverse: true});
            // $('#sparepart_tahun2').mask('#.##0', {reverse: true});
            // $('#sparepart_tahun3').mask('#.##0', {reverse: true});
       
            $('.toggleswitch').bootstrapToggle();

            $('form').submit(function(event) {
                event.preventDefault();

                var formData = {

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

                    'percent'               : $('select[name=percent]').val(),

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('rpt.mtc.form.EventChangeRptMTC') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode          : true
                })
                .done(function(data) {

                    if(data.success){
                            Toast.fire({
                            icon: 'success',
                            title: `${data.success}`
                        })
                    }
                    
                    $(".removeLater").val('');

                }).catch(function(xhr, ajaxOptions, thrownError) {
                    var responseTitle= $(xhr.responseText).filter('title').get(0);
                    Toast.fire({
                        icon: 'error',
                        title: "Sedang terjadi kesalahan sistem.."
                    })
                });


            });

        });
    </script>
@stop
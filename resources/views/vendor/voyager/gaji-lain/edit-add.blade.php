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
                                <label for="nama">Tunjangan tidak tetap</label>
                                <input type="text" class="form-control" id="tunjangan_tidak_tetap" name="tunjangan_tidak_tetap" placeholder=""
                                       value="{{ old('tunjangan_tidak_tetap', $dataTypeContent->tunjangan_tidak_tetap ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="tunjangan_tetap">Tunjangan tetap</label>
                                <input type="text" class="form-control" id="tunjangan_tetap" name="tunjangan_tetap" placeholder=""
                                       value="{{ old('tunjangan_tetap', $dataTypeContent->tunjangan_tetap ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="pekerjaan">THR</label>
                                <input type="text" class="form-control" id="thr" name="thr" placeholder=""
                                       value="{{ old('thr', $dataTypeContent->thr ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="alamat">Tunjangan Asuransi</label>
                                <input type="text" class="form-control" id="tunjangan_asuransi" name="tunjangan_asuransi" placeholder=""
                                value="{{ old('tunjangan_asuransi', $dataTypeContent->tunjangan_asuransi ?? '') }}">
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
<script src="https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.5.1/mapbox-gl-geocoder.min.js"></script>
<script src="https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script>
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

            var tunjangan_tidak_tetap = document.getElementById("tunjangan_tidak_tetap");
            var tunjangan_tetap = document.getElementById("tunjangan_tetap");
            var tunjangan_asuransi = document.getElementById("tunjangan_asuransi");
            var thr = document.getElementById("thr");
            
            thr.addEventListener("keyup", function(e) {
                thr.value = convertRupiah(this.value, "");
            });

            tunjangan_tetap.addEventListener("keyup", function(e) {
                tunjangan_tetap.value = convertRupiah(this.value, "");
            });

            tunjangan_tidak_tetap.addEventListener("keyup", function(e) {
                tunjangan_tidak_tetap.value = convertRupiah(this.value, "");
            });

            tunjangan_asuransi.addEventListener("keyup", function(e) {
                tunjangan_asuransi.value = convertRupiah(this.value, "");
            });

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


            $('#tunjangan_tidak_tetap').mask('#.##0', {reverse: true});
            $('#tunjangan_asuransi').mask('#.##0', {reverse: true});
            $('#thr').mask('#.##0', {reverse: true});
            $('#tunjangan_tetap').mask('#.##0', {reverse: true});
       
            $('.toggleswitch').bootstrapToggle();

            $('form').submit(function(event) {
                event.preventDefault();

                var formData = {

                    'id'                    : $('input[name=id]').val(),
                    'tunjangan_tetap'       : $('input[name=tunjangan_tetap]').val(),
                    'tunjangan_tidak_tetap' : $('input[name=tunjangan_tidak_tetap]').val(),
                    'tunjangan_asuransi'    : $('input[name=tunjangan_asuransi]').val(),
                    'thr'                   : $('input[name=thr]').val(),

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('change.gajilain.form.master') }}", 
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
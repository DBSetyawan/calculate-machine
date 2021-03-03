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
                            <label for="kelurahan_id">Company</label>
                            <select class="form-control select2" id="company_parent_id" name="company_parent_id">
                                @foreach($companies as $a)
                                    <option value="{{ $a->id }}" @if($a->id==$dataTypeContent->company_parent_id) selected='selected' @endif >{{ $a->company_name }}</option>
                                @endforeach
                            </select>
                        </div> 

                        <div class="form-group">
                            <label for="kelurahan_id">Kategori bagian</label>
                            <select class="form-control select2" id="category_bagian" name="category_bagian">
                                @foreach($ktbg as $a)
                                    <option value="{{ $a->id }}" @if($a->id==$dataTypeContent->category_bagian) selected='selected' @endif >{{ $a->nama_bagian }}</option>
                                @endforeach
                            </select>
                        </div> 

                            <div class="form-group">
                                <label for="nama">CODE</label>
                                <input type="text" class="form-control" readonly="true" id="code_rpt_gaji_lain" name="code_rpt_gaji_lain" placeholder=""
                                       value="{{ old('code_rpt_gaji_lain', $dataTypeContent->code_rpt_gaji_lain ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="tunjangan_tetap">Tahun 2018</label>
                                <input type="text" class="form-control" id="tahun1" name="tahun1" placeholder=""
                                       value="{{ old('tahun1', $dataTypeContent->tahun1 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="tunjangan_tetap">Tahun 2019</label>
                                <input type="text" class="form-control" id="tahun1" name="tahun2" placeholder=""
                                       value="{{ old('tahun2', $dataTypeContent->tahun2 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="tunjangan_tetap">Tahun 2020</label>
                                <input type="text" class="form-control" id="tahun3" name="tahun3" placeholder=""
                                       value="{{ old('tahun3', $dataTypeContent->tahun3 ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="tunjangan_tetap">X</label>
                                <input type="text" class="form-control" id="tahun3" name="tahun3" placeholder=""
                                       value="{{ old('tahun3', $dataTypeContent->total_biaya_laporan_periode ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="kelurahan_id">Listrik Output</label>
                                <select class="form-control select2" id="lsoutput" name="lsoutput">
                                    @foreach($lsoutput as $a)
                                        <option value="{{ $a->persen }}" >{{ RumusListrikOutputPerjam::percent($a->persen) }}</option>
                                    @endforeach
                                </select>
                            </div> 

                        </div>
                    </div>
                </div>

            </div>

            <button type="submit" class="btn btn-primary pull-right save">{{ __('voyager::generic.save') }}</button>&nbsp;

        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
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

            // var tunjangan_tidak_tetap = document.getElementById("tunjangan_tidak_tetap");
            // var tunjangan_tetap = document.getElementById("tunjangan_tetap");
            // var tunjangan_asuransi = document.getElementById("tunjangan_asuransi");
            // var thr = document.getElementById("thr");
            
            // thr.addEventListener("keyup", function(e) {
            //     thr.value = convertRupiah(this.value, "");
            // });

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


            // $('#tunjangan_tidak_tetap').mask('#.##0', {reverse: true});
            // $('#tunjangan_asuransi').mask('#.##0', {reverse: true});
            // $('#thr').mask('#.##0', {reverse: true});
            // $('#tunjangan_tetap').mask('#.##0', {reverse: true});
       
            $('.toggleswitch').bootstrapToggle();

            $('form').submit(function(event) {
                event.preventDefault();

                var formData = {

                    'id'                    : $('input[name=id]').val(),
                    'code_rpt_gaji_lain'    : $('input[name=code_rpt_gaji_lain]').val(),
                    'tahun1'                : $('input[name=tahun1]').val(),
                    'tahun2'                : $('input[name=tahun2]').val(),
                    'tahun3'                : $('input[name=tahun3]').val(),
                    'company_parent_id'     : $('select[name=company_parent_id]').val(),
                    'lsoutput'              : $('select[name=lsoutput]').val(),
                    'category_bagian'       : $('select[name=category_bagian]').val(),

                };

                $.ajax({
                    type        : 'POST',
                    url         : "{{ route('change.gajilain.form.EventChangeLpGajiLain') }}", 
                    data        : formData, 
                    dataType    : 'json', 
                    encode          : true
                })
                .done(function(data) {
                    console.log(data)

                    // if(data.success){
                    //     Toast.fire({
                    //     icon: 'success',
                    //     title: `${data.success}`
                    // })
                    // }
                    
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
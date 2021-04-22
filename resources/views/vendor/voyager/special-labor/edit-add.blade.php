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
        {{-- <form class="form-edit-add" role="form"
              method="POST" enctype="multipart/form-data" autocomplete="off">
              {{ csrf_field() }} --}}
        <form name="add_name" id="add_name">
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

                            <div class="form-group">
                                <label for="tunjangan_tetap">Tunjangan tetap</label>
                                <input type="text" class="form-control hidden" id="event" value="edit">
                                <input type="text" class="form-control" id="nama_group_labor" name="nama_group_labor" placeholder=""
                                       value="{{ old('tunjangan_tetap', $dataTypeContent->nama_group_labor ?? '') }}">
                            </div>


                            <div class="text">  
                                <table class="table table-bordered" id="dynamic_field" border="1">  
                                <thead>
                                  <tr class="table-responsive">
                                      <th nowrap="">No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                      <th nowrap="">&nbsp;&nbsp;&nbsp;&nbsp; Silahkan, isi group mesin. sistem akan memberikan response group mesinnya. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                      <th><button type="submit" class="btn btn-primary btn-lg  col-xs-12 svd"><i class="voyager-check"></i> Simpan</button></th>
                                  </tr>
                              </thead>
                                  <tbody>
                                     <tr>  
                                        <td width="9%">
                                        </td>
                                         <td width="70%"><input type="text" class="form-control hidden" id="machines"  placeholder="Silahkan, isi group mesin. sistem akan memberikan response group mesinnya." required="">
                                          <input type="text" class="form-control hidden" id='group_mesin'  readonly></td>
                                        <td> <button type="button" name="add" id="add" class="btn btn-lg col-xs-12 btn-success"><i class="voyager-plus"></i></button></td>
                                     </tr> 
                                     </tbody>									
                                </table>  
                           </div>
                        </div>
                    </div>
                </div>

            </div>

            {{-- <button type="submit" class="btn btn-primary pull-right save">{{ __('voyager::generic.save') }}</button>&nbsp; --}}

        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
    </div>
@stop

@section('javascript')
<script src="https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.5.1/mapbox-gl-geocoder.min.js"></script>
<script src="https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script>
    <script>
    
        $('document').ready(function () {
            var i = 0;

            let id = "{{ $dataTypeContent->id }}";
            getDataGroupLabor(id).then(value => {
                    //   if(value.res == 200){
                    //   }
                    // console.log(value)

                value.response.forEach(function(entry, ids) {
                i++;

                    $('#dynamic_field').append('<tr id="row'+i+'">'+
                        '<td><input type="number" name="no[]" placeholder="No" value='+i+' class="form-control" disabled=""></td>'+
                        '<td><input type="text" class="form-control whgl'+ids+'" id="idcallback" name="machi[]" value="'+entry.nama_kategori_mesin+'" placeholder="Silahkan, isi group mesin. sistem akan memberikan response group mesinnya." required />'+
                        '<input type="text" id="group_mesin" name="group_mesin[]" value="'+entry.id+'" class="form-control gms'+ids+' hidden"/></td>'+
                        '<td align="right"><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn-lg col-xs-12 btn_remove"><i class="voyager-trash"></i></button></td></tr>'+
                    '');

                    $('.whgl'+ids+'').autocomplete({
                    source: function( request, response ) {
                            $.ajax({
                                url:"{{route('mesin.getGroupMachine')}}",
                                type: 'post',
                                dataType: "json",
                                data: {
                                _token: $('meta[name="csrf-token"]').attr('content'),
                                search: request.term
                            },
                                success: function( data ) {
                                    response( data );
                                }
                            });
                        },
                            select: function (event, ui) {
                                // Set selection
                                $('.gms'+ids+'').val(ui.item.value); // display the selected text
                                $('.whgl'+ids+'').val(ui.item.label); // save selected id to input
                                // $('.whgl'+i+'').prop("disabled", true);

                                return false;
                            }
                        }
                    );

                });
            });

        $('#add').click(function(){  

                const pesanwarning = Swal.mixin({
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

            if($("#idcallback").val() == ""){
        
                pesanwarning.fire({
                    icon: 'warning',
                    title: 'tidak bisa menambah field form, isikan terlebih dahulu field form yang kosong..'
                })

            }
            
                else {

                if($('.gkn'+i+'').val() == ""){
                        
                        pesanwarning.fire({
                            icon: 'warning',
                            title: 'tidak bisa menambah field form, isikan terlebih dahulu field form yang kosong..'
                        })

                }
                    else {

                i++; 

                $('#dynamic_field').append('<tr id="row'+i+'">'+
                '<td><input type="number" name="no[]" placeholder="No" value='+i+' class="form-control" disabled=""></td>'+
                '<td><input type="text" class="form-control gkn'+i+'" id="idcallback" name="machi[]" placeholder="Silahkan, isi group mesin. sistem akan memberikan response group mesinnya." required />'+
                '<input type="text" id="group_mesin" name="group_mesin[]" class="form-control xcv'+i+' hidden"/></td>'+
                '<td align="right"><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn-lg col-xs-12 btn_remove"><i class="voyager-trash"></i></button></td></tr>'+
                '');

                    $('.gkn'+i+'').autocomplete({
                        source: function( request, response ) {
                                $.ajax({
                                    url:"{{route('mesin.getGroupMachine')}}",
                                    type: 'post',
                                    dataType: "json",
                                    data: {
                                    _token: $('meta[name="csrf-token"]').attr('content'),
                                    search: request.term
                                },
                                    success: function( data ) {
                                        response( data );
                                    }
                                });
                            },
                            select: function (event, ui) {
                                // Set selection
                                $('.xcv'+i+'').val(ui.item.value); // display the selected text
                                $('.gkn'+i+'').val(ui.item.label); // save selected id to input

                                $('.gkn'+i+'').prop("disabled", true);

                                return false;
                            }
                        }
                    );
                }
            }
        });
        
        $('.svd').click(function(e){  

            const vb = Swal.mixin({
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

        var nama_group_labor  = document.getElementById("nama_group_labor").value;
        if(nama_group_labor==""){
            vb.fire({
                    icon: 'warning',
                    title: 'Maaf tidak bisa menyimpan data, karena ada nama group yang kosong..'
                })

            }else{

                let arr = { 'd' :  $("#add_name").serializeArray(), 'event' : $("#event").val(), 'id_groups' : id };
                
                $.ajax({  
                    url:"{{ route('mesin.machinelabor') }}",  
                    method:"POST",
                    dataType: "json",  
                    data:arr,  
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    success:function(data)  
                    {  
                    console.log(data);  
                    if(data.data != "akses ditolak"){
                        vb.fire({
                            icon: 'success',
                            title: 'data berhasil disimpan..'
                        })
                    } else {
                        vb.fire({
                            icon: 'error',
                            title: 'data gagal disimpan, group mesin tidak boleh kosong..'
                        })
                    }
                        
                    }  
                });
            }
        });

      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove(); 
		   i--;
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
                

            async function getDataGroupLabor(grpid) {
                            let datamesinid = {
                                    grouplbr_id:grpid
                                }
                        const apiDataMesin = "{{ route('mesin.getGroupLabors') }}";
                                
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

        });
    </script>
@stop
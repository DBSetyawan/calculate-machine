
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Special group labor
    </h1>

@stop

@section('content')
    <div class="page-content container-fluid">


        {{-- <form class="form-edit-add" role="form" --}}
            {{-- method="POST" enctype="multipart/form-data" autocomplete="off"> --}}

            {{ csrf_field() }}

            <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-bordered">
                            <div class="panel-body">
                                <div class="contanier">
                                    <div class="form-group">  
                                        {{-- <button type="submit" class="btn btn-primary pull-right svd">Simpan group khuhus labor</button>&nbsp; --}}
                                        <form name="add_name" id="add_name">
                                        <div class="row">
                                            <div class="col-md-6">
                                                    <div class="row">
                                                            <div class="form-group">
                                                                <label for="program_id">Group khusus labor</label>
                                                                <input type="text" class="form-control col-md-4" id="nama_group_labor" name="nama_group_labor" />
                                                            </div>
                                                        </div>
                                                </div>

                                           <div class="text">  
                                                  <table class="table table-bordered" id="dynamic_field" border="1">  
                                                  <thead>
                                                    <tr class="table-responsive">
                                                        <th nowrap="">No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                        <th nowrap="">&nbsp;&nbsp;&nbsp;&nbsp; Group mesin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                        <th><button type="submit" class="btn btn-primary btn-lg  col-xs-12 svd"><i class="voyager-check"></i> Simpan</button></th>
                                                    </tr>
                                                </thead>
                                                    <tbody>
                                                       <tr>  
                                                            <td width="9%">
                                                               <input type="number" name="no[]" value="1" placeholder="No" class="form-control " required="" disabled="">
                                                           </td>
                                                           <td width="70%"><input type="text" class="form-control" id="machines" name="machi[]" placeholder="Group mesin" required="">
                                                            <input type="text" class="form-control hidden" id='group_mesin' name="group_mesin[]" readonly></td>
                                                          <td> <button type="button" name="add" id="add" class="btn btn-lg col-xs-12 btn-success"><i class="voyager-plus"></i></button></td>
                                                       </tr> 
                                                       </tbody>									
                                                  </table>  
                                             </div>
                                           </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
    </div>
@stop
@inject('mtc','App\ListrikOutput')

@php
   $mtcs = $mtc::whereIn('company_parent_id', [3])->get();

$tcostmonth = collect([$mtcs])->sum(function ($biaya){
    return sprintf("%.5f", $biaya->sum('output_perjam'));
});

@endphp
@section('javascript')
    <script>
$(document).ready(function(){  
    var i=1;  
        $( "#machines" ).autocomplete({
            search  : function(){$(this).addClass('ui-autocomplete-loadings');},
            open    : function(){$(this).removeClass('ui-autocomplete-loadings');},
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
                $('#machines').val(ui.item.label); // display the selected text
                $('#group_mesin').val(ui.item.value); // save selected id to input

                $('#machines').prop("disabled", true);

                return false;
            }
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
        if($("#machines").val() == ""){
      
                pesanwarning.fire({
                    icon: 'warning',
                    title: 'tidak bisa menambah field form, isikan terlebih dahulu field form yang kosong..'
                })

        }
         
            else {

            if($('.whgl'+i+'').val() == ""){
                    
                    pesanwarning.fire({
                        icon: 'warning',
                        title: 'tidak bisa menambah field form, isikan terlebih dahulu field form yang kosong..'
                    })

            }
                else {

                i++; 

            $('#dynamic_field').append('<tr id="row'+i+'">'+
            '<td><input type="number" name="no[]" placeholder="No" value='+i+' class="form-control" disabled=""></td>'+
            '<td><input type="text" class="form-control whgl'+i+'" id="idcallback" name="machi[]" placeholder="Group mesin" required />'+
            '<input type="text" id="group_mesin" name="group_mesin[]" class="form-control hidden gms'+i+'"/></td>'+
            '<td align="right"><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn-lg col-xs-12 btn_remove"><i class="voyager-trash"></i></button></td></tr>'+
            '');

                $('.whgl'+i+'').autocomplete({
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
                                $('.gms'+i+'').val(ui.item.value); // display the selected text
                                $('.whgl'+i+'').val(ui.item.label); // save selected id to input

                                $('.whgl'+i+'').prop("disabled", true);

                                return false;
                            }
                        }
                    );
                }
            }
      });  

      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove(); 
		   i--;
      });   
	  
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

                let arr = { 'd' :  $("#add_name").serializeArray()};
                
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

    </script>
@stop
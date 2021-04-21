
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Transaksi RPT MTC 
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
                                        <button type="submit" class="btn btn-primary pull-right svd">Simpan group khuhus labor</button>&nbsp;
                                        <form name="add_name" id="add_name">
                                            <div class="row">
                                            </div>
                                            <div class="form-group">
                                                <label for="program_id">Group khusus labor</label>
                                                <input type="text" class="form-control col-md-4" id="nama_group_labor" name="nama_group_labor" />
                                            </div>
                                           <p align="right"><button type="button" name="add" id="add" class="btn btn-success waves-effect">Tambah Group mesin</button></p>
                                           <div class="text">  
                                                  <table class="table table-bordered" id="dynamic_field" border="1">  
                                                  <thead>
                                                           <tr class="table-responsive">
                                                               <th nowrap="">No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                               <th nowrap="">&nbsp;&nbsp;&nbsp;&nbsp; Group mesin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                           </tr>
                                                       </thead>
                                                       <tbody>
                                                       <tr>  
                                                            <td width="8%">
                                                               <input type="number" name="no[]" value="1" placeholder="No" class="form-control " required="" disabled="">
                                                           </td>
                                                           <td><input type="text" class="form-control" id="machines" name="machi[]" placeholder="Group mesin" required="">
                                                            <input type="text" class="form-control hidden" id='group_mesin' name="group_mesin[]" readonly></td>
                                                          <td></td>
                                                            <!--
                                                            <input type="hidden" class="form-control" name="no_surat_jalan[]" value="SJM-20210420-009" />
                                                            <input type="number" name="no[]" value="1" placeholder="No" class="form-control name_list" required /></td> 
                                                            <td><input type="text" name="nama[]" placeholder="Nama Barang" class="form-control name_list" required /></td> 	
                                                            <td><input type="number" name="jumlah[]" placeholder="Jumlah (*harus berisi ANGKA)" class="form-control name_list" required /></td>
                                                            <td><input type="text" name="satuan[]" placeholder="Satuan" class="form-control name_list" required />
                                                            -->
                                                       </tr> 
                                                       </tbody>									
                                                  </table>  
                                             </div>
                                           </form></div>
                                    {{-- <div class="form-group">
                                        <label for="program_id">Company</label>
                                        <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                            @foreach ($company as $c)
                                        <option value="{{$c->id}}">{{$c->company_name}}</option>
                                            @endforeach
                                        </select>
                                    </div> --}}

                                </div>
                            </div>
                        </div>
                    </div>
            </div>

            {{-- <button type="submit" class="btn btn-primary pull-right save">
                Add Donation
            </button> --}}
        {{-- </form> --}}
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
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
$(document).ready(function(){  
    // console.log($("#idcallback").val())
    // if($("#idcallback").val() == ""){


    //     else {

    //     }

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
                return false;
            }
        });

    $('#add').click(function(){  

        if($("#machines").val() == ""){
            alert("anda harus mengisiikan row ini terlbih dahul")
        }
         
            else {

            if($('.whgl'+i+'').val() == ""){
        
                    alert("anda harus mengisiikan row ini terlbih s")

                }

                else {

                    i++; 

            $('#dynamic_field').append('<tr id="row'+i+'">'+
            '<td><input type="number" name="no[]" placeholder="No" value='+i+' class="form-control" disabled=""></td>'+
            '<td><input type="text" class="form-control whgl'+i+'" id="idcallback" name="machi[]" placeholder="Group mesin" required />'+
            '<input type="text" id="group_mesin" name="group_mesin[]" class="form-control hidden gms'+i+'"/></td>'+
            '<td align="right"><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove"><i class="voyager-trash"></i></button></td></tr>'+
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
			var nama_group_labor  = document.getElementById("nama_group_labor").value;
            if(nama_group_labor==""){
				alert("Nama group tidak boleh kosong");
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
                    }  
                });
			}
            });
 

    </script>
@stop
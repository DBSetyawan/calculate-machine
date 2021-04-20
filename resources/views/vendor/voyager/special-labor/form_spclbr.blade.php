
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
    <button type="submit" class="btn btn-primary pull-right save">Simpan group khuhus labor</button>&nbsp;

@stop

@section('content')
    <div class="page-content container-fluid">


        <form class="form-edit-add" role="form"
            method="POST" enctype="multipart/form-data" autocomplete="off">

            {{ csrf_field() }}

            <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-bordered">
                            <div class="panel-body">
                                <div class="contanier">
                                    <div class="form-group">  
                                        <form name="add_name" id="add_name">
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
                                                            <!-- For defining autocomplete -->
    <!-- For displaying selected option value from autocomplete suggestion -->
    <input type="text" id='employeeid' readonly>

                                                       <tr>  
                                                            <td width="8%">
                                                               <input type="hidden" class="form-control" name="id_docs[]">
                                                               <input type="number" name="no[]" value="1" placeholder="No" class="form-control " required="" disabled="">
                                                           </td>
                                                           <td><input type="text" class="form-control" id="machines" name="group_mesin[]" placeholder="Group mesin" required=""></td>
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
        </form>
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
        $( "#machines" ).autocomplete({
            source: function( request, response ) {
                // Fetch data
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
                $('#machines').val(ui.item.label); // display the selected text
                $('#employeeid').val(ui.item.value); // save selected id to input
                return false;
            }
        });
    });


  
$(document).ready(function(){  

      var i=1;  
      $('#add').click(function(){  
           i++;  
           $('#dynamic_field').append('<tr id="row'+i+'">'+
		   '<td><input type="hidden" name="no_surat_jalan[]" class="form-control" value="SJM-20210420-009"/>'+
		   '<input type="number" name="no[]" placeholder="No" value='+i+' class="form-control" disabled=""></td>'+
		   '<td><input type="text" class="form-control" name="nama[]" placeholder="Nama Barang" required /></td>'+
		   '<td align="right"><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove(); 
		   i--;
      });   
	  $('#submit').click(function(e){  
			var no_surat_jalan  = document.getElementById("no_surat_jalan").value;
			var no_gid  = document.getElementById("no_gid").value; 			
			var nama_customer  = document.getElementById("nama_customer").value; 
            var alamat_customer  = document.getElementById("alamat_customer").value; 
			var tanggal_kirim  = document.getElementById("tanggal_kirim").value;
            var nopol_kendaraan  = document.getElementById("nopol_kendaraan").value;
			var no_po  = document.getElementById("no_po").value;
			var no_so  = document.getElementById("no_so").value;
			var coa  = document.getElementById("coa").value;
			var keterangan  = document.getElementById("keterangan").value;
			var sopir  = document.getElementById("sopir").value;
			
			var nama = document.getElementById("nama").value;
			var jumlah = document.getElementById("jumlah").value;
			var satuan = document.getElementById("satuan").value;
						if(nama_customer=="" || alamat_customer=="" || jumlah=="" || satuan=="" || nama=="" || sopir==""){
				alert("Ada data yang kosong");
				 var x = document.getElementById("submit");
					x.disabled = false;
			}else{
			var dataString = 'no_surat_jalan=' + no_surat_jalan + '&no_gid=' + no_gid + '&nama_customer=' + nama_customer + '&alamat_customer=' + alamat_customer + '&tanggal_kirim=' + tanggal_kirim + '&nopol_kendaraan=' + nopol_kendaraan + '&no_po=' + no_po+ '&no_so=' + no_so+ '&coa=' + coa+ '&keterangan=' + keterangan + '&sopir=' + sopir;
			$.ajax({  
                url:"modul/name2.php",  
                method:"POST",  
                data:dataString,  
                success:function(data)  
                {  
                     $.ajax({  
						url:"modul/name.php",  
						method:"POST",  
						data:$('#add_name').serialize(),  
						success:function(data)  
						{  
							 $('#add_name')[0].reset();  
						}  
				   });   
				   alert(data);  
				   window.location='?p=report-sjm';
                }  
			});
			}
				  });
 });  
 

    </script>
@stop
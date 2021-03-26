@extends('voyager::master')
@section('page_title', __('voyager::generic.view'))
@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-params"></i> Calculation Machine :
        </h1>
      
        {{-- <a href="{{ route('tr.mch.store.tr.sc.edp') }}" class="btn btn-success btn-add-new">
          <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }} Form kalkulasi(Penyusutan)</span>
        </a> --}}

          {{-- <a href="{{ route('tr.tnp.total.kalkulasi') }}" class="btn btn-warning btn-add-new"> --}}
    </div>
@stop
@section('content')
    <div class="page-content browse container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                    <div class="panel-heading" style="border-bottom:0;margin-bottom:-4px">
                    </div>
                    <div class="panel panel-bordered">
                      <div class="panel-body">
                          <div class="row">
                            <div class="col-2">
                              @inject('TotalKalkulasiTanpaPenyusutan', 'App\TotalKalkulasiTanpaPenyusutan')
                               <span class="badge badge-success hidden" style="cursor: pointer" id="resets"><i class="voyager-refresh"></i> Refresh data </span>
                               <div class="accordion" id="accordionExample">
                                <div class="card">
                                  <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                      <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                       <span style="font-family: Quicksand"><h5 class="mb-1 btn btn-success"><i class="voyager-settings"></i> Settings Calculate <i class="voyager-double-down"></i> </span></h5>
                                      </button>
                                    </h2>
                                  </div>
                              
                                  <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                      <div class="container" id="penyesuaian">
                                        <div class="card" style="width: auto;">
                                          <div class="row">
                                            <div class="col-md-8">
                                            <li class="list-group-item">Fitur Menu</li>
                                              <ul class="list-group list-group-flush">
                                                <li class="list-group-item">
                                                  <div class="list-group">
                                                    <div class="list-group-item-action active">
                                                      <div class="d-flex justify-content-between">
                                                        <h5 class="mb-1 text-secondary"><br />Berikan Tanda Centang pada contoh simbol ini <span class="glyphicon glyphicon glyphicon-check" aria-hidden="true"></span> untuk memulai mengatur perhitungan kalkulasi
                                                          <span class="glyphicon glyphicon glyphicon-share-alt" aria-hidden="true"></span>
                                                              <input type="checkbox" class="form-check-input OpenedTr CheckEventListFormationFirst" id="penyusutan" value="1">
                                                          </h5>
                                                        {{-- <small class="text-muted">Automated.</small> --}}
                                                      </div>
                                                      <p class="mb-1 text-secondary">Jika mencentang MAINTENANCE, maka tabel dibawah akan menyesuaikan hanya tanpa MTC. kolom MAINTENANCE akan disembunyikan, TOTAL SEMUA BIAYA MTC & TOTAL SEMUA BIAYA MTC PERJAMNYA akan ditampilkan.</p>
                                                    </div>
                                                  <hr class="text-muted">
                                                    <div class="list-group-item-action active">
                                                      <div class="d-flex w-100 justify-content-between">
                                                        <h5 class="mb-1 text-secondary">
                                                          {{-- <br />Berikan Tanda Centang pada contoh simbol ini <span class="glyphicon glyphicon glyphicon-check" aria-hidden="true"></span> untuk memulai mengatur perhitungan kalkulasi --}}
                                                        </h5>
                                                        {{-- <small class="text-muted">Automated.</small> --}}
                                                      </div>
                                                      <p class="mb-1 text-secondary">Jika mencentang PENYUSUTAN, maka tabel dibawah akan menyesuaikan hanya tanpa PENYUSUTAN. kolom PENYUSUTAN akan disembunyikan, TOTAL SEMUA BIAYA PENYUSUTAN & TOTAL SEMUA BIAYA PENYUSUTAN PERJAMNYA akan ditampilkan.</p>
                                                    </div>
                                                    <a class=" list-group-item-action active" id="alltruepnytmtc">
                                                      <hr class="text-muted">
                                                      <div class="d-flex w-100 justify-content-between">
                                                        <h5 class="mb-1 text-muted">
                                                          <br />FYI, jika checkbox semua tercentang (PENYUSUTAN & MTC).
                                                        </h5>
                                                        {{-- <small class="text-muted">Automated.</small> --}}
                                                      </div>
                                                      <p class="mb-1 text-muted">Jika mencentang PENYUSUTAN & MAINTENANCE, maka tabel dibawah akan menyesuaikan hanya tanpa PENYUSUTAN & MAINTENANCE. kolom PENYUSUTAN & MAINTENANCE akan disembunyikan, TOTAL SEMUA BIAYA PENYUSUTAN + MTC & TOTAL SEMUA BIAYA PENYUSUTAN + MTC PERJAMNYA akan ditampilkan.</p>
                                                      <small class="text-muted"><span class="badge badge-success"><i class="voyager-check"></i></span> PENYUSUTAN & MTC</span>
                                                        <br/>&nbsp;<h5><p class="mb-1"><code>EDP</code> Jika mengalami kendala, report ke developer.</p></h5>
                                                      </small>
                                                    </a>
                                                  </div>
                                                </li>
                                                <li class="list-group-item">   
                                                  <span class="badge badge-success" style="cursor: pointer" id="setall"><i class="voyager-refresh"></i> Reset Ulang</span>
                                                </li>
                                              </ul>
                                                </div>
                                            <div class="col-md-4">
                                              <ul class="list-group list-group-flush">
                                                <li class="list-group-item">
                                                  <div class="list-group">
                                                    <div class="list-group-item-action active">
                                                      <div class="d-flex justify-content-between">
                                                        <p class="mb-1"><input type="checkbox" name='hide_columns_mtcs' class="Maintenance CheckEventListFormation btn" id="mtcs" value='8'>Tanpa Maintenance</h3>
                                                      </div>
                                                    </div>
                                                  <hr class="text-muted">
                                                    <div class="list-group-item-action active">
                                                      <div class="d-flex w-100 justify-content-between">
                                                        <p class="mb-1"><input type="checkbox" name='hide_columns_pystn' class="Penyusutan CheckEventListFormation btn" id="pnyt" value='6'>Tanpa Penyusutan</h3>
                                                      </div>
                                                      </p>
                                                    </div>
                                                  </div>
                                                </li>
                                              </ul>
                                            </div>
                                        </div>
                                        </div>
                                       {{-- <span class="badge badge-success" style="cursor: pointer" id="reset_filters_calc"><i class="voyager-refresh"></i> Reset </span> --}}
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <button id="btn-show-all-children" class="btn btn-small btn-warning" type="button">show/hide detail data</button>
                    <div class="table-responsive TransactionTr">
                        <table id="dataTablePenyusutan" class="table table-hover" >
                              <thead>
                                <tr>
                                  <th></th>
                                  <th>COMPANY</th>
                                  <th>MESIN</th>
                                  <th>KATEGORI MESIN</th>
                                  <th>GROUP MESIN</th>

                                  <th>LISTRIK</th>
                                  <th>PENYUSUTAN</th>
                                  <th>LABOR</th>
                                  <th>MAINTENANCE</th>
                                    <th>BIAYA PRODUKSI LAIN</th>
                                    <th>GAJI LAINNYA</th>
                                    <th>BAGIAN PENJUALAN</th>
                                    <th>BIAYA ADMINISTRASI UMUM</th>
                                    <th>TOTAL SEMUA BIAYA</th>
                                    <th>TOTAL SEMUA BIAYA (/JAM)</th>
                                    <th>TOTAL SEMUA BIAYA TANPA PENYUSUTAN + MTC</th>
                                    <th>TOTAL SEMUA BIAYA TANPA PENYUSUTAN + MTC (/JAM)</th>
                                    <th>TOTAL SEMUA BIAYA TANPA PENYUSUTAN</th>
                                    <th>TOTAL SEMUA BIAYA TANPA PENYUSUTAN (/JAM)</th>
                                    <th>TOTAL SEMUA BIAYA TANPA MTC</th>
                                    <th>TOTAL SEMUA BIAYA TANPA MTC (/JAM)</th>
                                    {{-- @if(Auth::User()->role->name == "admin" ) --}}
                                    {{-- <th>Actions</th> --}}

                                    {{-- @endif --}}
                                </tr>
                            </thead>

                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

  <div class="page-content browse container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-bordered">
                <div class="panel-body">
                <div class="panel-heading" style="border-bottom:0;margin-bottom:-4px">
                </div>
                <div class="panel panel-bordered">
                  <div class="panel-body">
                      <div class="row">
                        <div class="col-2">
                          <div class="table-responsive TransactionTrRtRt">
                            <table id="dataTableSearchRange" class="table table-hover" >
                                  <thead>
                                    <tr>
                                      <th>COMPANY</th>
                                      <th>GROUP MESIN</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA (/JAM)</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN + MTC</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN + MTC (/JAM)</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN (/JAM)</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA TANPA MTC</th>
                                      <th>TOTAL RATA RATA SEMUA BIAYA TANPA MTC (/JAM)</th>
                                      {{-- @if(Auth::User()->role->name == "admin" ) --}}
                                      <th>Actions</th>
                                      {{-- @endif --}}
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                              </table>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          </div>
@stop

@section('javascript')

<script type="text/javascript">

const isEmpty = (obj) => {
    
    if (obj[0] == null ||
        obj[0] == undefined
    ) {
        return true;
    }
    return Object.getOwnPropertyNames(obj[0]).length === 0;
};

$(document).ready(function(){

  let donlod_tanpa_mtc = "{!! route('voyager.excell.export.calc.exportCalcTanpaMTC') !!}";
  let download_tanpa_mtc = donlod_tanpa_mtc.replace("%7B")

  let donlod_semua_biaya = "{!! route('voyager.excell.export.calc.CalcSmuaBiayaExports') !!}";
  let download_all_cost = donlod_semua_biaya.replace("%7B")

  let donlod_tanpa_penyusutan = "{!! route('voyager.excell.export.calc.exportCalcTanpaPenyusutan') !!}";
  let download_tanpa_penyusutan = donlod_tanpa_penyusutan.replace("%7B")

  let donlod_tanpa_penyusutan_dan_tanpa_mtc = "{!! route('voyager.excell.export.calc.exportCalcTanpaMTCnTanpaPenyusutan') !!}";
  let download_tanpa_penyusutan_dan_tanpa_mtc = donlod_tanpa_penyusutan_dan_tanpa_mtc.replace("%7B")

  var x = $('.CheckEventListFormation:checkbox:checked').map(function() {
                            return this.value;
                        }).get();

  var thisLocalStorageDataRow = [];
  var thisLocalStorageEventCheckedPenyusutanOnly = [];
  var thisLocalStorageEventCheckedMTCOnly = [];

  for (let i = 0; i <localStorage.length; i++) {  
    let penyusutan = JSON.parse(localStorage.getItem("CalcMachineDevStorage.settings"));
    thisLocalStorageDataRow.push(penyusutan);
  }

    for (let i = 0; i <localStorage.length; i++) {  
      let checkedPeny = JSON.parse(localStorage.getItem("EventPenyusutanTrue"));
      thisLocalStorageEventCheckedPenyusutanOnly.push(checkedPeny);
    }

      for (let i = 0; i <localStorage.length; i++) {  
        let checkedMtc = JSON.parse(localStorage.getItem("EventMTCtrue"));
        thisLocalStorageEventCheckedMTCOnly.push(checkedMtc);
      }

    if(isEmpty(thisLocalStorageEventCheckedPenyusutanOnly) == true){
      
      $(".Penyusutan").prop("checked", false);

        setTimeout(function(){ 
            
            $(".calctp").hide(); //tanpa penyusutan
            $(".csbe").hide(); //smua biaya
            $(".calcmtc").hide(); //tanpa mtc
            $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
            $("#alltruepnytmtc").hide();
            $(".CustomFilter").focus();
            $(".TransactionTrRtRt").hide();
            
        }, 1000);

    } else {

        if(thisLocalStorageEventCheckedPenyusutanOnly[0] == "6"){

            $(".Penyusutan").prop("checked", true);
            $(".CustomFilter").focus();
            
            recalculateTanpaPenyusutan().then(value => {
                    if(value.res == 200){
                      $('#dataTablePenyusutan').DataTable().draw()
                    }
                  }
                );

          } else {

          $(".Penyusutan").prop("checked", false);

          setTimeout(function(){ 
            
              $(".calctp").hide(); //tanpa penyusutan
              $(".csbe").hide(); //smua biaya
              $(".calcmtc").hide(); //tanpa mtc
              $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
              $("#alltruepnytmtc").hide();
              $(".CustomFilter").focus();
              $(".TransactionTrRtRt").show();

          
          }, 1000);

        }

    }

    if(isEmpty(thisLocalStorageEventCheckedMTCOnly) == true){
      
      $(".Maintenance").prop("checked", false);

      setTimeout(function(){ 
            
            $(".calctp").hide(); //tanpa penyusutan
            $(".csbe").hide(); //smua biaya
            $(".calcmtc").hide(); //tanpa mtc
            $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
            $("#penyesuaian").show(); //tanpa mtc + penyusutan
            $("#alltruepnytmtc").hide();
            $(".CustomFilter").focus();
        
        }, 1000);

    } else {

        if(thisLocalStorageEventCheckedMTCOnly[0] == "8"){

            $(".Maintenance").prop("checked", true);
            $(".CustomFilter").focus();

          } else {

            $(".Maintenance").prop("checked", false);

            setTimeout(function(){ 

              recalcc_tanpapenyusutan().then(value => {
                      if(value.res == 200){
                        $('#dataTablePenyusutan').DataTable().draw()
                      }
                  });
              
                $(".calctp").hide(); //tanpa penyusutan
                $(".csbe").hide(); //smua biaya
                $(".calcmtc").show(); //tanpa mtc
                $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                $("#alltruepnytmtc").hide();
                $(".CustomFilter").focus();
            
            }, 1000);

        }

    }
    

    if(typeof thisLocalStorageDataRow[0] == 'undefined' ){
   
      $("#penyusutan").prop("checked", false);
      $("#penyesuaian").hide();
      $(".TransactionTr").hide();
      $("#pnyt").hide();
      $("#mtcs").hide();

      setTimeout(function(){ 
            
            $(".calctp").hide(); //tanpa penyusutan
            
            ButtonCalcSmuaBiayaExports()
                    .then(finalResult => finalResult)
                    .then(sd => 
                          
                        $(".csbe").html(sd.button_ButtonCalcSmuaBiayaExports)
                    
                    )

              //set recallculate
               recuncheck_tnppnystan().then(value => {
                    if(value.res == 200){
                      $('#dataTablePenyusutan').DataTable().draw()
                    }
                  }
                );

              $(".csbe").show(); //smua biaya

            $(".calcmtc").hide(); //tanpa mtc
            $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
            $("#alltruepnytmtc").hide();
            $("#setall").hide();
            $(".CustomFilter").focus();
        
        }, 1000);

        setTimeout(() => {
              document.querySelector('cal_semua_biaya').setAttribute('href', download_all_cost);
            
          }, 1000);

    } 
      else {

          $(".CustomFilter").focus();
          $("#alltruepnytmtc").show();
    
          if(thisLocalStorageDataRow[0].ajax.data.penyusutan == 1){
            
              $("#penyusutan").prop("checked", true);
              $("#penyesuaian").show();
              $("#calctnpmtctp").hide();

              mesin_calc_table(1)
              $(".CustomFilter").focus();
          
          } 
            else {

                $("#penyusutan").prop("checked", false);
                $("#penyesuaian").hide();
                
                setTimeout(function(){ 
              
                    $(".calctp").hide(); //tanpa penyusutan

                    ButtonCalcSmuaBiayaExports()
                    .then(finalResult => finalResult)
                    .then(sd => 
                          
                            $(".csbe").html(sd.button_ButtonCalcSmuaBiayaExports)
                          
                        )

              //set recallculate
               recuncheck_tnppnystan().then(value => {
                    if(value.res == 200){
                      $('#dataTablePenyusutan').DataTable().draw()
                    }
                  }
                );

                    $(".csbe").show(); //smua biaya

                    $(".calcmtc").hide(); //tanpa mtc
                    $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                    $("#alltruepnytmtc").hide();
                    $(".CustomFilter").focus();
                
                }, 1000);

                setTimeout(() => {
                        document.querySelector('cal_semua_biaya').setAttribute('href', download_all_cost);
                      
                    }, 1000);
          }

          if(thisLocalStorageEventCheckedMTCOnly[0] == "8" && thisLocalStorageEventCheckedPenyusutanOnly[0] == "6"){

            setTimeout(function(){ 

              $(".calctp").hide(); //tanpa penyusutan
              $(".csbe").hide(); //smua biaya
              $(".calcmtc").hide(); //tanpa mtc
              // $(".calctnpmtctp").show(); //tanpa mtc + penyusutan

              ButtonexportCalcTanpaMTCnTanpaPenyusutan()
                  .then(finalResult => finalResult)
                  .then(sd => 
                        
                      $(".calctnpmtctp").html(sd.button_ButtonexportCalcTanpaMTCnTanpaPenyusutan)
                  
                      
                  )  
                        recalcc_recalculateTanpaPenyusutanNtanpaMTC().then(value => {
                        if(value.res == 200){
                          $('#dataTablePenyusutan').DataTable().draw()
                        }
                      })

                  // recalcc_tanpapenyusutan().then(value => {
                  //       if(value.res == 200){
                  //         $('#dataTablePenyusutan').DataTable().draw()
                  //       }
                  //     });

                  // recalcc_tanpamtcs().then(value => {
                  //     if(value.res == 200){
                  //       $('#dataTablePenyusutan').DataTable().draw()
                  //     }
                  // });

              $(".calctnpmtctp").show();
              $('#main-logo a').attr('href', "asdasdasd");

              $("#alltruepnytmtc").show();
              $(".CustomFilter").focus();

            }, 1000);

          } else {

                  if(thisLocalStorageEventCheckedMTCOnly[0] == "8"){

                    setTimeout(function(){ 

                      $(".calctp").hide(); //tanpa penyusutan
                      $(".csbe").hide(); //smua biaya

                      ButtonexportCalcTanpaMTC()
                      .then(finalResult => finalResult)
                      .then(sd => 
                            
                              $(".calcmtc").html(sd.button_ButtonexportCalcTanpaMTC)
                            
                          )

                  // recalcc_tanpamtcs().then(value => {
                  //     if(value.res == 200){
                  //       $('#dataTablePenyusutan').DataTable().draw()
                  //     }
                  // });
        
                      $(".calcmtc").show(); //smua biaya

                      $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                      $("#alltruepnytmtc").hide();
                      $(".CustomFilter").focus();
                      $(".TransactionTrRtRt").show();

                    }, 1000);

                    setTimeout(() => {
                        document.querySelector('caltanpa_mtc').setAttribute('href', download_tanpa_mtc);
                      
                    }, 1000);

                  }
                    else if(thisLocalStorageEventCheckedPenyusutanOnly[0] == "6"){

                        setTimeout(function(){ 

                          // $(".calctp").show(); //tanpa penyusutan
                          ButtonexportCalcTanpaPenyusutan()
                          .then(finalResult => finalResult)
                          .then(sd => 
                                
                              $(".calctp").html(sd.button_ButtonexportCalcTanpaPenyusutan)
                          )     

                          // recalcc_tanpapenyusutan().then(value => {
                          //   if(value.res == 200){
                          //     $('#dataTablePenyusutan').DataTable().draw()
                          //   }
                          // });


                          $(".calctp").show();

                          $(".csbe").hide(); //smua biaya
                          $(".calcmtc").hide(); //tanpa mtc
                          $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                          $("#alltruepnytmtc").hide();
                          $(".CustomFilter").focus();
                          $(".TransactionTrRtRt").show();


                        }, 1000);

                        setTimeout(() => {
                          
                            document.querySelector('caltanpa_penyusutan').setAttribute('href', download_tanpa_penyusutan);
                          
                      }, 1000);

                  } 
                    else {

                    setTimeout(function(){ 

                      $(".calctp").hide(); //tanpa penyusutan
                      
                        ButtonCalcSmuaBiayaExports()
                        .then(finalResult => finalResult)
                        .then(sd => 
                              
                                $(".csbe").html(sd.button_ButtonCalcSmuaBiayaExports)
                              
                            )

                      //set recallculate
                      recuncheck_tnppnystan().then(value => {
                            if(value.res == 200){
                              $('#dataTablePenyusutan').DataTable().draw()
                            }
                          }
                        );

                        $(".csbe").show(); //smua biaya

                      $(".calcmtc").hide(); //tanpa mtc
                      $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                      $("#alltruepnytmtc").hide();
                      $(".CustomFilter").focus();

                }, 1000);

                setTimeout(() => {
                        document.querySelector('cal_semua_biaya').setAttribute('href', download_all_cost);
                      
                    }, 1000);

            }
      
        }

    }
    
  const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 1800,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })
           $.fn.dataTable.ext.errMode = () => 
            Toast.fire({
                icon: 'error',
                title: 'CODE: 500 Terjadi kesalahan sistem, saat mempersiapkan tabel kalkulasi.'
            });

  $("#resets").hide();
  $("#setall").hide();
  
  $("#reset_filters_calc").hide();

  $('#setall').click(function(){
    $('.CheckEventListFormation:checkbox:checked').each(function() {
        this.checked = false; 
        this.disabled = false;
    }); 

    setTimeout(function(){ 
      let reset = $('#dataTablePenyusutan').DataTable().draw();
      reset.column([7]).visible(true);
      reset.column([6]).visible(true);
      reset.column([8]).visible(true);

      reset.column([12]).visible(true);
      reset.column([13]).visible(true);
      reset.column([15]).visible(false);
      reset.column([14]).visible(true);
      reset.column([17]).visible(false);
      reset.column([16]).visible(false);

      $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
      $("#setall").hide();
      $("#alltruepnytmtc").hide();
      $(".CustomFilter").focus();
      
      ButtonCalcSmuaBiayaExports()
                    .then(finalResult => finalResult)
                    .then(sd => 
                          
                            $(".csbe").html(sd.button_ButtonCalcSmuaBiayaExports)
                          
                        )
                        
              //set recallculate
               recuncheck_tnppnystan().then(value => {
                    if(value.res == 200){
                      $('#dataTablePenyusutan').DataTable().draw()
                    }
                  }
                );

              $(".csbe").show(); //smua biaya

        //set recallculate
        // recuncheck_tnppnystan().then(value => {
        //       if(value.res == 200){
        //         $('#dataTablePenyusutan').DataTable().draw()
        //       }
        //     }
        //   );
      
      }, 1000);

      setTimeout(() => {
            document.querySelector('cal_semua_biaya').setAttribute('href', download_all_cost);
          
        }, 1000);

  });

  $('#penyusutan').click(function(){
      if($(this).is(':checked')){
      
        setTimeout(function(){ 
            
            $("#pnyt").show();
            $("#mtcs").show();
            $("#penyesuaian").show();
            $(".CustomFilter").focus();

          }, 200);

          setTimeout(function(){ 
            
            $(".calctp").hide(); //tanpa penyusutan
            $(".TransactionTrRtRt").show();
            
            ButtonCalcSmuaBiayaExports()
                    .then(finalResult => finalResult)
                    .then(sd => 
                          
                            $(".csbe").html(sd.button_ButtonCalcSmuaBiayaExports)
                          
                        )

                //set recallculate
               recuncheck_tnppnystan().then(value => {
                    if(value.res == 200){
                      $('#dataTablePenyusutan').DataTable().draw()
                    }
                  }
                );

                    $(".csbe").show(); //smua biaya

            $(".calcmtc").hide(); //tanpa mtc
            $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
        
        }, 500);

        setTimeout(() => {
              document.querySelector('cal_semua_biaya').setAttribute('href', download_all_cost);

          }, 1000);

      } else {

          $("#penyesuaian").hide();
          $("#cal_semua_biaya").hide();

          $(".calctp").hide(); //tanpa penyusutan
          $(".csbe").hide(); //smua biaya
          $(".calcmtc").hide(); //tanpa mtc
          $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
          $(".CustomFilter").focus();

      }

  });



    function mesin_calc_table(penyusutan)
        {

          let total_rows = `<span class="label label-info">Open Transaction (Total semua data( 
                                  <span class="badge badge-success">
                                        {{ count($TotalKalkulasiTanpaPenyusutan->get()) }}
                                    </span>
                                    ))
                                </span>`;

          var ert = `<div class="col-md-10">
                      <div class="panel panel-bordered col-md-12">
                        <div class="panel-body">
                          <div class="btn-group btn-group-toggle" data-toggle="buttons">
                             <a onclick="window.open(this.href,'_blank');return false;" href="{!! url('/admin/history-log-recalculate') !!}" class="badge badge-info">History log recalculate</a>
                             <i class="voyager-file-text"> </i>
                            </div>
                            <div class="col-8">
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-secondary active">
                                  Data excell sudah disesuaikan, dengan tabel yang tampil dibawah. <i class="bi bi-file-spreadsheet"></i>  <i class="voyager-book-download"></i>
                                </label>
                              </div>
                                <a class="calctp"></a>
                                <a class="csbe"</a>
                                <a class="calcmtc"></a>
                                <a class="calctnpmtctp"></a>
                            </div>
                        </div>
                      </div>
                    </div>`;

                    // <div class="btn-group btn-group-toggle" data-toggle="buttons">
                    //         <span id="resyncalc" style="cursor:pointer"> Siknronkan kalkulasi</span>
                    //          <i class="voyager-refresh"> </i>
                    //         </div>
            var dataTable = $('#dataTablePenyusutan').DataTable({
                //settingan render pada sisi server, jika data sudah lebih dari 1 jt / 1 m, ini akan membantu meringankan pada sisi server, karna pada akhir data disimpan ke localStorage, kemudian data di render pada sisi client 
                deferRender: true,
                responsive: true,
                processing: true,
                stateSave: true,
                stateDuration: 60 * 24 * 365,
                stateSaveCallback: function ( settings, data ) {
                        
                        // ini menyimpan state pada table aktivitas terakhir
                        localStorage.setItem( 'CalcMachineDevStorage.data', JSON.stringify( data ) );

                        //ini menyimpan data dTrow pada table pada sisi server
                        localStorage.setItem( 'CalcMachineDevStorage.settings', JSON.stringify( settings ) );
                },
                stateLoadCallback: function ( ) {
                        try {

                            //panggil callback data yang tersimpan pada localStorage
                            return JSON.parse( localStorage.getItem( 'CalcMachineDevStorage.data' ) );
                        
                        } catch (e) {
                            console.log(e)
                      }
                },
                serverSide: true,
                scrollY:        '80vh',
                scrollX:        '100vh',
                info:           true,
                scrollCollapse: true,
                retrieve: true,
                order: [[ 1, 'desc' ]],
                paging:         false,
                ajax:{
                    url: "{{ route('tr.total.kalkulasi.all.ready.view.p') }}",
                    data:{
                            penyusutan:penyusutan
                    }
                },
                language: {
                  processing: '<span class="text-info">Sedang memproses..</span>',
                  search: "Cari",
                  infoEmpty: "Tidak ada data apapun disini..",
                  info: "tabel ini sudah disesuaikan dengan pengakumulasian per-mesin.",
                  // info: "menampilkan baris data halaman _PAGE_ dari _PAGES_",
                  zeroRecords: "Pencarian dalam keyword inputan anda tidak dapat kami temukan..",
                },
                  initComplete: function()
                        {
                            $("div.toolbar").html(ert);
                        },
                  // "headerCallback": function( thead, data, start, end, display ) {
                  //   $(thead).find('th').eq(2).html( 'Displaying '+(end-start)+' records' );
                  // },
                columnDefs: [
                    { targets: [14, 15, 16, 17, 18, 19, 20], visible: false,  className: 'text-center'}
                // { "width": "20%", "targets": 1 },

                    // { targets: '_all', visible: false }
                ],
                dom: '<"toolbar">lBfrtrip',
                fixedHeader: {
                  header: true,
                  footer: true
                },
                colReorder: {
                  allowReorder: true
                },
                columns: [
                          {
                              "className":      'details-control',
                              "orderable":      false,
                              "data":           null,
                              "defaultContent": ''
                          },
                          {data: 'company_name', name: 'company_name',  width: "50px" },
                          {data: 'code_mesin', name: 'code_mesin'},
                          {data: 'fungsi_mesin', name: 'fungsi_mesin'},
                          {data: 'nama_mesin_karegori', name: 'GROUP MESIN',  width: "170px" },
                          {data: 'listrik', name: 'listrik', width: "100px"},
                          {data: 'penyusutan', name: 'penyusutan'},
                          {data: 'labor', name: 'labor', width: "100px"},
                          {data: 'mtc', name: 'mtc'},
                          {data: 'b_prod_lain', name: 'BAU'},
                          {data: 'gaji_lainnya', name: 'GAJI LAINNYA', width: "100px"},
                          {data: 'bagian_penjualan', name: 'BAGIAN PENJUALAN'},
                          {data: 'bau', name: 'BIAYA ADMINISTRASI UMUM'},
                          {data: 'semua_total_biaya', name: 'SEMUA TOTAL BIAYA', width: "100px"},
                          {data: 'semua_total_biaya_perjam', name: 'SEMUA TOTAL BIAYA (/JAM)', width: "100px"},
                          {data: 'tanpa_penyusutan_plus_mtc_total', name: 'SEMUA TOTAL BIAYA TANPA PENYUSUTAN + MTC', width: "190px"},
                          {data: 'tanpa_penyusutan_plus_mtc_perjam', name: 'SEMUA TOTAL BIAYA TANPA PENYUSUTAN + MTC (/JAM)', width: "190px"},
                          {data: 'tanpa_penyusutan_total', name: 'SEMUA TOTAL BIAYA TANPA PENYUSUTAN (/JAM)', width: "190px"},
                          {data: 'tanpa_penyusutan_total_perjam', name: 'SEMUA TOTAL BIAYA TANPA PENYUSUTAN (/JAM)', width: "190px"},
                          {data: 'tanpa_mtc_total', name: 'SEMUA TOTAL BIAYA TANPA MTC', width: "150px"},
                          {data: 'tanpa_mtc_total_perjam', name: 'SEMUA TOTAL BIAYA TANPA MTC (/JAM)', width: "150px"},
                          // {data: 'action', name: 'action', orderable: false, searchable: false},

                  ],
            });
            
            dataTable.columns.adjust().draw();

            $('#dataTablePenyusutan tbody').on('click', 'td.details-control', function () {
                var tr = $(this).closest('tr');
                var row = dataTable.row( tr );

                if ( row.child.isShown() ) {
                    row.child.hide();
                    tr.removeClass('shown');
                }
                else {
                    row.child( format(row.data()) ).show();
                    tr.addClass('shown');
                }
            } );

            $('#btn-show-all-children').on('click', function(){
                dataTable.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
            });

            $('#btn-hide-all-children').on('click', function(){
                // Collapse row details
                dataTable.rows('.parent').nodes().to$().find('td:first-child').trigger('click');
            });
            function format ( d ) {
              // console.log("da",d)
        // `d` is the original data object for the row
        // if (obj.hasOwnProperty("id")){
        //     console.log(obj.id);          // ini mengambil object tertentu pada Output stringfy JSON instead of hasOwnProperty method
        // }
                  return '<div class="page-content browse container-fluid"><table class="table table-hover">'+
                      '<tr>'+
                          // '<td>Mockup data:</td>'+
                          '<td>Keterangan mesin : '+JSON.stringify(d.mesin.deskripsi)+'</td>'+
                          '</tr>'+
                      // '<tr>'+
                      //     '<td>other data:</td>'+
                      //     '<td>[{}]</td>'+
                      //     '</tr>'+
                      // '<tr>'+
                      //     '<td>Extra data:</td>'+
                      //     '<td>[{...exs}]</td>'+
                      //     '</tr>'+
                      '</table></div>';
              }

        $("#dataTablePenyusutan_filter label input").addClass( 'CustomFilter' );

        $("#resets").click(function(e){

          $("#penyesuaian").hide();
          $("#reset_filters_calc").hide();
          $("#penyusutan").removeAttr("disabled");
          $("#penyusutan").prop("checked", false);
          let refresh = $('#dataTablePenyusutan').DataTable().draw();
              refresh.column([5]).visible(true);
              refresh.column([7]).visible(true);

              refresh.column([12]).visible(true);
              refresh.column([13]).visible(true);
              refresh.column([15]).visible(false);
              refresh.column([14]).visible(false);
              refresh.column([17]).visible(false);
              refresh.column([16]).visible(false);

              $('.CheckEventListFormation:checkbox:checked').each(function() {
                    this.checked = false; 
                });     
              
              $(".CheckEventListFormation").removeAttr("disabled");
              $('.TransactionTr').focus();

        });
            $('.CheckEventListFormationFirst:checkbox:checked').each(function() {
                this.checked = true; 
                $(this).attr('disabled', 'disabled'); 
                $("#resets").hide();

            });  

            $("#reset_filters_calc").click(function(){

                  let db_temp = $('#dataTablePenyusutan').DataTable().draw();
                  db_temp.column([5]).visible(true);
                  db_temp.column([7]).visible(true);

                  db_temp.column([12]).visible(true);
                  db_temp.column([13]).visible(true);
                  db_temp.column([15]).visible(false);
                  db_temp.column([14]).visible(false);

                  $("input[type='checkbox']").removeAttr("disabled");

                  $('.CheckEventListFormation:checkbox:checked').each(function() {
                        this.checked = false; 
                    });     
                  
                  $("#resets").hide();
                  $("#penyesuaian").show();

                  $('.CheckEventListFormationFirst:checkbox:checked').each(function() {
                        this.checked = false; 
                    });
                   
            }); 

            $(document).on("change", ".CheckEventListFormation", function () {
                var mtcs = $('.CheckEventListFormation:checkbox:checked').length;

                  if(mtcs > 1){
                    
                      $("#alltruepnytmtc").show();
                      $("#reset_filters_calc").hide();
                      $("#resets").hide();
                      $("#setall").show();
                      
                      dataTable.column([18]).visible(false);
                      dataTable.column([19]).visible(false);
                      dataTable.column([20]).visible(false);
                      dataTable.column([16]).visible(true);
                      dataTable.column([17]).visible(false);
                      dataTable.column([14]).visible(false);
                      dataTable.column([15]).visible(true);
                      dataTable.column([6]).visible(true);
                      dataTable.column([7]).visible(true);
                      dataTable.column([8]).visible(true);
                      dataTable.column([13]).visible(false);
                      dataTable.column([12]).visible(true);
                      $("#pnyt").attr('disabled', 'disabled'); 
                      $("#mtcs").attr('disabled', 'disabled'); 

                      setTimeout(function(){ 
          
                          $(".calctp").hide(); //tanpa penyusutan
                          $(".csbe").hide(); //smua biaya
                          $("#cal_semua_biaya").hide(); //smua biaya
                          $(".calcmtc").hide(); //tanpa mtc
                          // $(".calctnpmtctp").show(); //tanpa mtc + penyusutan
                          ButtonexportCalcTanpaMTCnTanpaPenyusutan()
                            .then(finalResult => finalResult)
                            .then(sd => 
                                  
                                $(".calctnpmtctp").html(sd.button_ButtonexportCalcTanpaMTCnTanpaPenyusutan)
                            
                            )  

                            recalcc_tanpapenyusutan().then(value => {
                              if(value.res == 200){
                                $('#dataTablePenyusutan').DataTable().draw()
                              }
                            });

                            recalcc_tanpamtcs().then(value => {
                                if(value.res == 200){
                                  $('#dataTablePenyusutan').DataTable().draw()
                                }
                            });

                            $(".calctnpmtctp").show(); //tanpa mtc

                          $(".CustomFilter").focus();

                      }, 1000);

                      setTimeout(() => {
              
                          document.querySelector('caltpmtctpc').setAttribute('href', download_tanpa_penyusutan_dan_tanpa_mtc);
                        
                      }, 1000);

                  } 
                    else {

                      if(!$(this).is(':checked')){

                            if(x == 6){

                              let rf1 = $('#dataTablePenyusutan').DataTable().draw();

                              rf1.column([12]).visible(false);
                                rf1.column([13]).visible(true);
                                rf1.column([14]).visible(false);
                                rf1.column([15]).visible(false);
                                rf1.column([18]).visible(false);
                                rf1.column([19]).visible(false);
                            } 

                            if(x == 8){
                              
                              let rf2 = $('#dataTablePenyusutan').DataTable().draw();
                                
                                rf2.column([5]).visible(true);
                                rf2.column([14]).visible(false);
                                rf2.column([15]).visible(false);
                                rf2.column([16]).visible(false);
                                rf2.column([17]).visible(false);
                                rf2.column([12]).visible(false);
                                rf2.column([13]).visible(false);

                            }

                      }

                  }
            });

            $('#pnyt').click(function(){

                  $.each($('input[type="checkbox"]:checked'), function (key, value) {
                      var peny = $('.Penyusutan:checkbox:checked').map(function() {
                          return this.value;
                      }).get();

                      localStorage.setItem("EventPenyusutanTrue", JSON.stringify( peny ) );

                      //deploy memunculkan column penyusutan di set 0.

                      // dataTable.column(peny).visible(false);
                      dataTable.column([12]).visible(true);
                      dataTable.column([13]).visible(false);
                      dataTable.column([14]).visible(false);
                      dataTable.column([15]).visible(false);
                      dataTable.column([18]).visible(true);
                      dataTable.column([19]).visible(false);
                      dataTable.column([16]).visible(false);
                      dataTable.column([17]).visible(true);

                      recalcc_tanpapenyusutan().then(value => {
                        if(value.res == 200){
                          $('#dataTablePenyusutan').DataTable().draw()
                        }
                      });

                });

                setTimeout(function(){ 

                    ButtonexportCalcTanpaPenyusutan()
                    .then(finalResult => finalResult)
                    .then(sd => 
                          
                        $(".calctp").html(sd.button_ButtonexportCalcTanpaPenyusutan)
                    
                    )     

                    // ButtonexportCalcTanpaPenyusutan()
                    // .then(finalResult => finalResult)
                    // .then(sd => 
                          
                    //     $(".calctp").html(sd.button_ButtonexportCalcTanpaPenyusutan)
                    
                    // )     

                    $(".calctp").show();

                    $('.TransactionTr').focus();
                    $(".csbe").hide(); //smua biaya
                    $("#cal_semua_biaya").hide(); //smua biaya
                    $(".calcmtc").hide(); //tanpa mtc
                    $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                    $(".CustomFilter").focus();
                
                }, 1000);

                setTimeout(() => {
                          
                      document.querySelector('caltanpa_penyusutan').setAttribute('href', download_tanpa_penyusutan);
                    
                  }, 1000);

                if(!$(this).is(':checked')){
                  
                var mtcs = $('#mtcs:checkbox:checked').length;

                    if(mtcs){

                      $("#cal_semua_biaya").hide(); //smua biaya
                              $(".csbe").hide(); //smua biaya

                      let db_temp = $('#dataTablePenyusutan').DataTable().draw();
                          db_temp.column([12]).visible(true);
                          db_temp.column([13]).visible(false);
                          db_temp.column([14]).visible(false);
                          db_temp.column([15]).visible(false);
                          db_temp.column([18]).visible(false);
                          db_temp.column([19]).visible(true);
                          db_temp.column([16]).visible(false);
                          db_temp.column([17]).visible(false);
                          db_temp.column([11]).visible(true);
                          db_temp.column([20]).visible(true);
                          db_temp.column(6).visible(true);
                          db_temp.column(7).visible(true);
                          db_temp.column(8).visible(true);
                          // db_temp.column(5).visible(true);

                          setTimeout(function(){ 
          
                              $(".calctp").hide(); //tanpa penyusutan
                  

                              ButtonexportCalcTanpaMTC()
                                .then(finalResult => finalResult)
                                .then(sd => 
                                      
                                        $(".calcmtc").html(sd.button_ButtonexportCalcTanpaMTC)
                                      
                                    )

                                    // recalcc_tanpapenyusutan().then(value => {
                                    //   if(value.res == 200){
                                    //     $('#dataTablePenyusutan').DataTable().draw()
                                    //   }
                                    // });
                                  //set penyusutan only
                                  recalcc_PenyusutanRecalculateOnly().then(value => {
                                    if(value.res == 200){
                                      $('#dataTablePenyusutan').DataTable().draw()
                                    }
                                  });

                                  // recalcc_tanpamtcs().then(value => {
                                  //     if(value.res == 200){
                                  //       $('#dataTablePenyusutan').DataTable().draw()
                                  //     }
                                  //   });

                                // $(".calcmtc").show(); //smua biayacaltanpa_mtc
                                $(".calcmtc").show(); //smua biayacaltanpa_mtc

                              $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                              $(".CustomFilter").focus();
                       
                              
                          }, 1000);

                          setTimeout(() => {
                        document.querySelector('caltanpa_mtc').setAttribute('href', download_tanpa_mtc);
                      
                    }, 1000);

                    } else {
                        let db_temp = $('#dataTablePenyusutan').DataTable().draw();
                            db_temp.column([12]).visible(true);
                            db_temp.column([13]).visible(true);
                            db_temp.column([14]).visible(true);
                            db_temp.column([15]).visible(false);
                            db_temp.column([18]).visible(false);
                            db_temp.column([19]).visible(false);
                            db_temp.column([16]).visible(false);
                            db_temp.column([17]).visible(false);
                            db_temp.column(6).visible(true);
                            db_temp.column(7).visible(true);
                            db_temp.column(8).visible(true);
                            // db_temp.column(6).visible(true);

                          setTimeout(function(){ 
          
                                $(".calctp").hide(); //tanpa penyusutan
                                
                            ButtonCalcSmuaBiayaExports()
                            .then(finalResult => finalResult)
                            .then(sd => 
                                  
                                    $(".csbe").html(sd.button_ButtonCalcSmuaBiayaExports)
                                  
                                )

                                //set recallculate
                                recuncheck_tnppnystan().then(value => {
                                    if(value.res == 200){
                                      $('#dataTablePenyusutan').DataTable().draw()
                                    }
                                  }
                                );

                            $(".csbe").show(); //smua biaya

                                $(".calcmtc").hide(); //tanpa mtc
                                $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                                $("#alltruepnytmtc").hide();
                                $(".CustomFilter").focus();
                                
                            }, 1000);

                            setTimeout(() => {
                                document.querySelector('cal_semua_biaya').setAttribute('href', download_all_cost);
                              
                            }, 1000);
      
                      }

                    localStorage.removeItem("EventPenyusutanTrue");

                    //deploy memunculkan column penyusutan di set 0.
                }

          });

          $('#mtcs').click(function(){

                  $.each($('input[type="checkbox"]:checked'), function (key, value) {

                  var mtcs = $('.Maintenance:checkbox:checked').map(function() {
                      return this.value;
                  }).get();

                  localStorage.setItem("EventMTCtrue", JSON.stringify( mtcs ) );

                      // dataTable.column(mtcs).visible(false);
                      dataTable.column([14]).visible(false);
                      dataTable.column([15]).visible(false);
                      dataTable.column([16]).visible(false);
                      dataTable.column([17]).visible(false);
                      dataTable.column([12]).visible(true);
                      dataTable.column([13]).visible(false);
                      dataTable.column([18]).visible(false);
                      dataTable.column([19]).visible(true);
                      dataTable.column([20]).visible(true);

                      recalcc_tanpamtcs().then(value => {
                        if(value.res == 200){
                          $('#dataTablePenyusutan').DataTable().draw()
                        }
                      });

                });

                setTimeout(function(){ 
          
                    $(".calctp").hide(); //tanpa penyusutan
                    $(".csbe").hide(); //smua biaya
                    $("#cal_semua_biaya").hide(); //smua biaya

                    ButtonexportCalcTanpaMTC()
                    .then(finalResult => finalResult)
                    .then(sd => 
                          
                            $(".calcmtc").html(`${sd.button_ButtonexportCalcTanpaMTC}`)
                          
                        )

                  recalcc_tanpamtcs().then(value => {
                      if(value.res == 200){
                        $('#dataTablePenyusutan').DataTable().draw()
                      }
                  });

                    $(".calcmtc").show(); //smua biaya
                    $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                    $(".CustomFilter").focus();
                  
                }, 1000);

                setTimeout(() => {
                  
                  $('#caltanpa_mtc').attr('href', download_tanpa_mtc);
                      
                    }, 1000);

                if(!$(this).is(':checked')){
                  var checkedmtc = $('#pnyt:checkbox:checked').length;

                    if(checkedmtc) {
                      
                          dataTable.column([14]).visible(false);
                          dataTable.column([15]).visible(false);
                          dataTable.column([16]).visible(false);
                          dataTable.column([17]).visible(true);
                          dataTable.column([18]).visible(true);
                          dataTable.column([19]).visible(false);
                          dataTable.column([20]).visible(false);
                          dataTable.column([12]).visible(true);
                          dataTable.column([13]).visible(false);
                          dataTable.column([8]).visible(true);
                          dataTable.column([6]).visible(true);

                          setTimeout(function(){ 
          
                              ButtonexportCalcTanpaPenyusutan()
                              .then(finalResult => finalResult)
                              .then(sd => 
                                    
                                  $(".calctp").html(sd.button_ButtonexportCalcTanpaPenyusutan)
                              
                              ) 
                               
                                recalculateTanpaPenyusutan().then(value => {
                                  if(value.res == 200){
                                    $('#dataTablePenyusutan').DataTable().draw()
                                  }
                                });
                              
                              $(".calctp").show();

                              $(".csbe").hide(); //smua biaya
                              $("#cal_semua_biaya").hide(); //smua biaya
                              $(".calcmtc").hide(); //tanpa mtc
                              $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                              $(".CustomFilter").focus();
                          
                          }, 1000);

                          setTimeout(() => {
                          
                              document.querySelector('caltanpa_penyusutan').setAttribute('href', download_tanpa_penyusutan);
                          
                        }, 1000);

                    } else {

                          dataTable.column([8]).visible(true);
                          dataTable.column([14]).visible(true);
                          dataTable.column([15]).visible(false);
                          dataTable.column([16]).visible(false);
                          dataTable.column([17]).visible(false);
                          dataTable.column([18]).visible(false);
                          dataTable.column([19]).visible(false);
                          dataTable.column([20]).visible(false);
                          dataTable.column([12]).visible(true);
                          dataTable.column([13]).visible(true);

                              setTimeout(function(){ 

                                  $(".calctp").hide(); //tanpa penyusutan
                                  
                              ButtonCalcSmuaBiayaExports()
                              .then(finalResult => finalResult)
                              .then(sd => 
                                    
                                      $(".csbe").html(sd.button_ButtonCalcSmuaBiayaExports)
                                    
                                  )

                              //this only setting recalulate mtc only
                              recalcc_mtconly().then(value => {
                                if(value.res == 200){
                                  $('#dataTablePenyusutan').DataTable().draw()
                                }
                              });

                              $(".csbe").show(); //smua biaya

                                  $(".calcmtc").hide(); //tanpa mtc
                                  $(".calctnpmtctp").hide(); //tanpa mtc + penyusutan
                                  $("#alltruepnytmtc").hide();
                                  $(".CustomFilter").focus();

                              }, 1000);

                              setTimeout(() => {
                                  document.querySelector('cal_semua_biaya').setAttribute('href', download_tanpa_mtc);
                                
                              }, 1000);

                        localStorage.removeItem("EventMTCtrue");

                        //deploy memunculkan column penyusutan di set 0.
                        //set recallculate
                        //   recuncheck_tnppnystan().then(value => {
                        //     if(value.res == 200){
                        //       $('#dataTablePenyusutan').DataTable().draw()
                        //     }
                        //   }
                        // );

                     }

                  }
              
              }

          );
          
        }

        // sinkronkan data master ke kalkulasi tbl. <Test>:[<Gaji_Lain>]
        $("body").on('click', "#resyncalc", function(e) {
          alert("sync")
        })

          $('#penyusutan').click(function(){

              if($(this).is(':checked')){
                    $('#tanpapenyusutan').prop('disabled', true);
                    $(".CustomFilter").focus();

                    if($(this).val() != '')
                    {
                        $(".TransactionTr").show();
                        $('#dataTablePenyusutan').DataTable().destroy();
                        mesin_calc_table($(this).val());
                        $(".CustomFilter").focus();
                        //set recallculate
                        recuncheck_tnppnystan().then(value => {
                              if(value.res == 200){
                                $('#dataTablePenyusutan').DataTable().draw()
                              }
                            }
                          );

                    }
                      else
                      {
                          alert('Exit nothing event');
                      }

              }
                if(!$(this).is(':checked')){
                    $('#tanpapenyusutan').prop('disabled', false);
                    $('#dataTablePenyusutan').DataTable().destroy();
                    mesin_calc_table(0);
                    $(".CustomFilter").focus();

                }
            });

        $('#tanpapenyusutan').click(function(){
            if($(this).is(':checked')){
                $('#penyusutan').prop('disabled', true);
                $(".CustomFilter").focus();


            }
            if(!$(this).is(':checked')){
                $('#penyusutan').prop('disabled', false);
                $(".CustomFilter").focus();

            }

        });
    
  });

  async function ButtonexportCalcTanpaPenyusutan() {
    let env = "{{ config('app.vpn') }}";
    
        return fetch(`${env}/kalkulasimesin2/public/admin/button-load-ButtonexportCalcTanpaPenyusutan`, {
                method: 'GET',
                cache: 'no-cache',
                credentials: 'same-origin',
                redirect: 'follow',
                referrer: 'no-referrer',
                headers: {
                            'X-CSRF-TOKEN': "{{ csrf_token() }}",
                            'Content-Type': 'application/json'
                        }
                }
            )
        .then(response => response.json())

              .catch((error) => {
                console.log(error);
            }
        );

  }
  
    async function ButtonCalcSmuaBiayaExports() {

      let env = "{{ config('app.vpn') }}";

          return fetch(`${env}/kalkulasimesin2/public/admin/button-load-ButtonCalcSmuaBiayaExports`, {
                  method: 'GET',
                  cache: 'no-cache',
                  credentials: 'same-origin',
                  redirect: 'follow',
                  referrer: 'no-referrer',
                  headers: {
                              'X-CSRF-TOKEN': "{{ csrf_token() }}",
                              'Content-Type': 'application/json'
                          }
                  }
              )
          .then(response => response.json())
              .catch((error) => {
                console.log(error);
            }
        );

      }
      
      async function recalcc_tanpapenyusutan() {

        let env = "{{ config('app.vpn') }}";

            return fetch(`${env}/kalkulasimesin2/public/admin/reset-total-tanpa-penyusutan`, {
                    method: 'POST',
                    cache: 'no-cache',
                    credentials: 'same-origin',
                    redirect: 'follow',
                    referrer: 'no-referrer',
                    headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                'Content-Type': 'application/json'
                            }
                    }
                )
            .then(response => response.json())
              .catch((error) => {
                  console.log(error);
              }
          );

        }
        

        async function recalcc_recalculateTanpaPenyusutanNtanpaMTC() {

          let env = "{{ config('app.vpn') }}";

              return fetch(`${env}/kalkulasimesin2/public/admin/reset-total-recalculateTanpaPenyusutanNtanpaMTC`, {
                      method: 'POST',
                      cache: 'no-cache',
                      credentials: 'same-origin',
                      redirect: 'follow',
                      referrer: 'no-referrer',
                      headers: {
                                  'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                  'Content-Type': 'application/json'
                              }
                      }
                  )
              .then(response => response.json())
                .catch((error) => {
                    console.log(error);
                }
            );

          }

          async function recalculateTanpaPenyusutan() {

            let env = "{{ config('app.vpn') }}";

                return fetch(`${env}/kalkulasimesin2/public/admin/button-load-recalculateTanpaPenyusutan`, {
                        method: 'POST',
                        cache: 'no-cache',
                        credentials: 'same-origin',
                        redirect: 'follow',
                        referrer: 'no-referrer',
                        headers: {
                                    'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                    'Content-Type': 'application/json'
                                }
                        }
                    )
                .then(response => response.json())
                  .catch((error) => {
                      console.log(error);
                  }
              );

            }

        async function recalcc_mtconly() {

        let env = "{{ config('app.vpn') }}";

            return fetch(`${env}/kalkulasimesin2/public/admin/reset-total-tanpa-MtcRecalculateOnly`, {
                    method: 'POST',
                    cache: 'no-cache',
                    credentials: 'same-origin',
                    redirect: 'follow',
                    referrer: 'no-referrer',
                    headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                'Content-Type': 'application/json'
                            }
                    }
                )
            .then(response => response.json())
              .catch((error) => {
                  console.log(error);
              }
          );

        }

        async function recuncheck_tnppnystan() {

        let env = "{{ config('app.vpn') }}";

            return fetch(`${env}/kalkulasimesin2/public/admin/reset-total-tanpa-rclluncheckpnyt`, {
                    method: 'POST',
                    cache: 'no-cache',
                    credentials: 'same-origin',
                    redirect: 'follow',
                    referrer: 'no-referrer',
                    headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                'Content-Type': 'application/json'
                            }
                    }
                )
            .then(response => response.json())
                .catch((error) => {
                  console.log(error);
              }
          );

        }
        
        async function recalcc_tanpamtcs() {

          let env = "{{ config('app.vpn') }}";

            return fetch(`${env}/kalkulasimesin2/public/admin/reset-total-tanpa-mtcs`, {
                    method: 'POST',
                    cache: 'no-cache',
                    credentials: 'same-origin',
                    redirect: 'follow',
                    referrer: 'no-referrer',
                    headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                'Content-Type': 'application/json'
                            }
                    }
                )
            .then(response => response.json())
                .catch((error) => {
                  console.log(error);
              }
          );

        }

        async function recalcc_PenyusutanRecalculateOnly() {

          let env = "{{ config('app.vpn') }}";

            return fetch(`${env}/kalkulasimesin2/public/admin/reset-total-tanpa-PenyusutanRecalculateOnly`, {
                    method: 'POST',
                    cache: 'no-cache',
                    credentials: 'same-origin',
                    redirect: 'follow',
                    referrer: 'no-referrer',
                    headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                'Content-Type': 'application/json'
                            }
                    }
                )
            .then(response => response.json())
                .catch((error) => {
                  console.log(error);
              }
          );

        }

    async function ButtonexportCalcTanpaMTCnTanpaPenyusutan() {

      let env = "{{ config('app.vpn') }}";

          return fetch(`${env}/kalkulasimesin2/public/admin/button-load-ButtonexportCalcTanpaMTCnTanpaPenyusutan`, {
                  method: 'GET',
                  cache: 'no-cache',
                  credentials: 'same-origin',
                  redirect: 'follow',
                  referrer: 'no-referrer',
                  headers: {
                              'X-CSRF-TOKEN': "{{ csrf_token() }}",
                              'Content-Type': 'application/json'
                          }
                  }
              )
          .then(response => response.json())
              .catch((error) => {
                console.log(error);
            }
        );

      }

      async function ButtonexportCalcTanpaMTC() {
        let env = "{{ config('app.vpn') }}";
            return fetch(`${env}/kalkulasimesin2/public/admin/button-load-ButtonexportCalcTanpaMTC`, {
                    method: 'GET',
                    cache: 'no-cache',
                    credentials: 'same-origin',
                    redirect: 'follow',
                    referrer: 'no-referrer',
                    headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                                'Content-Type': 'application/json'
                            }
                    }
                )
            .then(response => response.json())
                .catch((error) => {
                  console.log(error);
              }
          );

      }

      $(document).ready(function() {
        var dataTables = $('#dataTableSearchRange').DataTable( {
            "processing": true,
            "serverSide": true,
            "ajax": "{{ route('tr.total.rt.rt.kalkulasi.all.ready.view.p') }}",
            language: {
                  processing: '<span class="text-info">Sedang diproses..</span>',
                  search: "Cari",
                  infoEmpty: "Tidak ada data apapun disini..",
                  info: "tabel ini sudah di groupkan berdasarkan kategori dari masing - masing mesin yang tersedia.",
                  // info: "menampilkan baris data halaman _PAGE_ dari _PAGES_",
                  zeroRecords: "Pencarian dalam keyword inputan anda tidak dapat kami temukan..",
            },
            serverSide: true,
            scrollY:        '90vh',
            scrollX:        '100vh',
            info:           true,
            scrollCollapse: true,
            retrieve: true,
            order: [[ 1, 'desc' ]],
            paging: false,
            deferRender: true,
            responsive: true,
            processing: true,
            stateSave: true,
            stateDuration: 60 * 24 * 365,
            columns: [
                  {data: 'company_name', name: 'company_name',  width: "50px" },
                  {data: 'group_mesin', name: 'GROUP MESIN',  width: "230px" },
                  {data: 'rtrt_semua_total_biaya', name: 'TOTAL RATA RATA SEMUA BIAYA', width: "100px"},
                  {data: 'rtrt_semua_total_biaya_perjam', name: 'TOTAL RATA RATA SEMUA BIAYA (/JAM)', width: "100px"},
                  {data: 'rtrt_tanpa_penyusutan_plus_mtc_total', name: 'TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN + MTC', width: "190px"},
                  {data: 'rtrt_tanpa_penyusutan_plus_mtc_perjam', name: 'TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN + MTC (/JAM)', width: "190px"},
                  {data: 'rtrt_tanpa_penyusutan_total', name: 'TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN (/JAM)', width: "190px"},
                  {data: 'rtrt_tanpa_penyusutan_total_perjam', name: 'TOTAL RATA RATA SEMUA BIAYA TANPA PENYUSUTAN (/JAM)', width: "190px"},
                  {data: 'rtrt_tanpa_mtc_total', name: 'TOTAL RATA RATA SEMUA BIAYA TANPA MTC', width: "150px"},
                  {data: 'rtrt_tanpa_mtc_total_perjam', name: 'TOTAL RATA RATA SEMUA BIAYA TANPA MTC (/JAM)', width: "150px"},
                  {data: 'action', name: 'action', orderable: false, searchable: false},

              ]
        } );

        dataTables.columns.adjust().draw();


    } );
  </script>
@stop

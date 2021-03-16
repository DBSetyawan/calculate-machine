<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/public', function () {
    return redirect()->route('voyager.login');
});



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::get('export/all-calculate-machine-xlsx-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@exportCalcTanpaPenyusutan')->name('voyager.excell.export.calc.exportCalcTanpaPenyusutan');
    Route::get('export/all-calculate-machine-xlsx-tanpa-maintenance','KOP\VoyagerTotalKalkulasiController@exportCalcTanpaMTC')->name('voyager.excell.export.calc.exportCalcTanpaMTC');
    Route::get('export/all-calculate-machine-xlsx-semua-total-biaya','KOP\VoyagerTotalKalkulasiController@CalcSmuaBiayaExports')->name('voyager.excell.export.calc.CalcSmuaBiayaExports');
    Route::get('export/all-calculate-machine-xlsx-tanpa-maintenance-dan-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@exportCalcTanpaMTCnTanpaPenyusutan')->name('voyager.excell.export.calc.exportCalcTanpaMTCnTanpaPenyusutan');
  
    Route::get('listrik/recalculate-machine/{id}','KOP\VoyagerListrikController@recalculate')->name('voyager.listrik.recalculate.persen.cost.adm');
    Route::get('users/relation','KOP\VoyagerUserController@relations')->name('voyager.users.relation');
    Route::get('users/{id}/detail-users','KOP\VoyagerUserController@show')->name('voyager.users.show');
    Route::get('users','KOP\VoyagerUserController@index')->name('voyager.users.index');
    Route::get('users/profile','KOP\VoyagerUserController@profile')->name('voyager.profile');
    Route::get('users/{id}/edit','KOP\VoyagerUserController@edit')->name('voyager.users.edit');
    Route::put('users/{id}','KOP\VoyagerUserController@update')->name('voyager.users.update');
    Route::post('users','KOP\VoyagerUserController@store')->name('voyager.users.store');
    Route::get('users/{id}','KOP\VoyagerUserController@destroy')->name('voyager.users.destroy');
    Route::get('users/create/new','KOP\VoyagerUserController@create')->name('voyager.users.created');

    Route::get('listriks/form-listrik','KOP\VoyagerListrikController@formListrikAction')->name('listriks.form.master');
    Route::post('listriks/store-listrik','KOP\VoyagerListrikController@HitungAkumulasiListrik')->name('listriks.store.master');

    Route::post('penyusutans/store-penyusutan','KOP\VoyagerPenyusutanController@HitungAkumulasiPenyusutanPerbulan')->name('penyusutans.store.master');
    Route::get('penyusutans/form-penyusutan','KOP\VoyagerPenyusutanController@formPenyusutanAction')->name('penyusutans.form.master');
    
    Route::post('mtcs/store-mtc','KOP\VoyagerMTcController@HitungAkumulasiMaintenance')->name('mtcs.store.master');
    Route::get('mtcs/form-mtc','KOP\VoyagerMTcController@formMTCAction')->name('mtcs.form.master');

    Route::post('labors/store-mtc','KOP\VoyagerLaborController@HitungAkumulasiLabor')->name('labors.store.master');
    Route::get('labors/form-mtc','KOP\VoyagerLaborController@formLaborAction')->name('labors.form.master');
    
    // cari detail mesin di form listrik
    Route::post('mesin-detail','KOP\VoyagerMachineController@detailcodemesin')->name('detail.data.mesin');

    Route::post('laporan-gaji-lains/store-laporan-gaji-lain','KOP\VoyagerLaporanGajiLainController@HitungAkumulasiLaporanGajiLain')->name('laporan.g.lains.store.master');
    Route::get('laporan-gaji-lains/form-laporan-gaji-lain','KOP\VoyagerLaporanGajiLainController@formLaporanGajiLainAction')->name('laporan.g.lains.form.master');
    Route::post('laporan-gaji-lains/change-master-gaji-lain','KOP\VoyagerLaporanGajiLainController@EventChangeGajiLain')->name('change.gajilain.form.master');
    Route::post('laporan-gaji-lains/recalculate-gl','KOP\VoyagerLaporanGajiLainController@EventChangeLpGajiLain')->name('change.gajilain.form.EventChangeLpGajiLain');
    Route::get('laporan-gaji-lains/change-master-gaji-QueryCompany','KOP\VoyagerLaporanGajiLainController@QueryCompany')->name('change.gajilain.form.QueryCompany');

    Route::post('gaji-lains/store-gaji-lain','KOP\VoyagerGajiLainController@HitungAkumulasiGajiLain')->name('g.lains.store.master');
    Route::get('gaji-lains/form-gaji-lain','KOP\VoyagerGajiLainController@formGajiLainAction')->name('g.lains.form.master');
    
    Route::post('laporan-bagian-penjualans/laporan-bag-penj-stored','KOP\VoyagerLaporanBagianPenjualanController@HitungAkumulasiLBagianPenjualan')->name('lps.bagian.penjualan.storeds');
    Route::get('laporan-bagian-penjualans/form-laporan-bagian-penjualans','KOP\VoyagerLaporanBagianPenjualanController@formLBagPenjualanAction')->name('lp.bg.pnjualan.form.master');
    
    Route::post('bagian-penjualans/store-bagian-penjualan','KOP\VoyagerBagianPenjualanController@HitungAkumulasiBagianPenjualan')->name('bg.pnjualan.store.master');
    Route::get('bagian-penjualans/form-bagian-penjualan','KOP\VoyagerBagianPenjualanController@formBagPenjualanAction')->name('bg.pnjualan.form.master');

    Route::post('biaya-administrasi-umums/store-biaya-administrasi-umum','KOP\VoyagerBiayaAdministrasiUmumController@HitungAkumulasiBiayaAdministrasiUmum')->name('b.adm.store.master');
    Route::get('biaya-administrasi-umums/form-biaya-administrasi-umum','KOP\VoyagerBiayaAdministrasiUmumController@formBiayaAdministrasiUmumAction')->name('b.adm.form.master');

    Route::post('rpt-mtcs/store-rpt-mtc-store','KOP\VoyagerRptMTController@HitungAkumulasiRPTMaintenance')->name('rpt.mtc.store.master');
    Route::get('rpt-mtcs/form-rpt-mtc','KOP\VoyagerRptMTController@formRPTMTCAction')->name('rpt.mtc.form.master');
    Route::post('rpt-mtcs/updated-rpt-mtc','KOP\VoyagerRptMTController@EventChangeRptMTC')->name('rpt.mtc.form.EventChangeRptMTC');
    
    Route::post('account-mtcs/store-account-mtc-store','KOP\VoyagerAccountMtcController@HitungAkumulasiAccountMaintenance')->name('accounts.mtc.store.master');
    Route::get('account-mtcs/form-account-mtcs','KOP\VoyagerAccountMtcController@formAccountMTCActions')->name('account.mtc.form.master');

    Route::post('listrik-outputs/store-listrik-output-store','KOP\VoyagerListrikOutputPerjamController@HitungAkumulasiListrikOutputPerjam')->name('listrik-outputs.mtc.store.master');
    Route::get('listrik-outputs/form-listrik-output-mtcs','KOP\VoyagerListrikOutputPerjamController@formListrikOutputPerjam')->name('listrik-outputs.form.master');

    Route::post('laporan-biaya-administrasi-umums/store-laporan-biaya-administrasi-umum','KOP\VoyagerLaporanBiayaAdministrasiUmumController@HitungAkumulasiLPBiayaAdministrasiUmum')->name('lp.biaya.adminitrasi.umum.store');
    Route::get('laporan-biaya-administrasi-umums/form-laporan-biaya-administrasi-umum','KOP\VoyagerLaporanBiayaAdministrasiUmumController@formLaporanBiayaAdministrasiUmumAction')->name('lp.biaya.administrasi.umum.form.master');

    Route::get('total-kalkulasi-rpts/totals-view','KOP\VoyagerTotalKalkulasiController@view_totalkalkulasi')->name('tr.total.kalkulasi');
    Route::get('calc-rpts/form-transaction-machine-calc','KOP\VoyagerTotalKalkulasiController@form_tr_kakulasi')->name('tr.mch.store.tr.sc.edp');
    Route::get('recalculate-machine/received-cost/{id}','KOP\VoyagerRecalController@SendRecalculate')->name('var.recalculate.edp');
    Route::get('calc-rpts/form-test/','KOP\VoyagerTotalKalkulasiController@ListrikInstanceOfPenyusutan')->name('tr.test');
    Route::get('calc-rpts/rpts/','KOP\VoyagerListrikController@rpts')->name('rpts');
    // Route::get('/history-log-recalculate','KOP\VoyagerHIstoryLogCalculateController@index')->name('h.index');
    Route::post('calc-rpts/open-transaction-calc-edp','KOP\VoyagerTotalKalkulasiController@OpenTransactionPenyusutan')->name('tr.open.penyusutan');
    Route::get('total-kalkulasi-rpts/penyusutan','KOP\VoyagerTotalKalkulasiController@detailTransactionPenyusutan')->name('tr.total.kalkulasi.all.ready.view.p');
    Route::get('total-kalkulasi-rpts/tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@detailTransactionTanpaPenyusutan')->name('tr.total.kalkulasi.all.ready.view.tp');

    Route::get('total-kalkulasi-rpts/totals-view-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@view_totalkalkulasi_tnp_penyusutan')->name('tr.tnp.total.kalkulasi');
    Route::post('calc-rpts/open-transaction-calc-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@OpenTransactionTanpaPenyusutan')->name('tr.open.tanpa.penyusutan');
    Route::get('dashboard','KOP\VoyagerController@index')->name('voyager.dashboard.index');
    Route::get('button-load-ButtonexportCalcTanpaPenyusutan','KOP\VoyagerTotalKalkulasiController@ButtonexportCalcTanpaPenyusutan')->name('voyager.ButtonexportCalcTanpaPenyusutan');
    Route::get('button-load-relcalculate','KOP\VoyagerTotalKalkulasiController@recalculate')->name('voyager.recalculate');
    Route::get('button-load-ButtonCalcSmuaBiayaExports','KOP\VoyagerTotalKalkulasiController@ButtonCalcSmuaBiayaExports')->name('voyager.ButtonCalcSmuaBiayaExports');
    Route::get('button-load-ButtonexportCalcTanpaMTC','KOP\VoyagerTotalKalkulasiController@ButtonexportCalcTanpaMTC')->name('voyager.ButtonexportCalcTanpaMTC');
    Route::get('button-load-ButtonexportCalcTanpaMTCnTanpaPenyusutan','KOP\VoyagerTotalKalkulasiController@ButtonexportCalcTanpaMTCnTanpaPenyusutan')->name('voyager.exportCalcTanpaMTCnTanpaPenyusutan');
    Route::get('/clear', function() {

        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('config:cache');
        Artisan::call('view:clear');
        Artisan::call('route:clear');
    
        return "Cleared!";
    
    });
});

Route::get('/helper-user', function () {
    return RumusListrikTest::HitungLWBP(3,160.50,380);
});


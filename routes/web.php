<?php

use App\AllRecalculate;
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
    Route::post('listrik/send-temporary-recalculate-machine','KOP\VoyagerListrikController@SendTemporaryRecalculate')->name('voyager.listrik.recalculate.temporary.recall.all');
    Route::post('listrik/recalculate-machine/all-recalculate','KOP\VoyagerListrikController@all_recalculate')->name('voyager.listrik.recalculate.all_recalculate');
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
    Route::post('mesin-detail','KOP\VoyagerMachineController@detailcodemesin')->name('detail.data.mesin');
    Route::post('mesin-location-detail-ms','KOP\VoyagerMachineController@detaillocationID')->name('detail.data.detaillocationID');
    Route::post('mesin-detail-on','KOP\VoyagerMachineController@detailcodemesinOn')->name('detail.data.mesins');
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
    Route::post('laporan-biaya-administrasi-changedbau/store-laporan-biaya-administrasi-umum','KOP\VoyagerLaporanBiayaAdministrasiUmumController@changedbau')->name('lp.biaya.adminitrasi.umum.changedbau');
    Route::post('laporan-biaya-penjualan-changedbagianpenjualan/store-laporan-biaya-changedbagianpenjualan','KOP\VoyagerLaporanBagianPenjualanController@changedbagianpenjualan')->name('lp.biaya.adminitrasi.umum.changedbagianpenjualan');
    Route::post('laporan-biaya-administrasi-umums/store-laporan-biaya-administrasi-umum','KOP\VoyagerLaporanBiayaAdministrasiUmumController@HitungAkumulasiLPBiayaAdministrasiUmum')->name('lp.biaya.adminitrasi.umum.store');
    Route::get('laporan-biaya-administrasi-umums/form-laporan-biaya-administrasi-umum','KOP\VoyagerLaporanBiayaAdministrasiUmumController@formLaporanBiayaAdministrasiUmumAction')->name('lp.biaya.administrasi.umum.form.master');
    Route::get('total-kalkulasi-rpts/totals-view','KOP\VoyagerTotalKalkulasiController@view_totalkalkulasi')->name('tr.total.kalkulasi');
    Route::get('calc-rpts/form-transaction-machine-calc','KOP\VoyagerTotalKalkulasiController@form_tr_kakulasi')->name('tr.mch.store.tr.sc.edp');
    Route::get('recalculate-machine/received-cost/{id}','KOP\VoyagerRecalController@SendRecalculate')->name('var.recalculate.edp');
    Route::get('calc-rpts/form-test/','KOP\VoyagerTotalKalkulasiController@ListrikInstanceOfPenyusutan')->name('tr.test');
    Route::post('calc-kop/closing-transaction/','KOP\VoyagerTotalKalkulasiController@closingtransactionkop')->name('kop.closing');
    Route::post('calc-kop/closing-transaction-listrik/','KOP\VoyagerTotalKalkulasiController@closingtransactionkoplistrik')->name('kop.closing.listrik');
    Route::post('calc-kop/closing-transaction-closingtransactionkopgajilainnya','KOP\VoyagerTotalKalkulasiController@closingtransactionkopgajilainnya')->name('kop.closing.closingtransactionkopgajilainnya');
    Route::post('calc-kop/closing-transaction-closingtransactionkopBAU','KOP\VoyagerTotalKalkulasiController@closingtransactionkopBAU')->name('kop.closing.closingtransactionkopBAU');
    Route::post('calc-kop/closing-transaction-closingtransactionkopLABOR','KOP\VoyagerTotalKalkulasiController@closingtransactionkopLABOR')->name('kop.closing.closingtransactionkopLABOR');
    Route::post('calc-kop/closing-transaction-closingtransactionkopMTC','KOP\VoyagerTotalKalkulasiController@closingtransactionkopMTC')->name('kop.closing.closingtransactionkopMTC');
    Route::post('calc-kop/closing-transaction-closingtransactionkopPNYT','KOP\VoyagerTotalKalkulasiController@closingtransactionkopPNYT')->name('kop.closing.closingtransactionkopPNYT');
    Route::post('calc-kop/closing-transaction-closingtransactionkopPRC','KOP\VoyagerTotalKalkulasiController@closingtransactionkopPRC')->name('kop.closing.closingtransactionkopPRC');
    Route::get('calc-rpts/rpts/','KOP\VoyagerListrikController@rpts')->name('rpts');
    Route::post('calc-rpts/updateListriks','KOP\VoyagerListrikController@updateListriks')->name('updateListriks');
    Route::post('calc-rpts/open-transaction-calc-edp','KOP\VoyagerTotalKalkulasiController@OpenTransactionPenyusutan')->name('tr.open.penyusutan');
    Route::get('total-kalkulasi-rpts/penyusutan','KOP\VoyagerTotalKalkulasiController@detailTransactionPenyusutan')->name('tr.total.kalkulasi.all.ready.view.p');
    Route::get('total-kalkulasi-rpts/rata-rata-recalculate','KOP\VoyagerTotalKalkulasiController@detailRangeTotalRataRataTransactionRecalculate')->name('tr.total.rt.rt.kalkulasi.all.ready.view.p');
    Route::get('total-kalkulasi-rpts/tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@detailTransactionTanpaPenyusutan')->name('tr.total.kalkulasi.all.ready.view.tp');
    Route::get('total-kalkulasi-rpts/totals-view-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@view_totalkalkulasi_tnp_penyusutan')->name('tr.tnp.total.kalkulasi');
    Route::post('calc-rpts/open-transaction-calc-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@OpenTransactionTanpaPenyusutan')->name('tr.open.tanpa.penyusutan');
    Route::get('dashboard','KOP\VoyagerController@index')->name('voyager.dashboard.index');
    Route::get('button-load-ButtonexportCalcTanpaPenyusutan','KOP\VoyagerTotalKalkulasiController@ButtonexportCalcTanpaPenyusutan')->name('voyager.ButtonexportCalcTanpaPenyusutan');
    Route::post('button-load-relcalculate','KOP\VoyagerTotalKalkulasiController@recalculate')->name('voyager.recalculate');
    Route::post('kop-kalkulasi-tanpa-penyusutan-tanpa-mtc','KOP\VoyagerTotalKalkulasiController@ConnectionKOPkalkulasi')->name('kop.kalkulasi.tnp.pnyt.mtc');
    Route::post('kop-kalkulasi-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@ConnectionKOPkalkulasiTanpaPenyusutan')->name('kop.kalkulasi.ConnectionKOPkalkulasiTanpaPenyusutan');
    Route::post('kop-kalkulasi-tanpa-mtc','KOP\VoyagerTotalKalkulasiController@ConnectionKOPkalkulasiTanpaMTC')->name('kop.kalkulasi.ConnectionKOPkalkulasiTanpaMTC');
    Route::post('kop-kalkulasi-semua-biaya','KOP\VoyagerTotalKalkulasiController@ConnectionKOPkalkulasiSemuaBiaya')->name('kop.kalkulasi.ConnectionKOPkalkulasiSemuaBiaya');
    Route::get('button-load-ButtonCalcSmuaBiayaExports','KOP\VoyagerTotalKalkulasiController@ButtonCalcSmuaBiayaExports')->name('voyager.ButtonCalcSmuaBiayaExports');
    Route::get('button-load-ButtonexportCalcTanpaMTC','KOP\VoyagerTotalKalkulasiController@ButtonexportCalcTanpaMTC')->name('voyager.ButtonexportCalcTanpaMTC');
    Route::post('button-load-recalculateTanpaPenyusutan','KOP\VoyagerTotalKalkulasiController@recalculateTanpaPenyusutan')->name('voyager.recalculateTanpaPenyusutan');
    Route::post('reset-total-recalculateTanpaPenyusutanNtanpaMTC','KOP\VoyagerTotalKalkulasiController@recalculateTanpaPenyusutanNtanpaMTC')->name('voyager.recalculateTanpaPenyusutanNtanpaMTC');
    Route::get('button-load-ButtonexportCalcTanpaMTCnTanpaPenyusutan','KOP\VoyagerTotalKalkulasiController@ButtonexportCalcTanpaMTCnTanpaPenyusutan')->name('voyager.exportCalcTanpaMTCnTanpaPenyusutan');
    Route::get('mesins/form-machine','KOP\VoyagerMachineController@formMachineAction')->name('mesin.form.master');
    Route::get('mesins/form-formSpecialLabor','KOP\VoyagerSpecialLaborController@formSpecialLabor')->name('mesin.form.formSpecialLabor');
    Route::post('mesins/mesin-getGroupMachine','KOP\VoyagerSpecialLaborController@getGroupMachine')->name('mesin.getGroupMachine');
    Route::post('mesins/mesin-getGroupLabors','KOP\VoyagerSpecialLaborController@getGroupLabors')->name('mesin.getGroupLabors');
    Route::post('mesins/mesin-machinelabor','KOP\VoyagerSpecialLaborController@machinelabor')->name('mesin.machinelabor');
    Route::post('lbrs/VoyagerLaborController','KOP\VoyagerLaborController@reakumulasilabor')->name('labors.reakumulasilabor');
    Route::post('store-form-machine','KOP\VoyagerMachineController@storePlaceEv')->name('mesin.storePlaceEv.master');
    Route::post('updateStatusMachine','KOP\VoyagerMachineController@updateStatusMachine')->name('mesin.stats.change');
    Route::post('updateMasterMachine-form-machine','KOP\VoyagerMachineController@updateMasterMachine')->name('mesin.updateMasterMachine.master');
    Route::post('reset-total-tanpa-penyusutan','KOP\VoyagerTotalKalkulasiController@reclltnpapenyusutan')->name('mesin.recll.tnp.penyusutan');
    Route::post('reset-total-tanpa-rclluncheckpnyt','KOP\VoyagerTotalKalkulasiController@rclluncheckpnyt')->name('mesin.rclluncheckpnyt.tnp.penyusutan');
    Route::post('reset-total-tanpa-mtcs','KOP\VoyagerTotalKalkulasiController@rcllunchecktnpmtcs')->name('mesin.rclluncheckpnyt.tnp.mtcs');
    Route::post('reset-total-tanpa-MtcRecalculateOnly','KOP\VoyagerTotalKalkulasiController@MtcRecalculateOnly')->name('mesin.rclluncheckpnyt.tnp.MtcRecalculateOnly');
    Route::post('reset-total-tanpa-PenyusutanRecalculateOnly','KOP\VoyagerTotalKalkulasiController@PenyusutanRecalculateOnly')->name('mesin.rclluncheckpnyt.tnp.PenyusutanRecalculateOnly');
    /**
     * @send KOP kalkulasi mesin
     */
    Route::post('button-load-SendButtonexportCalcTanpaPenyusutan','KOP\VoyagerTotalKalkulasiController@SendButtonexportCalcTanpaPenyusutan')->name('voyager.SendButtonexportCalcTanpaPenyusutan');
    Route::post('button-load-SendButtonCalcSmuaBiayaExports','KOP\VoyagerTotalKalkulasiController@SendButtonCalcSmuaBiayaExports')->name('voyager.SendButtonCalcSmuaBiayaExports');
    Route::post('button-load-SendButtonexportCalcTanpaMTC','KOP\VoyagerTotalKalkulasiController@SendButtonexportCalcTanpaMTC')->name('voyager.SendButtonexportCalcTanpaMTC');
    Route::post('button-load-SendButtonexportCalcTanpaMTCnTanpaPenyusutan','KOP\VoyagerTotalKalkulasiController@SendButtonexportCalcTanpaMTCnTanpaPenyusutan')->name('voyager.SendButtonexportCalcTanpaMTCnTanpaPenyusutan');

    Route::get('/debug-sentry', function () {
        throw new Exception('My first Sentry error!');
    });
    
    Route::get('/clear', function() {

        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('config:cache');
        Artisan::call('view:clear');
        Artisan::call('route:clear');
    
        return "Cleared!";
    
    });

    Route::get('/ds', function() {
        $new = AllRecalculate::with(['listrik','KategoriBagian','Mesin.GroupMesinTo','Company','GroupMesin'])->groupBy('group_mesin')->selectRaw('*, sum(total_semua_biaya) as total_semua_biayas')->get();

        // dd($new);
    });
});

Route::get('/helper-user', function () {
    return RumusListrikTest::HitungLWBP(3,160.50,380);
});


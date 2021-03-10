<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Model;

interface ServiceModuleCalculates
{
    const NULLABLE_PENYUSUTAN = 0;
    
    /**
     * Calc functionality @GajiLain, @BagianPenjualan, @BiayaAdministrasiUmum, @totalCalculate
     * @Biaya kalkulasi mesin perbulan
     * @method [arguments] [calculate_listrik] @insteadOf module -> RptCalcMachine.
     */
    public function UndefinedClass();

    public function can_t_find_group_mesin();

    public function ListrikInstanceOfPenyusutan();

    public function IPenyusutanInstanceOfPenyusutan();

    public function IPenyusutanInstanceOfMaintenance();

    public function IPenyusutanInstanceOfGajiLainLaborMTC();

    public function IPenyusutanInstanceOfGajiLainLaborUMUM();

    public function IPenyusutanInstanceOfGajiLainLaborQC();

    public function IPenyusutanInstanceOfGajiLainLaborPREPRESS();

    public function BpnjInstanceOfBagianPenjualan();

    public function BpnjInstanceOfBagianPenjualanPyts();

    public function BagianAdministrasiUmumToTls();
    
    public function BagianAdministrasiUmumPytsToTls();

    public function LoadProsentaseListrik();

    public function LoadLabor();

    public function TotalTanpaPenyusutanPlusMTC($penyusutan, $mtc, $totalsemuabiayapenyusutan);

    public function ITnpenyusutanTotalPerjam($shift, $totalsemuabiayatanpapenyusutatan);

    public function TotalPenyusutanTanpaMTCPerjamnya($shift, $totalsemuabiayatanpapenyusutatanpamtc);

    public function ITnpenyusutanTotalPerjamPlusMTC($shift, $totalsemuabiayatanpapenyusutatanpamtc);

    public function TotTnpaPenyusutanATT($penyusutan, $totalsemuabiayatanpapenyusuta);

    public function TotalTanpaPenyusutanPerjamnya($shift, $totalpenyusutan);

    public function TotalTanpaPenyusutanTanpaMTC($totalsmuabiayatanpapenyusutan, $maintenance);
    
    public function IPenyusutanInstanceOfTotalTanpaPenyusutan($listrik, $penyusutan, $labor, $maintenance, $biaya_prod_lain, $gaji_lainnya, $bagian_penjualan, $bau);

    public function IPenyusutanInstanceOfGajiLainLaborMTCtPyt();

    public function IPenyusutanInstanceOfGajiLainLaborUmPyt();

    public function LoadProsentaseListriktPyts();
    
    public function IPenyusutanInstanceOfGajiLainLaborQCPyts();

    public function LoadBiayaProduksiLain();

    public function IPenyusutanInstanceOfGajiLainLaborRptMtc();

    public function IPenyusutanInstanceOfMtcRpt();

    public function CalcBiayaGajiLainInstaceOfKalkulasi($gaji_lainlabor_MTC, $gaji_lainlabor_UMUM, $gaji_lainlabor_QC, $gaji_lainlabor_PREPRESS, $listrikN5);

    public function CalcBiayaBagPenjualanInstaceOfKalkulasi($ttl_penjualan, $prosentaselistrik);

    public function CalcBiayaAdministrasiUmumInstaceOfKalkulasi($ttl_biayaadministrasiumum, $prosentaselistrik);

    public function CalcToTlsInstaceOfKalkulasi($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau);

    public function CalcPersenListrikPerbulan($ttllistrikperbulan, $ttlcostmesinperbulan);

    public function CalcTotalPerjamCalcMesin($shiftInsteadOfListrikEsheet, $totalcalcmesinperbulan);

    public function CalcPersenPenyusutanPerbulan($penyusutanperbulan, $ttlcostmesinperbulan);

    public function CalcPersenLaborPerbulan($laborperbulan, $ttlcostmesinperbulan);

    public function CalcPersenMaintenancePerbulan($MTCperbulan, $ttlcostmesinperbulan);

    public function CalcPersenGajiLainnyaPerbulan($gajiLainnyaperbulan, $ttlcostmesinperbulan);

    public function CalcPersenBagianPenjualanPerbulan($bagianpenjualanperbulan, $ttlcostmesinperbulan);
    
    public function CalcPersenBiayaAdministrasiUmum($biayaadministrasiumumperbulan, $ttlcostmesinperbulan);

    public function CalcPersenTotSallpersenMaster($listrik, $penyusutan, $labor, $mtc, $gjlainnya, $pnjualan, $bau);


}
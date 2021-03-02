<?php

namespace App\Http\Controllers\KOP\Service;

use Illuminate\Http\Request;

interface RptMTcInterface
{
    
    public function RataRataPerbaikanPerbulan(
                        $perbaikan_tahun1,
                        $perbaikan_tahun2,
                        $perbaikan_tahun3
                    );

    public function RataRataSparePartPerbulan(
                        $sparepart_tahun1,
                        $sparepart_tahun2,
                        $sparepart_tahun3
                    );

    public function TotalSemuaBiayaProduksi(
                        $total_biaya_accountMTC,
                        $output_perjam,
                        $category_bagian
                    );

    public function TotalBiayaPenyusutanMaintenance(
                        $ratarataperbaikanperbulan,
                        $rataratasparepartperbulan
                    );
              
}
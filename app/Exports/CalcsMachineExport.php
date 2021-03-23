<?php

namespace App\Exports;

use App\AllRecalculate;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\TotalKalkulasiTanpaPenyusutan;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithDrawings;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithProperties;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;

class CalcsMachineExport implements FromCollection, WithProperties, WithMapping, WithHeadings, WithColumnFormatting
{

    use Exportable;
    
    public function collection()
    {
        return AllRecalculate::with(['Listrik.Listrikperjam',
        'KategoriBagian','Mesin','mesin.MesinListrikPerjamTo','GroupMesin',
        'Company'])->get();
    }

    /**
    * @var calcs $calcs
    */
    public function map($calcs): array
    {
        return [
            $calcs->id,
            $calcs->Company->company_name,
            $calcs->Mesin->code_mesin,
            (String) $calcs->id_penyusutan,
            $calcs->id_listrik,
            $calcs->id_labor,
            $calcs->id_mtc,
            $calcs->id_bprodlain_insteadof_mtc,
            $calcs->id_gajilain,
            $calcs->id_bgoenjualan,
            $calcs->id_bau,
            $calcs->total_tanpa_penyusutan,
            $calcs->total_tanpa_penyusutan_perjam
        ];
    }

    public function columnFormats(): array
    {
        return [
            'D' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'E' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'F' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'G' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'H' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'I' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'J' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'K' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'L' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'M' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE,
            'N' => NumberFormat::FORMAT_CURRENCY_IDR_SIMPLE
        ];
    }

    public function headings(): array
    {
        return [
            'ID',
            'COMPANY',
            'MESIN',
            'PENYUSUTAN',
            'LISTRIK',
            'LABOR',
            'MAINTENANCE',
            'BIAYA PRODUKSI LAIN',
            'GAJI LAINNYA',
            'BAGIAN PENJUALAN',
            'BIAYA ADMINISTRASI UMUM',
            'TOTAL SEMUA BIAYA TANPA PENYUSUTAN',
            'TOTAL SEMUA BIAYA TANPA PENYUSUTAN (/JAM)',
        ];
    }

    public function properties(): array
    {
        return [
            'creator'        => 'Developer @daniel',
            'lastModifiedBy' => 'SR',
            'title'          => 'Kalkulasi Mesin',
            'description'    => '',
            'subject'        => '',
            'keywords'       => 'kalkulasi',
            'category'       => 'mesin',
            'manager'        => 'Ratna',
            'company'        => 'PT. Krisanthium Offset Printing',
        ];
    }

    // public function drawings()
    // {
    //     $drawing = new Drawing();
    //     $drawing->setName('Calculate machine');
    //     $drawing->setDescription('This is my logo');
    //     $drawing->setPath(public_path('images/vendor/jquery-ui/themes/base/ui-icons_555555_256x240.png'));
    //     $drawing->setHeight(96);
    //     $drawing->setCoordinates('Q1');

    //     return $drawing;
    // }
}

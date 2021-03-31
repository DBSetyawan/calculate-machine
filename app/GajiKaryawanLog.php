<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class GajiKaryawanLog extends Model
{
    protected $table= "gaji_karyawan_logs";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'company_id');
    }
}

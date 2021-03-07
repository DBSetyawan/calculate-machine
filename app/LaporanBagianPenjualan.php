<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LaporanBagianPenjualan extends Model
{
    protected $table ="laporan_bagian_penjualan";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

    
}

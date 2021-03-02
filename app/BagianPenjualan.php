<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BagianPenjualan extends Model
{
    protected $table ="bagian_penjualan";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

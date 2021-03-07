<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BPenjualanTotal extends Model
{
    protected $table= "b_penjualan_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

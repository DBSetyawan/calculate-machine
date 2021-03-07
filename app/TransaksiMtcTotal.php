<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class TransaksiMtcTotal extends Model
{

    protected $table= "transaksi_mtc_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class RPTMtcTotal extends Model
{
    protected $table= "rpt_mtc_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class RptMtc extends Model
{
    protected $table= "rpt_mtc";
    protected $guarded = [''];
    
    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'id');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'id');
    }
}

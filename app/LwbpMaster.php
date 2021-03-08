<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LwbpMaster extends Model
{
    protected $table= "lwbp_master";

    protected $guarded = [''];
    
    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'id');
    }
}

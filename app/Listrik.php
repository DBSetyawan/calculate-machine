<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Listrik extends Model
{
    protected $table= "listrik";
    protected $guarded = [''];
    // protected $casts = [
    //     'nilai_cost_bulan' => 'float',
    // ];
    
    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

    public function Listrikperjam()
    {
        return $this->belongsTo('App\ListrikOutput', 'listrikperjam');
    }

    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'id');
    }

    public function __callMesin()
    {
        return $this->belongsTo('App\Mesin', 'id','code_mesin');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'id');
    }

    public function LWBMaster()
    {
        return $this->belongsTo('App\LwbpMaster', 'id');
    }
    
}

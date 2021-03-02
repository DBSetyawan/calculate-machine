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

    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'id');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'id');
    }
    
}

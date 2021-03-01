<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class GajiLain extends Model
{
    protected $table= "gaji_lain";

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

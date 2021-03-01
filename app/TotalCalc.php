<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class TotalCalc extends Model
{
    protected $table= "total_kalkulasi";
    protected $guarded = [''];
    
    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

    public function mesin()
    {
        return $this->belongsTo('App\Mesin', 'id');
    }

    public function kategori_bagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'id');
    }

}

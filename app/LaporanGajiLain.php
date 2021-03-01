<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LaporanGajiLain extends Model
{
    protected $table= "laporan_gaji_lain";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

    public function Bagiankategori()
    {
        return $this->belongsTo('App\KategoriBagian', 'id');
    }
    
}

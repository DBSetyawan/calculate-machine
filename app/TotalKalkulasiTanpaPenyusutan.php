<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class TotalKalkulasiTanpaPenyusutan extends Model
{
    protected $table= "total_kalkulasi_tanpa_penyusutan";
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

    public function group_mesin()
    {
        return $this->belongsTo('App\Lb8KategoriMesin', 'id');
    }
}

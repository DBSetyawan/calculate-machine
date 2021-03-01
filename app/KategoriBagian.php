<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class KategoriBagian extends Model
{
    protected $table ="kategori_bagian";   

    public function HasToPenyusutan()
    {
        return $this->hasMany('App\Penyusutan', 'category_bagian');
    }

    public function HasToListrik()
    {
        return $this->hasMany('App\Listrik', 'category_bagian');
    }

    public function HasToMtc()
    {
        return $this->hasMany('App\Mtc', 'category_bagian');
    }

    public function HasToTotalCalc()
    {
        return $this->hasMany('App\TotalCalc', 'category_bagian');
    }

    public function HasToLaporanGajiLain()
    {
        return $this->hasMany('App\LaporanGajiLain', 'category_bagian');
    }

    public function HasToGajiLain()
    {
        return $this->hasMany('App\GajiLain', 'category_bagian');
    }

}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Company extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    
    protected $table ="company";

    public function PenyusutanHasToPenyusutan()
    {
        return $this->hasMany('App\Penyusutan', 'company_parent_id');
    }

    public function HasToListrik()
    {
        return $this->hasMany('App\Listrik', 'company_parent_id');
    }

    public function HasToMtc()
    {
        return $this->hasMany('App\Mtc', 'company_parent_id');
    }
    
    public function HasToGajiLain()
    {
        return $this->hasMany('App\GajiLain', 'company_parent_id');
    }

    public function HasToBiayaAdministrasiUmum()
    {
        return $this->hasMany('App\BiayaAdministrasiUmum', 'company_parent_id');
    }

    public function HasToTotalCalc()
    {
        return $this->hasMany('App\TotalCalc', 'company_parent_id');
    }
    
    public function HasToBagianPenjualan()
    {
        return $this->hasMany('App\BagianPenjualan', 'company_parent_id');
    }

    public function HasToLaporanGajiLain()
    {
        return $this->hasMany('App\LaporanGajiLain', 'company_parent_id');
    }

    public function HasToKategoriPermesin()
    {
        return $this->hasMany('App\Lb8KategoriMesin', 'company_parent_id');
    }
    
}

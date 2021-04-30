<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Mesin extends Model
{
    protected $table= "mesin";
    // protected $guarded = [''];
    // protected $primary = ['id'];

    protected $fillable = [
        'code_mesin',
        'deskripsi',
        'fungsi_mesin',
        'voltase',
        'ampere',
        'group_mesin_id',
        'location_mch_id',
        'listrik_perjam_id',
        'category_bagian_id',
        'company_id',
        'asumsi_id',
        'on_off',
        'display_on_off_machine',
        'kalkulasi_machine_id',
        'capacity_mch',
        'faktor_kali_lwbp',
        'faktor_kali_wbp',
    ];

    /**
     * @default sistem RFC.
     */
    public function HasToMesin()
    {
        return $this->hasMany('App\Penyusutan', 'code_mesin');
    }

    public function HasToListrik()
    {
        return $this->hasMany('App\Listrik', 'code_mesin');
    }

    public function HasToMtc()
    {
        return $this->hasMany('App\Mtc', 'code_mesin');
    }

    public function HasLocationMchId()
    {
        return $this->belongsTo('App\LocationMachine', 'location_mch_id');
    }

    public function HasToTotalCalc()
    {
        return $this->hasMany('App\TotalCalc', 'code_mesin');
    }

    /**
     * @added attr, optimize relationship
     */
    public function CompanyTo()
    {
        return $this->belongsTo('App\Company', 'company_id');
    }

    public function KbagianTo()
    {
        return $this->belongsTo('App\KategoriBagian', 'category_bagian_id');
    }

    public function GroupMesinTo()
    {
        return $this->belongsTo('App\Lb8KategoriMesin', 'group_mesin_id');
    }

    public function MesinListrikPerjamTo()
    {
        return $this->belongsTo('App\ListrikOutput', 'listrik_perjam_id');
    }

    public function AsumsiTo()
    {
        return $this->belongsTo('App\LwbpMaster', 'asumsi_id');
    }

}

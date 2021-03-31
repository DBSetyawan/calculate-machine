<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class MesinTotal extends Model
{
    protected $table= "mesin_total";
    protected $guarded = [''];

    public function CompanyTo()
    {
        return $this->belongsTo('App\Company', 'company_id');
    }

    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'code_mesin');
    }

    public function GroupMesinTo()
    {
        return $this->belongsTo('App\Lb8KategoriMesin', 'group_mesin');
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

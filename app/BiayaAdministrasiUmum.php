<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BiayaAdministrasiUmum extends Model
{
    protected $table = "biaya_administrasi_umum";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

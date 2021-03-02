<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Mesin extends Model
{
    protected $table= "mesin";
    
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

    public function HasToTotalCalc()
    {
        return $this->hasMany('App\TotalCalc', 'code_mesin');
    }

}

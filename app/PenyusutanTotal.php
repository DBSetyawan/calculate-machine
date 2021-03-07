<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class PenyusutanTotal extends Model
{

    protected $table= "penyusutan_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

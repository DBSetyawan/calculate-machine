<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LaborTotal extends Model
{
    protected $table= "labor_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

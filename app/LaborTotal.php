<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LaborTotal extends Model
{
    protected $table= "laborttals";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

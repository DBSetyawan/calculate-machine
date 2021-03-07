<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class BauTotal extends Model
{

    protected $table= "bau_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

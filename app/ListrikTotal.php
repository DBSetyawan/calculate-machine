<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListrikTotal extends Model
{
    
    protected $table= "Listrik_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

}
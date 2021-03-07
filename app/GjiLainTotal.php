<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class GjiLainTotal extends Model
{
    protected $table= "gji_lain_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
}

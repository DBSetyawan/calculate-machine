<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListrikOutput extends Model
{
    protected $table= "listrik_output";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

}

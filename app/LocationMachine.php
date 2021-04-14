<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class LocationMachine extends Model
{
    protected $table= "location_machine";

    public function Machines()
    {
        return $this->belongsTo('App\Mesin', 'location_mch_id');
    }
    
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class GroupMesinLog extends Model
{
    protected $table= "group_mesin_logs";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'company_id');
    }
}

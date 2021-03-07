<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class AccountMtcTotal extends Model
{

    protected $table= "account_mtc_total";
    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }
    
}

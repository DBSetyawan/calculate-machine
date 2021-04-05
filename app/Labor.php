<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Labor extends Model
{
    protected $table ="labor";

    protected $guarded = [''];
    
    public function Company()
    {
        return $this->belongsTo('App\Company', 'company_parent_id');
    }

    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'code_mesin');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'category_bagian');
    }
    
}

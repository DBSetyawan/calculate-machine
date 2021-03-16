<?php

namespace App;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;


class Penyusutan extends Model
{
    protected $table= "penyusutan";

    protected $guarded = [''];

    // public function save(array $options = [])
    // {
    //     /**
    //      * @created, custom save with all request override
    //      */
    //     // dd($options);
    //     // $this->user_id = \Auth::user()->id;
    //     // parent::save();
    // }

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

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class AllRecalculate extends Model
{

    protected $table = "all_recalculate";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'company');
    } 

    public function GroupMesin()
    {
        return $this->belongsTo('App\Lb8KategoriMesin', 'group_mesin');
    } 

    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'code_mesin');
    }

    public function Listrik()
    {
        return $this->belongsTo('App\Listrik', 'id_listrik');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'category_bagian');
    }
    
}

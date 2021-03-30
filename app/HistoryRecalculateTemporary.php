<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class HistoryRecalculateTemporary extends Model
{
    
    protected $table= "history_recalculate_temporary";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'company');
    }

    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'code_mesin');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'category_id');
    }
    
    public function GroupMesin()
    {
        return $this->belongsTo('App\Lb8KategoriMesin', 'group_mesin');
    } 
}

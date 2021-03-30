<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class HistoryLogRecalculate extends Model
{
    protected $table= "hlogs_listriks";

    protected $guarded = [''];
    
    public function Company()
    {
        return $this->belongsTo('App\Company', 'company_id');
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

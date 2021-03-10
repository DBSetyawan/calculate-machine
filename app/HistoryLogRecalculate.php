<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class HistoryLogRecalculate extends Model
{
    protected $table= "history_log_recalculate";

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
        return $this->belongsTo('App\KategoriBagian', 'category_bagian');
    }

}

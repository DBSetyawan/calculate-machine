<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class SpecialLabor extends Model
{
    protected $table= "special_labor";
    protected $guarded = [''];

    protected $casts = [
        'nama_group_labor' => 'string',
        'group_machine' => 'array'
    ]; 

    public function Company()
    {
        return $this->belongsTo('App\Company', 'company_parent_id');
    }
    
    public function Mesin()
    {
        return $this->belongsTo('App\Mesin', 'code_mesin');
    }

    public function GroupMachine()
    {
        return $this->belongsTo('App\Mesin', 'group_mch_id');
    }

    public function KategoriBagian()
    {
        return $this->belongsTo('App\KategoriBagian', 'categori_id');
    }

}

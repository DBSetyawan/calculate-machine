<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class Lb8KategoriMesin extends Model
{
    protected $table= "lb8_kategori_mesin";

    protected $guarded = [''];

    public function Company()
    {
        return $this->belongsTo('App\Company', 'id');
    }

    public function Bagiankategori()
    {
        return $this->belongsTo('App\KategoriBagian', 'id');
    }
    
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tb_mesin extends Model
{
    use HasFactory;

    protected $table = "db_kalkulasi_tes.tb_mesin";
    protected $connection = 'KOP_kalkulasi';
}

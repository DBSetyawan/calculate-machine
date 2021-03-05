<?php

namespace Database\Seeders;

use App\Admin;
use Illuminate\Database\Seeder;

class DatabaseSderrCs extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Admin::create([
            'name' => 'Admin accounting',
            'email' => 'admin@multi-auth.acc',
            'password' => bcrypt(43520100),
        ]);
    }
}

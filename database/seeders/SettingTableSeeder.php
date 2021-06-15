<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('setting')->insert([
            'id_setting' => 1,
            'nama_perusahaan' => 'Toko',
            'alamat' => 'Jl. Banjarpoh utara, Ds.Banjarbendo',
            'telepon' => '08123456789',
            'tipe_nota' => 1, //kecil
            'diskon' => 5,
            'path_logo' => '/img/shopping.png',
            'path_kartu_member' => '/img/member.png',
        ]);
    }
}

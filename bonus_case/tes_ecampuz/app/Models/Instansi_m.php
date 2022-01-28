<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class Instansi_m
{
    public static function get_datatables()
	{	
		return DB::select(DB::raw('select * from instansi where active=1 and trash=0'));
	}
	
    public static function simpan_data_instansi($data1)
	{
		DB::table('instansi')->insert($data1);
	}
}
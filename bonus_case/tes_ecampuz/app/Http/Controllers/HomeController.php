<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Instansi_m;
use DataTables;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    function datenow()
	{
		return date('Y-m-d H:i:s');
	}

    public function index_instansi()
    {
        if(request()->ajax()) {
            return datatables()->of(Instansi_m::get_datatables())
            ->addColumn('action', function($field){
                $button = '<button type="button" title="Edit" name="edit" id="'.$field->id.'" onclick="show_edit('.$field->id.','."'".$field->nama."'".','."'".$field->deskripsi."'".')" class="edit btn btn-primary btn-sm">Edit</button>';
                $button .= '&nbsp;&nbsp;';
                $button .= '<button type="button" title="Delete" name="delete" id="'.$field->id.'" class="delete btn btn-danger btn-sm">Delete</button>';
                $button .= '&nbsp;&nbsp;';
                return $button;
            })
            ->rawColumns(['action'])
            ->make(true);
        }

        return view('home');
    }

    public function simpan_instansi(Request $request)
    {
        $data1 = array(
            'nama'              => $request->get('ins'),
            'deskripsi'         => $request->get('des'),
            'created'           => $this->datenow()
        );
        Instansi_m::simpan_data_instansi($data1);
    }
}

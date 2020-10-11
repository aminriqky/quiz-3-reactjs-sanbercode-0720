<?php

namespace App\Exports;

use App\Deal;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

// ini untuk menggunakan view yg costum

class ExcelExport2 implements FromView
{
    public function view(): View
    {
    	$deal = Deal::all();
    	$akhir = Deal::orderBy('id', 'desc')
                                ->first();

        $awal = Deal::orderBy('id', 'asc')
                                ->first();
        $tanggal = $awal->created_at->format('d');

        $total_1 = Deal::where('jenis_transaksi', '=', 'option1')->get();

        $total_2 = Deal::where('jenis_transaksi', '=', 'option2')->get();

        $total_3 = Deal::where('jenis_transaksi', '=', 'option3')->get();

        $total_4 = Deal::where('jenis_transaksi', '=', 'option4')->get();

        $total_5 = Deal::where('jenis_transaksi', '=', 'option5')->get();

        $total_keluar = Deal::where('jenis_transaksi', '=', 'option6')->get();

        return view('vendor.voyager.laporan.excel', compact('tanggal', 'awal' , 'akhir',
            'total_1', 'total_2', 'total_3', 'total_4', 'total_5', 'total_keluar',
        ));
    }
}
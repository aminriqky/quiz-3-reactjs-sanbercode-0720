<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Flame;
use App\Flood;
use App\Ground;

class DataController extends Controller
{
    public function getAll()
    {
        $flame = Flame::all();
        $flood = Flood::all();
        $ground = Ground::all();

        return response()->json([
            $flame,
            $flood,
            $ground
        ]);
    }

    public function getFlame()
    {
        $flame = Flame::orderBy('suhu', 'asc')->get();

        // bisa juga pakai yg ini
        // return $flame->toJson();

        return response()->json($flame);
    }

    public function getFlameAman()
    {
        $flame = Flame::where('suhu', '>', 0)
                ->where('suhu', '<', 80)
                ->orderBy('suhu', 'asc')->get();

        return response()->json($flame);
    }

    public function getFlamePotensi()
    {
        $flame = Flame::where('suhu', '>', 80)
                ->where('suhu', '<', 150)
                ->orderBy('suhu', 'asc')->get();

        return response()->json($flame);
    }

    public function getFlameBahaya()
    {
        $flame = Flame::where('suhu', '>', 150)
                ->orderBy('suhu', 'asc')->get();

        return response()->json($flame);
    }

    public function getFlood()
    {
        $flood = Flood::orderBy('ketinggian', 'asc')->get();

        return response()->json($flood);
    }

    public function getFloodAman()
    {
        $flood = Flood::where('ketinggian', '<', 30)
                ->where('durasi', '<', 60)
                ->orderBy('ketinggian', 'asc')->get();

        return response()->json($flood);
    }

    public function getFloodBahaya()
    {
        $flood = Flood::where('ketinggian', '>', 30)
                ->where('durasi', '>', 60)
                ->orderBy('ketinggian', 'asc')->get();

        return response()->json($flood);
    }

    public function getGround()
    {
        $ground = Ground::orderBy('horizontal', 'asc')->get();

        return response()->json($ground);
    }

    public function getGroundAman()
    {
        $ground = Ground::where('horizontal', '<', 100)
                ->where('vertikal', '<', 100)
                ->orderBy('horizontal', 'asc')->get();

        return response()->json($ground);
    }

    public function getGroundPotensi()
    {
        $ground = Ground::where('horizontal', '>', 100)
                ->where('horizontal', '<', 300)
                ->orwhere('vertikal', '>', 100)
                ->where('vertikal', '<', 300)
                ->orderBy('horizontal', 'asc')->get();

        return response()->json($ground);
    }

    public function getGroundBahaya()
    {
        $ground = Ground::where('horizontal', '>', 300)
                ->orwhere('vertikal', '>', 300)
                ->orderBy('horizontal', 'asc')->get();

        return response()->json($ground);
    }

    public function pencarian(Request $request)
    {
        $filter = strtolower($request->cari);
        $hasil_cari = Ground::where('nama_lokasi', 'like', "%$filter%")->get();

        return response()->json($hasil_cari);
    }
}

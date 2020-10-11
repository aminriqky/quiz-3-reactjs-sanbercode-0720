<?php

namespace App\Widgets;

use App\Flood;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use Arrilot\Widgets\AbstractWidget;

class Floods extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Flood::count();
        $string = 'Jumlah Titik';

        // untuk ubah text cari saja tulisan dimmer dengan ctrl + p
        // atau bisa ubah langsung di sini
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-droplet',
            'title'  => "{$count} {$string}",
            'text'   => 'Ada sebanyak '.$count. ' titik Banjir yang di awasi',
            'button' => [
                'text' => 'Lihat semua Titik',
                'link' => route('voyager.floods.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/04.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        // pilih mau user ber hak akses apa saja yg dapat melihatnya
        $flame = new Flood;
        return Auth::user()->can('browse', $flame);
    }
}

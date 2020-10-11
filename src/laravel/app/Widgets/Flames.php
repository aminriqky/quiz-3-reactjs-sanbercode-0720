<?php

namespace App\Widgets;

use App\Flame;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use Arrilot\Widgets\AbstractWidget;

class Flames extends AbstractWidget
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
        $count = \App\Flame::count();
        $string = 'Jumlah Titik';

        // untuk ubah text cari saja tulisan dimmer dengan ctrl + p
        // atau bisa ubah langsung di sini
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-fire',
            'title'  => "{$count} {$string}",
            'text'   => 'Ada sebanyak '.$count. ' titik kebakaran yang di awasi',
            'button' => [
                'text' => 'Lihat semua Titik',
                'link' => route('voyager.flames.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/06.jpg'),
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
        $flame = new Flame;
        return Auth::user()->can('browse', $flame);
    }
}

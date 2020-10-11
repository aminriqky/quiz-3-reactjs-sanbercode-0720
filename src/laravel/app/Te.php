<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Spatial;

class Te extends Model
{
	protected $fillable = [
        'nama_lokasi', 'deskripsi', 'foto', 'ketinggian', 'durasi',
    ];
}

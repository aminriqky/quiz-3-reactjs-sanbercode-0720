<?php

namespace App\Http\Livewire\Tes;

use Livewire\Component;
use App\Te;

class Create extends Component
{
	public $nama_lokasi, $deskripsi, $foto, $ketinggian, $durasi;

	protected $rules = [
        'nama_lokasi' => 'required',
        'deskripsi' => 'required',
        'foto' => 'required',
        'ketinggian' => 'required',
        'durasi' => 'required',
    ];

    public function submit()
    {
        $this->validate();

        // Execution doesn't reach here if validation fails.

        Te::create([
            'nama_lokasi' => $this->nama_lokasi,
            'deskripsi' => $this->deskripsi,
            'foto' => $this->foto,
            'ketinggian' => $this->ketinggian,
            'durasi' => $this->durasi,
        ]);

        $this->emit('postAdded');
    }

    public function render()
    {
        return view('livewire.tes.create');
    }
}

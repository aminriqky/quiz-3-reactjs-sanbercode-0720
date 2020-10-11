<div>
    {{-- In work, do what you enjoy. --}}

    <form wire:submit.prevent="submit">
    	<span>Masukkan nama Lokasi</span><br>
	    <input type="text" wire:model="nama_lokasi">
	    @error('nama_lokasi') <span class="error">{{ $message }}</span> @enderror
	    <br>

    	<span>Masukkan Deskripsi</span><br>
	    <input type="text" wire:model="deskripsi">
	    @error('deskripsi') <span class="error">{{ $message }}</span> @enderror
	    <br>

    	<span>Masukkan foto</span><br>
	    <input type="text" wire:model="foto">
	    @error('foto') <span class="error">{{ $message }}</span> @enderror
	    <br>

    	<span>Masukkan ketinggian</span><br>
	    <input type="text" wire:model="ketinggian">
	    @error('ketinggian') <span class="error">{{ $message }}</span> @enderror
	    <br>

    	<span>Masukkan durasi</span><br>
	    <input type="text" wire:model="durasi">
	    @error('durasi') <span class="error">{{ $message }}</span> @enderror
	    <br>

	    <button type="submit">Save Contact</button>
	</form>

</div>

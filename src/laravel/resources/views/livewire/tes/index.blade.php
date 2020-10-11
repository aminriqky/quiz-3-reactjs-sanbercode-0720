<div>
    {{-- Success is as dangerous as failure. --}}
    <table class="table">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">Nama Lokasi</th>
	      <th scope="col">Deskripsi</th>
	      <th scope="col">Foto</th>
	      <th scope="col">Ketinggian</th>
	      <th scope="col">Durasi</th>
	    </tr>
	  </thead>
	  <tbody>
	  	@foreach($tes as $te)
		    <tr>
		      <th scope="row">{{ $loop->iteration }}</th>
		      <td>{{ $te->nama_lokasi }}</td>
		      <td>{{ $te->deskripsi }}</td>
		      <td>{{ $te->foto }}</td>
		      <td>{{ $te->ketinggian }}</td>
		      <td>{{ $te->durasi }}</td>
		    </tr>
		@endforeach
	  </tbody>
	</table>

	<div>
	    <input wire:model="message" type="text">

	    <button wire:click="$set('message', 'Hello')">Say Hi</button>

	    <h1>{{ $message }}</h1>
	</div>
</div>

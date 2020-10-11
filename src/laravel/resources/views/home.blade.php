<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="{{ asset('css/app.css') }}" rel="stylesheet" />
	<script src="{{ asset('js/app.js') }}"></script>
	<livewire:styles />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav">
			    <li class="nav-item active">
			        <a class="nav-link" href="#">Profile <span class="sr-only">(current)</span></a>
			    </li>
			    <li class="nav-item">
			        <a type="button" class="btn btn-warning">cari</a>
			    </li>
			    <li class="nav-item">
			        <a class="nav-link" href="{{ route('chatify') }}">Chat</a>
			    </li>
		    </ul>
			<form action="{{ route('voyager.logout') }}" method="POST">
		        {{ csrf_field() }}
		        <button type="submit" class="btn btn-danger btn-block">
		            <i class="">Logout</i>
		        </button>
		    </form>
		</div>
	</nav>

	<livewire:tes.create />

	<livewire:tes.index />
	
	<livewire:scripts />
</body>
</html>
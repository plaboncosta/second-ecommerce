@extends('layouts.frontend.app')
@section('title', 'Search Results')
@push('css')
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<link rel="stylesheet" href="{{ asset('assets/frontend/css/algolia/algolia.css') }}">
@endpush
@section('content')
<br>
<div style="margin-left: 70%;">
	@include('layouts.frontend.partial.search')
</div>
<div class="container">
	<h1>Search Results</h1>
	<h2>{{ $products->total() }} result(s) for {{ request()->input('query') }} </h2>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Details</th>
				<th>Description</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			@foreach($products as $product)
			<tr>
				<td>{{ $product->id }}</td>
				<td>
					<a style="text-decoration: none;" href="{{ route('shop.show', $product->slug) }}">
						{{ $product->name }}
					</a>
				</td>
				<td>{{ $product->details }}</td>
				<td>{!! str_limit($product->description, 45) !!}</td>
				<td>{{ $product->price }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	{{ $products->appends(request()->input())->links() }}
</div>
@endsection
@push('js')
	<script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
	<script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
	<script src="{{ asset('assets/frontend/js/algolia/algolia.js') }}"></script>
@endpush
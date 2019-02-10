@extends('layouts.frontend.app')
@section('title', 'Search Results')
@push('css')
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
    crossorigin="anonymous">
<link rel="stylesheet" href="{{ asset('assets/frontend/css/algolia/algolia.css') }}">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/instantsearch.js@2.10.4/dist/instantsearch.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/instantsearch.js@2.10.4/dist/instantsearch-theme-algolia.min.css">
@endpush
@section('content')
<br>
<div style="margin-left: 70%;">
    @include('layouts.frontend.partial.search')
</div>
<div class="container">
    <h1>Search Results</h1>

    <div id="search-box">
        <!-- SearchBox widget will appear here -->
    </div>

    <div id="stats-container"></div>

    <div id="hits">
        <!-- Hits widget will appear here -->
    </div>

    <div id="pagination">
        <!-- Pagination widget will appear here -->
    </div>
</div>
@endsection
@push('js')
<script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
<script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
<script src="{{ asset('assets/frontend/js/algolia/algolia.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/instantsearch.js@2.10.4"></script>
<script src="{{ asset('assets/frontend/js/algolia/algolia-instant.js') }}"></script>
@endpush

@extends('layouts.frontend.app')
@section('title', 'Thank you')
@push('css')
<style>
	.thank-you-section{
		margin-top: 70px;
		margin-bottom: 130px;
	}
</style>
@endpush
@section('content')
<div class="container">
	<div class="thank-you-section">
		<h1>Thank you for <br> Your Order!</h1>
		<p>A confirmation email was sent</p>
		<div class="spacer"></div>
		<div>
			<a href="{{ url('/') }}" class="button">Home Page</a>
		</div>
	</div>
</div>
@endsection
@push('js')
@endpush
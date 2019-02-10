@extends('layouts.frontend.app')
@section('title')
Product | {{ $product->name }}
@endsection
@push('css')
  <link rel="stylesheet" href="{{ asset('assets/frontend/css/algolia/algolia.css') }}">
@endpush
@section('content')
<div class="breadcrumbs">
  <div class="breadcrumbs-container container">
    <div>
      <a href="/">Home</a>
      <i class="fa fa-chevron-right breadcrumb-separator"></i>
      <span><a href="{{ route('shop.index') }}">Shop</a></span>
      <i class="fa fa-chevron-right breadcrumb-separator"></i>
      <span>{{ $product->slug }}</span>
    </div>
    <div>
      <!-- <div class="aa-input-container" id="aa-input-container">
        <input type="search" id="aa-search-input" class="aa-input-search" placeholder="Search with algolia..." name="search"
        autocomplete="off" />
      </div> -->
      @include('layouts.frontend.partial.search')
    </div>
  </div>
  </div> <!-- end breadcrumbs -->
  <div class="product-section container">
    <div>
      <div class="product-section-image">
        <img src="{{ asset('assets/frontend/img/products/'. $product->slug . '.jpg') }}" alt="product" class="active" id="currentImage">
      </div>
      <div class="product-section-images">
        <div class="product-section-thumbnail selected">
          <img src="{{ productImage($product->image) }}" alt="{{ $product->name }}">
        </div>
        @if($product->images)
          @foreach(json_decode($product->images, true) as $image)
            <div class="product-section-thumbnail">
              <img src="{{ productImage($image) }}" alt="{{ $product->name }}">
            </div>
          @endforeach
        @endif
      </div>
    </div>
    <div class="product-section-information">
      <h1 class="product-section-title">{{ $product->name }}</h1>
      <div class="product-section-subtitle">{{ $product->details }}</div>
      <div>
        <div class="product-section-price">৳{{ $product->price }}</div>
        <p>
          {!! $product->description !!}
        </p>
        <p>&nbsp;</p>
        <form action="{{ route('cart.store') }}" method="POST">
          @csrf
          <input type="hidden" name="id" value="{{ $product->id }}">
          <input type="hidden" name="name" value="{{ $product->name }}">
          <input type="hidden" name="price" value="{{ $product->price }}">
          <button type="submit" class="button button-plain">Add to Cart</button>
        </form>
      </div>
      </div> <!-- end product-section -->
    </div>
    @include('layouts.frontend.partial.mightalsolike')
    @endsection
    @push('js')
    <script>
      // (function(){
      //   const currentImage = document.querySelector('#currentImage');
      //   const images = document.querySelectorAll('.product-section-thumbnail');
      //   images.forEach((element) => element.addEventListener('click', thumbnailClick));
      //   function thumbnailClick(e){
      //     currentImage.src = this.querySelector('img').src;
      //     images.forEach((element) => element.classList.remove('selected'));
      //     this.classList.add('selected');
      //   }
      // }())
      (function(){
      const currentImage = document.querySelector('#currentImage');
      const images = document.querySelectorAll('.product-section-thumbnail');
      images.forEach((element) => element.addEventListener('click', thumbnailClick));
      function thumbnailClick(e) {
      currentImage.src = this.querySelector('img').src;
      currentImage.classList.remove('active');
      currentImage.addEventListener('transitionend', () => {
      currentImage.src = this.querySelector('img').src;
      currentImage.classList.add('active');
      })
      images.forEach((element) => element.classList.remove('selected'));
      this.classList.add('selected');
      }
      })();
    </script>
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('assets/frontend/js/algolia/algolia.js') }}"></script>

    @endpush
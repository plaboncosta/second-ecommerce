@extends('layouts.frontend.app')
@section('title', 'Shopping Cart')
@push('css')
  <link rel="stylesheet" href="{{ asset('assets/frontend/css/algolia/algolia.css') }}">
@endpush
@section('content')
<div class="breadcrumbs">
  <div class="breadcrumbs-container container">
    <div>
      <a href="/">Home</a>
      <i class="fa fa-chevron-right breadcrumb-separator"></i>
      <span>Shopping Cart</span>
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
  <div class="cart-section container">
    <div>
      @if( Cart::count() > 0 )
      <h2>{{ Cart::count() }} item(s) in Shopping Cart</h2>
      <div class="cart-table">
        @foreach(Cart::content() as $item)
        <div class="cart-table-row">
          <div class="cart-table-row-left">
            <a href="{{ route('shop.show', $item->model->slug) }}"><img src="{{ asset('storage/' . $item->model->image) }}" alt="item" class="cart-table-img"></a>
            <div class="cart-item-details">
              <div class="cart-table-item"><a href="{{ route('shop.show', $item->model->slug) }}">{{ $item->name }}</a></div>
              <div class="cart-table-description">{{ $item->model->details }}</div>
            </div>
          </div>
          <div class="cart-table-row-right">
            <div class="cart-table-actions">
              <form action="{{ route('cart.destroy', $item->rowId) }}" method="post">
                @csrf
                @method('delete')
                <button type="submit" class="cart-options">Remove</button>
              </form>
              <form action="{{ route('cart.saveForLater', $item->rowId) }}" method="POST">
                @csrf
                <button type="submit" class="cart-options">Save for Later</button>
              </form>
            </div>
            <div>
              <select class="quantity" data-id="{{ $item->rowId }}" data-productQuantity="10">
                @for( $i = 1; $i < 5 + 1; $i ++ )
                  <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                @endfor
              </select>
            </div>
            <div>৳{{ $item->subtotal }}</div>
          </div>
          </div> <!-- end cart-table-row -->
          @endforeach
          </div> <!-- end cart-table -->
          @else
          <div class="alert alert-danger">
            <span>Your Cart has no item!</span>
          </div>
          @endif
          
            <div class="cart-totals">
              <div class="cart-totals-left">
                Shipping is free because we’re awesome like that. Also because that’s additional stuff I don’t feel like figuring out :).
              </div>
              <div class="cart-totals-right">
                <div>
                  Subtotal <br>
                  Tax (13%)<br>
                  <span class="cart-totals-total">Total</span>
                </div>
                <div class="cart-totals-subtotal">
                  ${{ Cart::subtotal() }} <br>
                  ${{ Cart::tax() }} <br>
                  <span class="cart-totals-total">${{ Cart::total() }}</span>
                </div>
              </div>
              </div> <!-- end cart-totals -->
              <div class="cart-buttons">
                <a href="{{ route('shop.index') }}" class="button">Continue Shopping</a>
                <a href="{{ route('checkout.index') }}" class="button-primary">Proceed to Checkout</a>
              </div>
              
              
              @if(Cart::instance('saveForLater')->count() > 0)
              <h2>{{ Cart::instance('saveForLater')->count() }} item(s) in save for later</h2>
              @foreach(Cart::instance('saveForLater')->content() as $item)
              <div class="saved-for-later cart-table">
                <div class="cart-table-row">
                  <div class="cart-table-row-left">
                    <a href="{{ route('shop.show', $item->model->slug) }}"><img src="{{ asset('storage/' . $item->model->image) }}" alt="item" class="cart-table-img"></a>
                    <div class="cart-item-details">
                      <div class="cart-table-item"><a href="{{ route('shop.show', $item->model->slug) }}">{{ $item->name }}</a></div>
                      <div class="cart-table-description">{{ $item->model->details }}</div>
                    </div>
                  </div>
                  <div class="cart-table-row-right">
                    <div class="cart-table-actions">
                      <form action="{{ route('saveForLater.destroy', $item->rowId) }}" method="POST">
                        @csrf
                        @method('delete')
                        <button type="submit" class="cart-options">Remove</button>
                      </form>
                      <form action="{{ route('saveForLater.switchToCart', $item->rowId) }}" method="POST">
                        @csrf
                        <button type="submit" class="cart-options">Move to Cart</button>
                      </form>
                    </div>
                    <div>৳{{ $item->price }}</div>
                  </div>
                  </div> <!-- end cart-table-row -->
                  </div> <!-- end saved-for-later -->
                  @endforeach
                  @else
                  <div class="alert alert-danger">
                    <span>You have no item in save for later!</span>
                  </div>
                  @endif
                  
                </div>
                </div> <!-- end cart-section -->
                @include('layouts.frontend.partial.mightalsolike')
@endsection
@push('js')
<script src="js/app.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
  (function(){
    const classname = document.querySelectorAll('.quantity');

    Array.from(classname).forEach(function(element) {
      element.addEventListener('change', function() {
        const id = element.getAttribute('data-id')
        axios.patch(`/cart/${id}`, {
            quantity: this.value,
          })
          .then(function (response) {
            // console.log(response);
            window.location.href = '{{ route('cart.index') }}';
          })
          .catch(function (error) {
            console.log(error);
            window.location.href = '{{ route('cart.index') }}';
          });
      });
    });
  })();
</script>
  <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
  <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
  <script src="{{ asset('assets/frontend/js/algolia/algolia.js') }}"></script>
@endpush
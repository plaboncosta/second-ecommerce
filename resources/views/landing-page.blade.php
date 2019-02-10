<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel Ecommerce Example</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat%7CRoboto:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Styles -->
    <link rel="stylesheet" href="{{ asset('assets/frontend') }}/css/app.css">
    <link rel="stylesheet" href="{{ asset('assets/frontend') }}/css/responsive.css">
    <style>
    header.with-background {
    background: url("{{ asset('assets/frontend') }}/img/triangles.svg");
    background-size: cover;
    color: #e9e9e9;
    }
    </style>
  </head>
  <body>
    <div id="app">
      <header class="with-background">
        <div class="top-nav container">
          <div class="top-nav-left">
            <div class="logo"><a href="{{ url('/') }}">Ecommerce</a></div>
            {{ menu('main', 'layouts.frontend.partial.main') }}
          </div>
          <div class="top-nav-right">
            <ul>
              @guest
              <li><a href="{{ route('register') }}">Sign Up</a></li>
              <li><a href="{{ route('login') }}">Login</a></li>
              @else
              <li>
                <a href="{{ route('logout') }}" onclick="
                  event.preventDefault();
                  document.getElementById('logout-form').submit();
                ">
                  Logout                
                </a>
                <form action="{{ route('logout') }}" method="post" id="logout-form" style="display: none;">
                  @csrf
                </form>
              </li>
              @endguest
              <li><a href="{{ route('cart.index') }}">Cart
                  @if(Cart::instance('default')->count() > 0)
                    <span class="cart-count">
                      <span>
                        {{ Cart::instance('default')->count() }}
                      </span>
                    </span>
                  @endif
              </a></li>
            </ul>
          </div>
          </div> <!-- end top-nav -->
          <div class="hero container">
            <div class="hero-copy">
              <h1>Laravel Ecommerce Demo</h1>
              <p>Includes multiple products, categories, a shopping cart and a checkout system with Stripe integration.</p>
              <div class="hero-buttons">
                <a href="#" class="button button-white">Screencasts</a>
                <a href="#" class="button button-white">GitHub</a>
              </div>
              </div> <!-- end hero-copy -->
              <div class="hero-image">
                <img src="{{ asset('assets/frontend') }}/img/macbook-pro-laravel.png" alt="hero image">
                </div> <!-- end hero-image -->
                </div> <!-- end hero -->
              </header>
              <div class="featured-section">
                <div class="container">
                  <h1 class="text-center">Laravel Ecommerce</h1>
                  <p class="section-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore vitae nisi, consequuntur illum dolores cumque pariatur quis provident deleniti nesciunt officia est reprehenderit sunt aliquid possimus temporibus enim eum hic lorem.</p>
                  <div class="text-center button-container">
                    <a href="#" class="button">Featured</a>
                    <a href="#" class="button">On Sale</a>
                  </div>
                  
                  <div class="products text-center">
                    @foreach($products as $product)
                    <div class="product">
                      <a href="{{ route('shop.show', $product->slug) }}">
                        <img src="{{ asset('storage/' . $product->image) }}" alt="product">
                      </a>
                      <a href="{{ route('shop.show', $product->slug) }}"><div class="product-name">{{ $product->name }}</div></a>
                      <div class="product-price">৳{{  $product->price }}</div>
                    </div>
                    @endforeach
                    
                    </div> <!-- end products -->
                    <div class="text-center button-container">
                      <a href="{{ route('shop.index') }}" class="button">View more products</a>
                    </div>
                    </div> <!-- end container -->
                    </div> <!-- end featured-section -->
                    @include('layouts.frontend.partial.footer')
                    </div> <!-- end #app -->
                    <script src="{{ asset('assets/frontend') }}/js/app.js"></script>
                  </body>
                </html>
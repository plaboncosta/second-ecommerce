<header>
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
    </header>
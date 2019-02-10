<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- CSRF Token -->
        <meta name="csrf-token" content="EnfbQQEFQpKtwiWOgcL326LUHNZJvt5LuIpG7Lnt">
        <title>@yield('title')</title>
        <link href="/img/favicon.ico" rel="SHORTCUT ICON" />
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat%7CRoboto:300,400,700" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Styles -->
        {{-- <link rel="stylesheet" href="{{ asset('assets/frontend') }}/css/algolia.css"> --}}
        <link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
        @stack('css')
        <link rel="stylesheet" href="{{ asset('assets/frontend') }}/css/app.css">
        <link rel="stylesheet" href="{{ asset('assets/frontend') }}/css/responsive.css">
    </head>
    <body class="">
        @include('layouts.frontend.partial.header')        
        @yield('content');
        @include('layouts.frontend.partial.footer')
        <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
        {{-- <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script> --}}
        {{-- <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script> --}}
        {{-- <script src="{{ asset('assets/frontend') }}/js/algolia.js"></script> --}}
        <script src="http://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
        <script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
        <script>
            @if($errors->any())
                @foreach($errors->all() as $error)
                    toastr.error('{{ $error }}', 'Access denied!', {
                        closeButton: true,
                        progressBar: true,
                    });
                @endforeach
            @endif
        </script>
        {!! Toastr::message() !!}
        @stack('js')
        
    </body>

</html>
<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('/', 'LandingPageController');
Route::resource('/shop', 'ShopController');
Route::resource('/cart', 'CartController');

// Save For Letter Route
Route::post('/cart/switchToSaveForLetter/{product}', 'SaveForLater@saveForLater')->name('cart.saveForLater');
Route::delete('/saveForLater/{product}', 'SaveForLater@destroy')->name('saveForLater.destroy');
Route::post('/saveForLater/switchToCart/{product}', 'SaveForLater@switchToCart')->name('saveForLater.switchToCart');

// Checkout Route
Route::get('/checkout', 'CheckoutController@index')->name('checkout.index')->middleware('auth');
Route::post('/checkout', 'CheckoutController@store')->name('checkout.store');
Route::get('/checkoutguest', 'CheckoutController@index')->name('checkoutguest.index');
Route::resource('/confirmation', 'ConfirmationController');

// Coupon Route
Route::post('/coupon/store', 'CouponController@store')->name('coupon.store');
Route::delete('/coupon/delete', 'CouponController@destroy')->name('coupon.destroy');


// For Destroy
Route::get('/empty', function(){
	Cart::instance('saveForLater')->destroy();
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/search', 'SearchController@index')->name('search');
Route::get('/search-algolia', 'SearchController@searchAlgolia')->name('searchAlgolia');

// Route::get('/home', 'HomeController@index')->name('home');

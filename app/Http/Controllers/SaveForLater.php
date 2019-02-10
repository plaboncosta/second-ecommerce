<?php

namespace App\Http\Controllers;

use Brian2694\Toastr\Facades\Toastr;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class SaveForLater extends Controller
{
    public function saveForLater($id)
    {
    	$item = Cart::get($id);
    	Cart::remove($id);

    	$duplicates = Cart::instance('saveForLater')->search( function($cartItem, $rowId) use ($id) {
    		return $rowId === $id;
    	});

    	if($duplicates->isNotEmpty())
    	{
    		Toastr::error('This product has already saved for later!', 'Access denied');
            return redirect()->route('cart.index');
    	}

    	Cart::instance('saveForLater')->add($item->id, $item->name, 1, $item->price)
    		->associate('App\Product');

    	Toastr::success('Product has been saved for later!', 'Success');
        return redirect()->route('cart.index');
    }


    public function destroy($id)
    {
    	Cart::instance('saveForLater')->remove($id);

    	Toastr::success('Product removed from saved for later!', 'Success');
        return redirect()->route('cart.index');
    }

    public function switchToCart($id)
    {
    	$item = Cart::instance('saveForLater')->get($id);
    	Cart::instance('saveForLater')->remove($id);

    	$duplicates = Cart::instance('default')->search(function($cartItem, $rowId) use ($id){
    		return $rowId === $id;
    	});

    	if($duplicates->isNotEmpty())
    	{
    		Toastr::error('This product has already removed in your cart!', 'Access denied');
            return redirect()->route('cart.index');
    	}

    	Cart::instance('default')->add($item->id, $item->name, 1, $item->price)
    		->associate('App\Product');

    	Toastr::success('Product has been moved to cart!', 'Success');
        return redirect()->route('cart.index');
    }
}

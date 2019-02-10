<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {
    	
    	$this->validate($request, [
    		'query' => 'required|min:3',
    	]);

    	$query = $request->input('query');
    	
    	$products = Product::where('name', 'like', "%$query%")
    						->orWhere('details', 'like', "%$query%")
    						->orWhere('description', 'like', "%$query%")
    						->orWhere('price', 'like', "%$query%")
    						->paginate(10);
    	return view('search', compact('products'));
	}
	


	public function searchAlgolia()
	{
		return view('search-algolia');
	}
}

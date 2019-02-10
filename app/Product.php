<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class Product extends Model
{
	use Searchable;


    public function categories()
    {
    	return $this->belongsToMany('App\Category');
    }

    /**
     * Get the indexable data array for the model.
     *
     * @return array
     */
    public function toSearchableArray()
    {
        $array = $this->toArray();

        $extrafields = [
            'categories' => $this->categories->pluck('name')->toArray(),
        ];

        return array_merge($array, $extrafields);
    }
}

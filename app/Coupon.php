<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    /*public static function findByCode($code)
    {
    	return self::where('code', $code)->first();
    }*/

    /*public function discount($subtotal)
    {
    	if($this->type == 'fixed')
    	{
    		return $this->value;
    	}
    	elseif($this->type == 'percent')
    	{
    		return ($this->percent_off / 100) * $subtotal;
    	}
    	else
    	{
    		return 0;
    	}
    }*/
}

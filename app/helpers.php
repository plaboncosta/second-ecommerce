<?php


// For Coupon Subtotal
function discount($coupon, $subtotal)
{
	if($coupon->type == 'fixed')
	{
		return $coupon->value;
	}
	elseif($coupon->type == 'percent')
	{
		$percent_off = ($coupon->percent_off / 100);
		return round($percent_off * $subtotal);
	}
	else
	{
		return 0;
	}
}



// Product image not found
function productImage($path)
{
	return file_exists('storage/' . $path) ? asset('storage/' . $path) : asset('assets/frontend/img/not-found.jpg');
}


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Order Placed Mail</title>
</head>
<body>
	<h2 style="text-align: center;">You have successfully placed your mail!</h2>
	<br>
	<h3>Your Order Details</h3>
	<p>Order Id: {{ $order->id }}</p>
	<p>Order Person: {{ $order->billing_name }}</p>
	<p>Order Total: {{ $order->billing_total }}</p>

	<br><br>
	<h3>Product Details</h3>
	<ul style="list-style: none; margin: 0; padding: 0;">
		@foreach($order->products as $product)
			<li>Product id: {{ $product->id }}</li>
			<li>Product name: {{ $product->name }}</li>
			<li>Product details: {{ $product->details }}</li>
			<li>Product description: {{ $product->description }}</li>
			<li>Product price: {{ $product->price }}</li>
			<br>
		@endforeach
	</ul>
</body>
</html>
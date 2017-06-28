
function calculateTotalPrice(price,oldQuantity, quantity,price_label)
{
	var qChange = quantity-oldQuantity;
	       var cartTotal = document.getElementById("cart_total").value;
	       var orderTotal = document.getElementById("order_total").value;


	       var totalPrice = parseFloat(price) * parseFloat(quantity);

	       price_label.innerHTML = "$"+totalPrice;

	       cTotal  = parseFloat(cartTotal) + parseFloat(price) * qChange;
			cTotal = cTotal.toFixed(2);
	       oTotal = parseFloat(orderTotal) + parseFloat(price) * qChange;
			oTotal = oTotal.toFixed(2);

	       document.getElementById("cart_total_label").innerHTML = "$"+cTotal;

	       document.getElementById("order_total_label").innerHTML = "$"+oTotal;

	       //document.getElementById("price").value = totalPrice;


	       document.getElementById("cart_total").value = cTotal;
	       document.getElementById("order_total").value = oTotal;
			document.getElementById("old_quant").value = quantity;


	    
}
	

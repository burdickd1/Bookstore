
function calculateTotalPrice(price, quantity,price_label, id)
{
	console.log("hello");
   var cartTotal = document.getElementById("cart_total").value;
   var oldQuantity = document.getElementById(id).value;
   var qChange = quantity-oldQuantity;


   var totalPrice = parseFloat(price) * parseFloat(quantity);

   price_label.innerHTML = "$"+totalPrice.toFixed(2);

   cTotal  = parseFloat(cartTotal) + parseFloat(price) * qChange;
   cTotal = cTotal.toFixed(2);
   tax = (cTotal*.1).toFixed(2);
   oTotal = 1.1 * cTotal;
   oTotal = oTotal.toFixed(2);

   document.getElementById("cart_total_label").innerHTML = "$"+cTotal;
   document.getElementById("tax_label").innerHTML = "$"+tax;
   document.getElementById("order_total_label").innerHTML = "$"+oTotal;

   //document.getElementById("price").value = totalPrice;


   document.getElementById("cart_total").value = cTotal;
   document.getElementById("order_total").value = oTotal;
   document.getElementById("tax").value = tax;
   document.getElementById(id).value = quantity;


	    
}
	

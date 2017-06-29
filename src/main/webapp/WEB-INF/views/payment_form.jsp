<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qa.models.Book"%>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Checkout | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
    
    <form action="/orderHistory" method="post">
    
    
    <%
    
    double orderTotal = (Double) request.getAttribute("order_total");
    double cartTotal = (Double) request.getAttribute("cart_total");
    double tax = (Double) request.getAttribute("tax");
    String taxS= String.format("%.2f",tax);
    String cartS = String.format("%.2f", cartTotal);
    String orderS = String.format("%.2f", orderTotal);
    
   
    %>
    
   


    <!-- You can now combine a row and column if you just need a 12 column row -->

    <div class="row">
 	  <div class="small-3 columns">
		<p></p>
	  </div>
      <div class="small-6 columns form">
      
       <h2 class="text-center"> Payment Details  </h2>
        
        <div class="row small-up-shiping">
        
          <div class="columns">
            <input type="number" name="card" id="card" size="30" placeholder="Card Number *" required/>
            <input type="date" name="expireDate" id="expireDate" size="30" placeholder="Expiration Date *" required/>
            <input type="number" name="cvv" id="cvv" size="30" placeholder="CVV *" required/>
            <br>
            <h2 class="text-center">Order Summary </h2>
            <label for="middle-label" class="middle">Cart Total: &nbsp&nbsp&nbsp&nbsp $<%=cartS %></label>
            <label for="middle-label" class="middle">Tax: &nbsp&nbsp&nbsp&nbsp $<%=taxS %></label>
            <label for="middle-label" class="middle">Order Total: &nbsp&nbsp&nbsp&nbsp $<%=orderS%> </label>
            <input type="hidden" name="order_total" value="<%=orderTotal %>"/>   
        	<input type="submit" class="button large expanded" value="Checkout"/>
          </div>          
        </div>
        
        <div class="row small-up-4">
          
          <div class="column">
           
          </div>
        
        </div>
        
        <hr>
      
      </div>
      <div class="small-3 columns"></div>  

		  

      </div>  
   
 </div>
 	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    
    <script src="js/validations.js"></script>
    <script>
      $(document).foundation();
    </script> 
    
   </form>
  </body>
</html>


    
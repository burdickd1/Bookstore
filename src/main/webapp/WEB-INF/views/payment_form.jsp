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
    
    <form action="/checkoutProcess" method="post">
    
    
    <%
    
    double orderTotal = (Double) request.getAttribute("order_total");
    
   
    %>
    
   


    <!-- You can now combine a row and column if you just need a 12 column row -->

    <div class="row">
 
      <div class="medium-12 columns form">
      
       <h2 class="text-center"> Payment Details  </h2>
        
        <div class="row small-up-shiping">
        
          <div class="columns">
            <input type="text" name="firstName" id="firstName" size="30" placeholder="Firstname *"/> 
            <input type="text" name="lastName" id="lastName" size="30" placeholder="Lastname *"/>
            <input type="text" name="addressLine1" id="addressLine1" size="30" placeholder="Address 1 *"/>
            <input type="text" name="addressLine2" id="addressLine2" size="30" placeholder="Address 2"/>
            <input type="text" name="city" id="city" size="30" placeholder="City *"/>
            <input type="text" name="postcode" id="postcode" size="30" placeholder="Postcode *"/>
            <input type="text" name="state" id="state" size="30" placeholder="State *"/>
            <input type="text" name="country" id="country" size="30" placeholder="Country *"/>
            <input type="text" name="phone" id="phone" size="30" placeholder="Phone Number *"/>
            <input type="text" name="email" id="email" size="30" placeholder="Email *"/>
          </div>
          
          
          <div class="column">
            
          </div>
          
        </div>
        
        <div class="row small-up-4">
          
          <div class="column">
           
          </div>
        
        </div>
        
        <hr>
      
      </div>
      <div class="medium-12 large-12 columns form">
        <h2 class="text-center">Order Summary </h2>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             
            <label for="middle-label" class="middle" id="cart_total_label">$<%=orderTotal %></label>
           </div>
           
       </div>



          <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">VAT </label>
          </div>
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Applicable Tax </label>
           </div>
           
        </div>
    
        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Order Total  </label>
          </div>
          <div class="small-3 columns">
          
            <label for="middle-label" class="middle" id="order_total_label">$<%=orderTotal%></label>
           </div>
      
        </div>

		  
		<input type="hidden" name="order_total" value="<%=orderTotal %>"/>   
        <input type="submit" class="button large expanded" value="Checkout"/>
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


    
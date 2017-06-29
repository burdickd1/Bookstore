<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qa.models.Book"%>
<%@page import="com.qa.models.Customer"%>
<%@page import="com.qa.models.Address"%>
<html class="no-js" lang="en">
<%
    request.setAttribute("pagetitle", "Checkout | Online Shopping");
    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
    rd.include(request, response);
    double orderTotal = (Double) request.getAttribute("order_total");
    String tax = request.getParameter("tax");
%>
  <body>
    <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
    
    <form action="/checkoutProcess" method="post">

        <%
            if(session.getAttribute("logged_in_customer")!=null) {
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            Address a = (Address) session.getAttribute("Address");
        %>
    
        <div class="row">
            <!-- Billing Address Section -->
            <div class="small-3 form"> 
                <h2 class="text-center"> Billing Address </h2>
                <input type="text" name="firstName" id="firstName" value="<%= c.getFirstName() %>" />
                <input type="text" placeholder="Last Name" name="LastName" id="LastName" value="<%= c.getLastName() %>" />
                <input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1" value=" <%= a.getAddressLine1() %> " /> 
                <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2" value=" <%= a.getAddressLine2() %> " /> 
                <input type="text" placeholder="City *" name="city" id="city" value=" <%= a.getCity() %> " /> 
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" value=" <%= a.getPostcode() %> "/> 
                <input type="text" placeholder="State/County *" name="state" id="state" value=" <%= a.getState() %> " /> 
                <input type="text" placeholder="Country *" name="country" id="country" value=" <%= a.getCountry() %> " />
                
                <input type="checkbox" name="sameAddressBox" id="sameAddressBox" onChange="showDiv()" checked/> Same as shipping address.
            </div>
            <!-- END Billing Address Section -->
            
            <!-- Shipping Address Section -->
            <div class="small-3 form" style="display:none;" id="shippingAddress"> 
                <h2 class="text-center"> Shipping Address </h2>
                <input type="text" name="firstName" id="firstName" value="<%= c.getFirstName() %>" />
                <input type="text" name="LastName" id="LastName" value="<%= c.getLastName() %>" />
                <input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1" class="tex" /> 
                <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2" class="tex"/> 
                <input type="text" placeholder="City *" name="city" id="city" class="tex" /> 
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" class="tex" /> 
                <input type="text" placeholder="State/County *" name="state" id="state" class="tex" /> 
                <input type="text" placeholder="Country *" name="country" id="country" class="tex" />
            </div>
            <!-- END Shipping Address Section-->
        
        </div>
        
        <div class="row">
            <div class="small-3 form">
                <label for="middle-label" class="middle">Tax: &nbsp&nbsp&nbsp&nbsp $<%=tax%></label>
                <label for="middle-label" class="middle">Order Total: &nbsp&nbsp&nbsp&nbsp $<%=orderTotal%></label>
                <input type="hidden" name="order_total"value="<%=orderTotal%>"/>
		        <input type="hidden" name="tax"value="<%=tax%>"/>
		        <input type="submit" class="button expanded" value="Checkout" />
            </div>
        </div>
        
        <% } else { %>
        
            <div class="row">
            <!-- Billing Address Section -->
            <div class="small-3 form"> 
                <h2 class="text-center"> Billing Address </h2>
                <input type="text" placeholder="First Name" name="firstName" id="firstName"/>
                <input type="text" placeholder="Last Name" name="LastName" id="LastName" />
                <input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1"/> 
                <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2" /> 
                <input type="text" placeholder="City *" name="city" id="city" /> 
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" /> 
                <input type="text" placeholder="State/County *" name="state" id="state" /> 
                <input type="text" placeholder="Country *" name="country" id="country" />
                
                <input type="checkbox" name="sameAddressBox" id="sameAddressBox" onChange="showDiv()" checked/> Same as shipping address.
            </div>
            <!-- END Billing Address Section -->
            
            <!-- Shipping Address Section -->
            <div class="small-3 form" style="display:none;" id="shippingAddress"> 
                <h2 class="text-center"> Shipping Address </h2>
                <input type="text" placeholder="First Name" name="firstName" id="firstName"/>
                <input type="text" placeholder="Last Name" name="LastName" id="lastName"" />
                <input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1"/> 
                <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2" /> 
                <input type="text" placeholder="City *" name="city" id="city" /> 
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" /> 
                <input type="text" placeholder="State/County *" name="state" id="state" /> 
                <input type="text" placeholder="Country *" name="country" id="country" />
            </div>
            <!-- END Shipping Address Section-->
        
        </div>
        
        <div class="row">
            <div class="small-3 form">
                <label for="middle-label" class="middle">Tax: &nbsp&nbsp&nbsp&nbsp $<%=tax%></label>
                <label for="middle-label" class="middle">Order Total: &nbsp&nbsp&nbsp&nbsp $<%=orderTotal%></label>
                <input type="hidden" name="order_total"value="<%=orderTotal%>"/>
		        <input type="hidden" name="tax"value="<%=tax%>"/>
		        <input type="submit" class="button expanded" value="Checkout" />
            </div>
        </div>
        
        <% } %>
    </form>
        
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    <script src="js/validations.js"></script>
    <script> $(document).foundation(); </script>
    <script>
        function showDiv() {
        	   if(!document.getElementById('sameAddressBox').checked){
        		   document.getElementById('shippingAddress').style.display = "block";
        	   } else {
        		   document.getElementById('shippingAddress').style.display = "none";
        	   }   
        }
    </script>
</body>

</html>
<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qa.models.Book"%>
<%@page import="com.qa.models.Customer"%>
<html class="no-js" lang="en">
<%
    request.setAttribute("pagetitle", "Contact | Online Shopping");
    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
    rd.include(request, response);
%>
  <body>
    <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
    
    <form action="/checkoutProcess" method="post">

        <%
            double orderTotal = (Double) request.getAttribute("order_total");
            //if(session.getAttribute("logged_in_customer")!=null) {
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            String tax = request.getParameter("tax");
        %>
    
        <div class="row">
            <!-- Billing Address Section -->
            <div class="small-3 form"> 
                <h2 class="text-center"> Billing Address </h2>
                <input type="text" placeholder="First Name" name="firstName" id="firstName" required>
                <input type="text" placeholder="Last Name" name="LastName" id="LastName" required>
                <input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1" required/> 
                <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2"/> 
                <input type="text" placeholder="City *" name="city" id="city" required/> 
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" required/> 
                <input type="text" placeholder="State/County *" name="state" id="state" required/> 
                <input type="text" placeholder="Country *" name="country" id="county" required/> 
                <input type="text" placeholder="Phone number *" name="phoneNumber" id="phoneNumber" required/>
                
                <input type="checkbox" class="ba"/> Different from shipping address
            </div>
            <!-- END Billing Address Section -->
            
            <!-- Shipping Address Section -->
            <div class="small-3 form"> 
                <h2 class="text-center"> Shipping Address </h2>
                <input type="text" placeholder="First Name" name="firstName" id="firstName" required>
                <input type="text" placeholder="Last Name" name="LastName" id="LastName" required>
                <input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1" class="tex" required/> 
                <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2" class="tex"/> 
                <input type="text" placeholder="City *" name="city" id="city" class="tex" required/> 
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" class="tex" required/> 
                <input type="text" placeholder="State/County *" name="state" id="state" class="tex" required/> 
                <input type="text" placeholder="Country *" name="country" id="county" class="tex" required/> 
                <input type="text" placeholder="Phone number *" name="phoneNumber" id="phoneNumber" class="tex" required/>
            </div>
            <!-- END Shipping Address Section-->
            
        </div>
        <div class="row">
            <div class="small-3 columns">
                <label for="middle-label" class="middle">Tax </label>
            </div>
            <div class="small-3 columns">
                <label for="middle-label" class="middle" id="tax_label">$<%=tax%> </label>
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
        
        <input type="submit" class="button large expanded" value="Checkout" />
        
    </form>
        
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    <script src="js/validations.js"></script>
    <script> $(document).foundation(); </script>
</body>

</html>


    
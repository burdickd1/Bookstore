<!doctype html>
<%@ page import="com.qa.models.*" %>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "History | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
  
  <%!
  
  Customer c;
  
  %>
  
  
  <%
 		c = (Customer) session.getAttribute("logged_in_customer");
      Address billingAddress = (Address) request.getAttribute("billing_address");
      Address shippingAddress = (Address) request.getAttribute("shipping_address");
      if (billingAddress == null) {
          billingAddress = new Address();
          billingAddress.validate();
      }
      if (shippingAddress == null) {
          shippingAddress = new Address();
          shippingAddress.validate();
      }
  %>
   
    
       
       <div class="row">
        <div class="small-3 form">
           <h2 class="text-center"> Billing Address </h2>

              <form action="/updateAddress" method="post" modelAttribute="address">
               <input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1" value="<%=billingAddress.getAddressLine1()%>" autocomplete="off" required/>
               <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2" value="<%=billingAddress.getAddressLine2()%>" autocomplete="off" />
                <input type="text" placeholder="City *" name="city" id="city" value="<%=billingAddress.getCity()%>" autocomplete="off" required/>
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" value="<%=billingAddress.getPostcode()%>" autocomplete="off" required/>
                <input type="text" placeholder="State/County *" name="state" id="state" value="<%=billingAddress.getState()%>" autocomplete="off" required/>
                <input type="text" placeholder="Country *" name="country" id="county" value="<%=billingAddress.getCountry()%>" autocomplete="off" required/>
                <input type="text" placeholder="Phone number *" name="phoneNumber" id="phoneNumber" value="<%=billingAddress.getPhoneNumber()%>" autocomplete="off" required/>
                <input type="hidden" name="addressType" id="addressType" value="billing" />

                <input type="submit" class="button create account expanded" value="Update Billing Address">
               </form>
            </div>
            
          
               <div class="small-3 form">
                <h2 class="text-center"> Shipping Address </h2>
                
                <input type="checkbox" class="ba" checked="checked" /> Different from billing address
                
              <form action="/updateAddress" method="post" modelAttribute="address">
               	<input type="text" placeholder="Address 1 *" name="addressLine1" id="addressLine1" value="<%=shippingAddress.getAddressLine1()%>" autocomplete="off" required/>
                <input type="text" placeholder="Address 2" name="addressLine2" id="addressLine2" value="<%=shippingAddress.getAddressLine2()%>" autocomplete="off" />
                <input type="text" placeholder="City *" name="city" id="city" value="<%=shippingAddress.getCity()%>" autocomplete="off" required/>
                <input type="text" placeholder="Postcode *" name="postcode" id="postcode" value="<%=shippingAddress.getPostcode()%>" autocomplete="off" required/>
                <input type="text" placeholder="State/County *" name="state" id="state" value="<%=shippingAddress.getState()%>" autocomplete="off" required/>
                <input type="text" placeholder="Country *" name="country" id="county" value="<%=shippingAddress.getCountry()%>" autocomplete="off" required/>
                <input type="text" placeholder="Phone number *" name="phoneNumber" id="phoneNumber" value="<%=shippingAddress.getPhoneNumber()%>" autocomplete="off" required/>
                <input type="hidden" name="addressType" id="addressType" value="shipping"/> 

                <input type="submit" class="button create account expanded" value="Update Shipping Address">
               </form>
            </div>
             
     
      </div>
      
  
       
       
  <!--   </div> -->
    
    
         
 
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier2.js"></script>
    <script>
      $(document).foundation();
    </script>
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
  </body>
</html>


    
<!doctype html>
<%@page import="com.qa.models.Customer"%>
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
  %>
   
    
       
       <div class="row">
        <div class="small-3 form">
           <h2 class="text-center"> Billing Address </h2>
                
              <form action="/updateAddress" method="post">
               <label>Address Line1 * </label>
               <input type="text" placeholder="Enter AddressLine1" name="addressLine1" id="addressLine1" required/> 
               <label>Address Line2</label>
               <input type="text" placeholder="Enter Address Line2" name="addressLine2" id="addressLine2"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City" name="city" id="city" required/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode" required/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="state" required/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="county" required/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber" required/> 
                
                 
                <input type="hidden" name="addressType" id="addressType" value="billing"/> 
                
                
                <input type="submit" class="button create account expanded" value="Update Billing Address">
               </form>
            </div>
            
          
               <div class="small-3 form">
                <h2 class="text-center"> Shipping Address </h2>
                
                <input type="checkbox" class="ba" checked="checked" /> Different from billing address
                
              <form action="/updateAddress" method="post">
               <input type="text" placeholder="Enter Address 1 *" name="addressLine1" id="addressLine1" class="tex" required/> 
               <input type="text" placeholder="Enter Address 2" name="addressLine2" id="addressLine2" class="tex"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City *" name="city" id="city" class="tex" required/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode" class="tex" required/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="state" class="tex" required/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="county" class="tex" required/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber" class="tex" required/> 
                
                 
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


    
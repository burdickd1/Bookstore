<!doctype html>
<%@page import="com.qa.models.Customer"%>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Account | Online Shopping");
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
    


    <div class="callout large">
      <div class="row column text-center">
        
        <h2><b>You are logged in as <%=c.getFirstName() %> <%=c.getLastName() %></b></h2>
       </div>
       
       
       <div class="row column">
        
        
        <div class="small-3 form">
        <form action="/updateProfile" method="post">
           <h2 class="text-center"> Account details </h2>
           <label>Firstname * </label>
           <input type="text" placeholder="Enter firstname" name="firstName" id="firstName" value="<%=c.getFirstName() %>"/> 
           <label>Lastname * </label>
           <input type="text" placeholder="Enter lastname" name="lastName" id="lastName" value="<%=c.getLastName()%>"/> 
           <label>Email ID * </label>
           <input type="text" placeholder="Enter email" name="email" id="email" value="<%=c.getEmail()%>"/> 
         </form> 
         <input type="submit" class="button create account expanded" value="Update Account">   
         </div>
            
          
      		
      		
              
              
    
      
      
      </div>
       
       
       
       
       
       
       
    </div>
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>


    
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
  <%! Customer c; %>
  <% c = (Customer) session.getAttribute("logged_in_customer"); %>
    <div class="callout large">
      <div class="row column text-center">
        
        <h2><b>You have logged in as <%=c.getFirstName() %> <%=c.getLastName() %></b></h2>
       </div>
       
       
       <div class="row column">
        
        
        <div class="small-3 form">
        <form action="/updatePassword" method="post">
           <h2 class="text-center"> Update Password </h2>
           <input type="hidden" name="id" value="<%= c.getCustomerId() %>"/>
           <input type="password" placeholder="Old Password" name="old_password" id="old_password"/> 
           <input type="password" placeholder="New Password" name="password" id="password"/> 
           <input type="password" placeholder="Confirm Password" name="password2" id="password2"/>
           <input type="submit" class="button update password expanded" value="Update Password">    
         </form> 
         
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


    
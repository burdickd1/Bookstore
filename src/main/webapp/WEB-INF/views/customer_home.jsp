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
         
        <h3>You have logged in as <%=c.getFirstName() %></h3>
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


    
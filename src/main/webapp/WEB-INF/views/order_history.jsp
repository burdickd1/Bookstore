<%@page import="javax.servlet.RequestDispatcher"%>
<%@ page import="com.qa.models.*" %>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
  <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
  <%
 		Customer c = (Customer) session.getAttribute("logged_in_customer");
  %>
  <section class="row">
    <div class ="small-6 columns order-block">
        Order Placed:

    </div>
    <div class ="small-6 columns order-block">
        Item Details:
    </div>


  </section>


  </body>
</html>
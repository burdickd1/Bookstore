<!doctype html>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Cart | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>

    <div class="callout large">
      <div class="row column text-center">
        <h1>Your cart is now empty </h1>
        
        <a href="/" class="button large"> Continue shopping </a>
      
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


    
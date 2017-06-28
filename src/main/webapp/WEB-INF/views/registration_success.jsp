<!doctype html>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Thank You | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
    
    <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>

    <div class="callout large">
      <div class="row column text-center">
        <h1>Registration Success </h1>
        
        <a href="/login" class="button large"> Click here to login </a>
      
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


    
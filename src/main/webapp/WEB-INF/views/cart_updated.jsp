<!doctype html>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Cart | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>

    <div class="callout large form">
      <div class="row column text-center">
        <h2>Item added to cart </h2>
        
        <a href="/" class="button large" style="width: 300px;">Back to Items </a>
         <h2 class="text-center form-break">--&nbsp;OR&nbsp;--<br></h2>
		  <a href="/viewCart" class="button large" style="width: 300px;">Go to Cart</a>
      
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


    
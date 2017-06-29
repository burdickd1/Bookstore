<!doctype html>
<html class="no-js" lang="en">
 <%
 	request.setAttribute("pagetitle", "Login | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
	double orderTotal = (Double) request.getAttribute("order_total");
    String tax = request.getParameter("tax");
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
   
                
     <div class="large" style="padding-top: 50px;">
      <div class="row column">
        <div class="small-3 form">
		  <h2 class="text-center">Please login to your account</h2>
		  <br>
		  <form action="/checkout" method="post" id="checkout_form">
		<input type="hidden" name="tax" value="<%=tax %>"/>    
		<input type="hidden" name="order_total" value="<%=orderTotal %>"/>   
        <input type="submit" class="button expanded" value="Login and checkout"/>
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


    
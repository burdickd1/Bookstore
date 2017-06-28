<!doctype html>
<html class="no-js" lang="en">
 <%
 	request.setAttribute("pagetitle", "Contact | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
    
    

    <div class="callout large">
      <div class="row column text-center">
        
        
        <div class="medium-6 columns22">
           <h3> Please login using your stored credentials  </h3>
                
               <form action="/loginProcessThroughCheckout" method="post"> 
                <input type="text" placeholder="Enter email" name="email" id="email"/>
				 <input type="password" placeholder="Enter Password" name="password" id="password"/>
            	<input type="submit" class="button expanded" value="Submit">
              
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


    
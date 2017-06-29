<!doctype html>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Register | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
    
    <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>

    <div class="row">
        <div class="small-3 columns"><p></p></div> 
        <div class="small-6 columns form">      
        	<form action="/registerProcess" method="post">
	        
	           <h2 class="row column text-center"> Create an account  </h2>  
	           	<label>Firstname * </label>
	           	<input type="text" placeholder="Enter firstname" name="firstName" id="firstName" required/> 
	           	<label>Lastname * </label>
	           	<input type="text" placeholder="Enter lastname" name="lastName" id="lastName" required/> 
	           	<label>Email ID * </label>
	            <input type="email" placeholder="Enter email" name="email" id="email" required/> 
	            <label>Password * </label>
				<input type="password" placeholder="Enter Password" name="password" id="password" required/>	
				<input type="checkbox" name="aggreement" required/> I have read and understood the 
	          	<a href="#" data-open="myModal">Registered User Agreement </a> and agree to be bound by all of its terms. 
				<div id="myModal" class="reveal" data-reveal >
					<jsp:include page="/WEB-INF/views/EULA.jsp"></jsp:include>
					<a class="close-button" data-close onclick="location.reload();">&#215;</a>
				</div>
				<br><br>
				<input type="submit" class="button create account expanded" value="Create Account">
        	</form>
       	</div>        
        <div class="small-3 columns"><p></p></div>
   </div>
    
   <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>


    
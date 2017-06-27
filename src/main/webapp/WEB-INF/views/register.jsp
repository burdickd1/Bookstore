<!doctype html>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Register | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
    
    <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>

    <div class="callout large">
      <div class="row column">
        
        <form action="/registerProcess" method="post">
        <div class="medium-6">
           <h3> Create an account  </h3>
                
                
               <label>Firstname * </label>
               <input type="text" placeholder="Enter firstname" name="firstName" id="firstName" required/> 
               <label>Lastname * </label>
               <input type="text" placeholder="Enter lastname" name="lastName" id="lastName" required/> 
               <label>Email ID * </label>
                <input type="email" placeholder="Enter email" name="email" id="email" required/> 
                <label>Password * </label>
				 <input type="password" placeholder="Enter Password" name="password" id="password" required/>
            	
            </div>
            
            <div class="medium-6">
           
          	 <input type="checkbox" name="aggreement" required/> I have read and understood the 
          	 <a href="#" data-open="myModal">Registered User Agreement </a> and agree to be bound by all of its terms. 
         	
				<div id="myModal" class="reveal" data-reveal >
  					<jsp:include page="/WEB-INF/views/EULA.jsp"></jsp:include>
  					<a class="close-button" data-close>&#215;</a>
				</div>
			
			</div>
      		<br>
      		<input type="submit" class="button create account" value="Create Account">
              
              </form>
    
      
      
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


    
<!doctype html>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
    <div class="large" style="padding-top: 50px;">
      <div class="row column">
        <div class="small-3 form">
		  <h2 class="text-center">Login to your account</h2>
		  <br>
		  <form action="loginProcess" method="post">
		    <input type="email" placeholder="Enter email" name="email" id="email" required/> 
		    <input type="password" placeholder="Enter Password" name="password" id="password" required/>
			<input type="submit" class="button expanded" value="Login">
		  </form>
		  <h2 class="text-center form-break">--&nbsp;OR&nbsp;--<br></h2>
		  <a href="/register" class="button expanded">Register a New Account</a>
		</div>
      </div>
    </div>
  </body>
</html>


    
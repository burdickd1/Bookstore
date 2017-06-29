
<html>
<%
 	request.setAttribute("pagetitle", "About");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
	<div class="row">
		<div class="small-3 columns">
		<p></p>
		</div>
		<div class="small-6 columns form">
			<div class="row column text-center">
				<h2>About</h2>
			</div>
			<p class="formFont">ChickenCluckers.com is owned entirely by ChickenCluckers Corp., a privately traded company
			listed on the FAKESE under the symbol of CCC. </p> <br>
			<p class="formFont">ChickenCluckers.com uses the recognition of our brand as a premier book provider across the country. 
			</p> <br>
			<p class="formFont">We LOVE <span style="text-decoration:line-through">chickens</span> books! 
			And it is our goal to share our passion with others and to spread the joy of reading.  </p>
		</div>
		<div class="small-3 columns"></div>
		
	</div>
	

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
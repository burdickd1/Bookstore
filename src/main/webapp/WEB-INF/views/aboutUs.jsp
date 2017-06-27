
<html>
<%
 	request.setAttribute("pagetitle", "Contact Us");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
	<div class="row column text-center">
		<h2 style="color: #233237; font-family:'Signika', sans-serif">About Us!</h2>
	</div>
	<div class="row">
		<div class="small-3 columns">
		<p></p>
		</div>
		<div class="small-6 columns" style="color: #223237">
			<p>ChickenCluckers.com is owned entirely by ChickenCluckers Corp., a privately traded company
			listed on the FAKE under the symbol of CCC. </p> <br>
			<p>ChickenCluckers.com uses the recognition of our brand as a premier book provider across the country. 
			</p> <br>
			<p>We LOVE books! 
			And it is our goal to share our passion with others and to spread the joy of reading.  </p>
		</div>
		<div class="small-3 columns"></div>
		
	</div>
	

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
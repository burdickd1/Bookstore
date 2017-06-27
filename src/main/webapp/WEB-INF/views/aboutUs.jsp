
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

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
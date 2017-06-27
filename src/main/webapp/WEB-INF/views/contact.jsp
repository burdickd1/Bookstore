<html>
<%
 	request.setAttribute("pagetitle", "Contact Us");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
	<div class="row column text-center">
		<h2 style="color: #233237; font-family:'Signika', sans-serif">Contact Us!</h2>
	</div>
	<div class="row ">
		<div class="small-3 columns">
		<p>
		</p>
		</div>
		<div class="small-6 columns callout secondary">
			
			<p class="formFont"> Feel free to contact us at 555-555-5555 with any questions or concerns </p>
			<p class="formFont"> Additionally, you can send us a message and we will get back to you as soon as we can </p>
			<form action="">
				<p class="formFont"> Email: <input type="text" name="email"> </p>
				<p class ="formFont">Your Message: <textarea name="message" cols="50" rows="10" style="resize:none"></textarea></p>
				<input type="submit" name="submit">
			</form>
		</div>
		<div class="small-3 columns"></div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>


</html>
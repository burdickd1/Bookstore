<html>
<%
 	request.setAttribute("pagetitle", "Contact | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
	<div class="row ">
		<div class="small-3 columns">
		<p>
		</p>
		</div>
		<div class="small-6 columns form">
			<div class="row column text-center">
				<h2>Contact</h2>
			</div>
			<p class="formFont"> Feel free to contact us at 555-555-5555 with any questions or concerns. </p>
			<p class="formFont"> Additionally, you can send us a message and we will get back to you as soon as we can: </p>
			<form action="">
				<input type="text" name="email" placeholder="Email" />
				<textarea name="message" cols="50" rows="10" style="resize:none" placeholder="Type Your Message Here..."></textarea>
				<input class="button expanded" type="submit" name="submit">
			</form>
		</div>
		<div class="small-3 columns"></div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>


</html>
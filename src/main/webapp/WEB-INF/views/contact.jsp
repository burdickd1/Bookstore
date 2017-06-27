<html>
<%
 	request.setAttribute("pagetitle", "Contact Us");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
<%
	RequestDispatcher rd1 = request.getRequestDispatcher("/WEB-INF/views/navbar.jsp");
	rd1.include(request, response);
%>

	<div class="row column text-center">
		<h2>Contact Us!</h2>
	</div>
	<div class="row ">
		<div class="small-3 columns">
		<p>
		</p>
		</div>
		<div class="small-6 columns callout">
			
			<p> Feel free to contact us at 555-555-5555 with any questions or concerns </p>
			<p> Additionally, you can send us a message and we will get back to you as soon as we can </p>
			<form action="">
				Email: <input type="text" name="email">
				Your Message: <textarea name="message" cols="50" rows="10" style="resize:none"></textarea>
				<input type="submit" name="submit">
			</form>
		</div>
		<div class="small-3 columns"></div>
	</div>
</body>


</html>
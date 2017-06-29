<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
 	request.setAttribute("pagetitle", "Errorz | Online Shopping");
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
		<h2 class="text-center"><b>Keyboard Not Found</b></b><br/>
			<span style="font-size: 20px;">Please Press a Key to Continue...</span></h2>
		<div align="center"><img alt="O noes!" src="/images/errorz.jpg"></div><br>
	</div>
	<div class="small-3 columns"></div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
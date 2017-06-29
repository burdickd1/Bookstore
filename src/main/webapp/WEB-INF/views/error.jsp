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
	<h1 align="center">Keyboard Not Found<br/><br/>
		Please Press a Key to Continue</h1>
	<div align="center"><img alt="O noes!" src="/images/errorz.jpg"></div>
</body>
</html>
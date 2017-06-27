<!doctype html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.qa.models.Book"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
    <div class="row column text-center">
      <h2>Our Newest Books
      <%
         Iterable<Book> books = (Iterable<Book>) session.getAttribute("books"); 
      %>
      </h2>
      <hr>
    </div>
    <div class="row small-up-2 large-up-4">
    <%
    int i = 0;
    for(Book book: books)
    {
      	if(i++ > 11)break;
    %>
      <div class="column">     
        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="thumbnail" src="<%=book.getBookImage()%>"></a>
        <h5><%= book.getTitle()%></h5>
        <p>$<%= book.getPrice()%></p>
        <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="button expanded">View book details</a>
        <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
      </div> 
    <%
    }
    %>  
    </div>

    <hr>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
  </body>
</html>

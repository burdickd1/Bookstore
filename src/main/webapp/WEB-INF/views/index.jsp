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
<%
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/navbar.jsp");
	rd.include(request, response);
%>
    


    
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
    
    for(Book book: books)
    {
      
   
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
	<div class="callout large secondary">
      <div class="row">
        <div class="large-4 columns">
          <h5>QA Cinema</h5>
          <p>Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit.</p>
		  <p>&copy QA Cinemas Inc. | All Rights Reserved
        </div>
        <div class="large-2 large-offset-2 columns">
        </div>
        <div class="large-4 columns">
			<img src="http://placehold.it/400x200">
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script> 
  </body>
</html>

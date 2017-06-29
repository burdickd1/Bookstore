<!doctype html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.qa.models.Book"%>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Search | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>

    <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
    <div class="row column text-center">
      <h2>Search Results for &quot;<%= request.getAttribute("searchterm")%>&quot;
      	<% List<Book> books = (List<Book>) session.getAttribute("books"); %>
      </h2>
      <hr>
    </div>

    <div class="row small-up-2 large-up-4">
    
    <%
    int max = books.size() > 12 ? 12 : books.size();
    for(Book book: books.subList(0, max)){
    %>
      <div class="column searchtable-item">
      
        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="thumbnail"  style="width:210px; height:270px" src="<%=book.getBookImage()%>"></a>
        <div class="ellipses" style="width: 250px; display: block; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">
	        <h4 style="width: 250px; display: block; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;"><%= book.getTitle()%></h4>
	        <h6 style="width: 250px; display: block; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;"><%= book.getAuthors().size() > 0 ?  book.getAuthors().get(0).getAuthorName() : "Unk"%></h6>
	        <p>$<%= book.getPrice()%></p>
        </div>
        <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="button expanded">View book details</a>
        <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
      </div>
    
    <% } 
    %>  
    </div>

    <hr>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <!-- <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script> -->
  </body>
</html>

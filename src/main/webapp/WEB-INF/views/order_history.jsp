<%@page import="javax.servlet.RequestDispatcher"%>
<%@ page import="com.qa.models.*" %>
<%@ page import="java.util.*" %>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Online Shopping | History");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
  <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
  <%
 		Map<Purchase, Book> purchaseBooks = (Map<Purchase, Book>) request.getAttribute("purchaseBooks");
  %>
  <br>
  <section class="row history">
        <div class ="small-12 columns" style="padding-bottom: -15px; border:1px solid #984b43;">
			<h2 class="text-center">Order History</h2>
        </div>
  </section>
  <section class="row history">
      <%
          for (Map.Entry<Purchase, Book> purchaseBook : purchaseBooks.entrySet()) {
      %>
    <div class ="small-3 columns order-block left">        
        <img style="width:105px; height:135px" class="thumbnail" src="<%=purchaseBook.getValue().getBookImage()%>"/>
		<p><b>Quantity:</b> <%= purchaseBook.getKey().getQuantity()%></p>
		<p><b>Order Date:</b> <%= purchaseBook.getKey().getDate().toString().substring(0,10) %></p>
    </div>
        <div class ="small-9 columns order-block right" style="padding-top: 15px;">
			<a class="title" href='/bookDetails?bookId=<%=purchaseBook.getValue().getBookId() %>'><b><%= purchaseBook.getValue().getTitle()%></b></a>
              <%
                  StringBuilder authors = new StringBuilder();
                  for (Author author : purchaseBook.getValue().getAuthors()) {
                      authors.append(author.getAuthorName());
                      authors.append(", ");
                  }
                  if (authors.length() > 0) {
                      authors.setLength(authors.length()-2);
                  } else {
                      authors.append("Anonymous");
                  }
              %>
            <p>&nbsp&nbsp&nbsp&nbsp&nbsp<b>Price:</b> $<%= purchaseBook.getValue().getPrice() %></p>
              <br>
            <p>&nbsp&nbsp&nbsp&nbsp&nbsp<b>Authors:</b> <%= authors.toString() %></p>
            <p>&nbsp&nbsp&nbsp&nbsp&nbsp<b>Published:</b> <%= purchaseBook.getValue().getPublishedDate() %></p>
            <p>&nbsp&nbsp&nbsp&nbsp&nbsp<b>Publisher:</b> <%= purchaseBook.getValue().getPublisher()%></p>
            <p>&nbsp&nbsp&nbsp&nbsp&nbsp<b>ebookISBN:</b> <%= purchaseBook.getValue().geteBookISBN()%></p>
            <p>&nbsp&nbsp&nbsp&nbsp&nbsp<b>paperISBN:</b> <%= purchaseBook.getValue().getPaperISBN()%></p>




        </div>
      </a>
      <%
          }
      %>


  </section>


  </body>
</html>
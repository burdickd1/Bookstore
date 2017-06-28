<%@page import="javax.servlet.RequestDispatcher"%>
<%@ page import="com.qa.models.*" %>
<%@ page import="java.util.*" %>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
  <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
  <%
 		Map<Purchase, Book> purchaseBooks = (Map<Purchase, Book>) request.getAttribute("purchaseBooks");
  %>
  <br>
  <section class="row">
      <%
          for (Map.Entry<Purchase, Book> purchaseBook : purchaseBooks.entrySet()) {
      %>
    <div class ="small-6 columns order-block">
        Order Placed: <br>
        <%= purchaseBook.getKey().getDate().toString().substring(0,10) %> <br>
        Quantity: <%= purchaseBook.getKey().getQuantity()%>

    </div>
    <a href = /bookDetails?bookId=<%=purchaseBook.getValue().getBookId()%>>
        <div class ="small-6 columns order-block">
            Item Details:<br>
            <%= purchaseBook.getValue().getTitle()%> <br>


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
            Authors: <%= authors.toString() %> <br>
            Description: <%= purchaseBook.getValue().getDescription()%><br>
            Published: <%= purchaseBook.getValue().getPublishedDate() %><br>
            Publisher: <%= purchaseBook.getValue().getPublisher()%>
            ebookISBN: <%= purchaseBook.getValue().geteBookISBN()%> <br>
            paperISBN: <%= purchaseBook.getValue().getPaperISBN()%>




        </div>
      </a>
      <%
          }
      %>


  </section>


  </body>
</html>
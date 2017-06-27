<!doctype html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@ page import="com.qa.models.*" %>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
<%
    Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
    Iterator<Book> it = books.iterator();
%>
    <header class="header">
        <video preload="auto" autoplay loop muted poster="img/videobg.png" id="bgvid" src="http://thenewcode.com/assets/videos/polina.mp4" type="video/mp4" ></video>
    </header>
    <hr>
    <section>
        <div class="ecommerce-product-slider orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
          <ul class="orbit-container">
            <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
            <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
                <%
                int num_pages = 5;
                while (it.hasNext() && num_pages-- > 0) {
                %>
                      <li class="is-active orbit-slide">
                        <div class="row small-up-2 medium-up-4 large-up-5 align-center">
                            <%
                                for (int i = 0; i < 5 && it.hasNext(); ++i) {
                                    Book book = it.next();

                            %>
                                    <div class="column">
                                      <div class="product-card">
                                        <div class="product-card-thumbnail">
                                          <a href="#"><img style="width:210px; height:270px"src=<%=book.getBookImage()%>/></a>
                                        </div>
                                        <h2 class="product-card-title"><a href="/bookDetails?bookId=<%=book.getBookId()%>"><%=book.getTitle()%></a></h2>
                                          <%
                                              StringBuilder authors = new StringBuilder();
                                              for (Author author : book.getAuthors()) {
                                                  authors.append(author.getAuthorName());
                                                  authors.append(", ");
                                              }
                                              if (authors.length() > 0) {
                                                  authors.setLength(authors.length()-2);
                                              } else {
                                                  authors.append("Anonymous");
                                              }
                                          %>
                                        <span class="product-card-desc">By: <%=authors.toString()%> </span>
                                        <a href="/addToCart?bookId=" class="product-card-price fi-shopping-cart"> $<%=book.getPrice()%></a>
                                      </div>
                                    </div>
                            <%
                                }
                            %>
                        </div>
                      </li>
                <%
                }
                %>


         </ul>
          <nav class="orbit-bullets">
            <button class="is-active" data-slide="0"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
            <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
            <button data-slide="2"><span class="show-for-sr">Third slide details.</span></button>
          </nav>
        </div>


    </section>

    <hr>
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
<script src="js/foundation.orbit.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>

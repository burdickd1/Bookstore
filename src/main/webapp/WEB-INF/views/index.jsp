<!doctype html>
<%@page import="java.util.Iterator"%>
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
    <aside id="banner-head" style="position:absolute; width:100%; height:600px" class="animated fadeIn hide-banner">
    	<div class="gradient-textbox">
    		<div class="video-textbox">
    			<h1><span style="color: red">Forth</span><span style="color: white"> of</span> <span style="color: blue">July</span> <span style="color: white">Sale</span></h1>
    			<h3>July 1st through 7th</h3>
    		</div>
        
        <div class="small-3 columns"></div>
    </aside>
    <header class="header">
        <video preload="auto" autoplay muted poster="images/1" id="bgvid" src="videos/library.mp4" type="video/mp4" ></video>
    </header>

    <hr>
    <section>
        <div class="ecommerce-product-slider orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
          <ul class="orbit-container">
                <%
                int num_pages = 3;
                while (it.hasNext() && num_pages-- > 0) {
                %>
                    <% if (num_pages == 2) { %>
                      <li class="is-active orbit-slide">
                    <%
                        }
                        else {
                    %>
                      <li class="orbit-slide">
                    <% } %>

                        <div class="row small-up-2 medium-up-4 large-up-5 align-center">
                            <%
                                for (int i = 0; i < 5 && it.hasNext(); ++i) {
                                    Book book = it.next();

                            %>
                                    <div class="column slider-cell">
                                      <div class="product-card">
                                        <div class="product-card-thumbnail">
                                          <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img style="width:210px; height:270px"src=<%=book.getBookImage()%>/></a>
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
                                        <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="product-card-price fi-shopping-cart"> $<%=book.getPrice()%></a>

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
            <button data-slide="0" class="is-active"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
            <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
            <button data-slide="2"><span class="show-for-sr">Third slide details.</span></button>
          </nav>
        </div>


    </section>

    <hr>
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <%--<script src="js/foundation.orbit.js"></script>--%>
    <script src="js/video.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>

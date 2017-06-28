<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qa.models.Book"%>
<%@page import="java.text.DecimalFormat" %>
<html class="no-js" lang="en">
<%
 	request.setAttribute("pagetitle", "Account | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
  <body>
	<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
    
    <%!
    
      ArrayList<Book> books;
    
      Map<Integer,Integer> bookCounts;
    
      
    %>
    
    
    <%
    

    
    books  = (ArrayList<Book>) session.getAttribute("filtered_books");
    
    bookCounts = (Map<Integer,Integer>)  session.getAttribute("book_counts");
    
    double cartTotal = 0.0;
    
    double totalPrice =  0.0;
    %>
    
   


    <!-- You can now combine a row and column if you just need a 12 column row -->

    <div class="row">
      <div class="medium-6 columns">
      <% 
     
      

      int i = 0;
      for(Book book : books)
      {
    	  
    	  int quantity = bookCounts.get(book.getBookId());
    	  double price = book.getPrice();
    	  totalPrice = book.getPrice() * quantity;
    	  cartTotal = cartTotal + book.getPrice()*quantity;

      %>
       
        <img class="thumbnail" src="<%=book.getBookImage()%>"/>
        <div class="row small-up-4">
        
          <div class="column">
            eBook ISBN : <%=book.geteBookISBN()%>
          </div>
          <div class="column">
            Print book ISBN <%=book.getPaperISBN()%>
          </div>
          
          <div class="column">
           
          </div>
          <div class="column">
            Published On <%=book.getPublishedDate()%>
          </div>
          
          <div class="column">
            <form name="f1">
            	<input type="hidden" name="price" value="<%=price%>"/>
            	<input type="hidden" name="cart_total" value="<%=cartTotal%>"/>
            	Price <label id="price_label<%=i%>">$<%=totalPrice%></label>
            	<input type="hidden" name="cart_total" value="<%=price%>"/>
                <input type ="hidden" id ="old_quant" name="old_quant" value = "1" />
            	Quantity <input type="number"  min="1" name="quantity" value="<%=quantity%>" oninput="calculateTotalPrice(price.value,old_quant.value, this.value,price_label<%=i%>)"/>
            </form>
          </div>
          
        </div>
  
        <div class="row small-up-4">
          
          <div class="column">
            <a href="/removeFromCart?bookId=<%=book.getBookId() %>"> Remove </a>
          </div>
        
        </div>
        
        <hr>
      <%
      i++;
      }
      String cartS = String.format("%.2f", cartTotal);
      cartTotal = Double.parseDouble(cartS);
      String orderS = String.format("%.2f", totalPrice);
      totalPrice = Double.parseDouble(orderS);
      double tax = cartTotal*.1;
      String taxS = String.format("%.2f", tax);
      tax = Double.parseDouble(taxS);
      double totalCost = cartTotal + tax;
      %>
     
      </div>
      <div class="medium-6 large-5 columns">
        <h3>Order Summary </h3>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             <input type="hidden" name="order_total" id="cart_total" value="<%=cartTotal %>"/> 
            <label for="middle-label" class="middle" id="cart_total_label">$<%=cartS %></label>
           </div>
           
       </div>


          <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Tax </label>
          </div>
          <div class="small-3 columns">
          	<input type="hidden" name="tax" id="tax" value="<%=tax %>"/>
            <label for="middle-label" class="middle" id="tax_label">$<%=taxS %></label>
           </div>
           
        </div>
    
        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Order Total  </label>
          </div>
          <div class="small-3 columns">
            <input type="hidden" name="order_total" id="order_total" value="<%=totalCost %>"/> 
            <label for="middle-label" class="middle" id="order_total_label">$<%=orderS%></label>
           </div>
      
        </div>

		<form action="/checkout" method="post" id="checkout_form">
		<input type="hidden" name="tax" value="<%=tax %>"/>    
		<input type="hidden" name="order_total" value="<%=totalCost %>"/>   
        <input type="submit" class="button large expanded" value="Proceed to Checkout"/>
        </form> 
      </div>  
 </div>
 	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    <script>
      $(document).foundation();
    </script> 
  </body>
</html>


    
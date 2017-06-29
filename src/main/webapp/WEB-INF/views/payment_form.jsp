<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qa.models.Book"%>
<html class="no-js" lang="en">
<%
	request.setAttribute("pagetitle", "Checkout | Online Shopping");
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/meta.jsp");
	rd.include(request, response);
%>
<body>
    <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>

    <form action="/paymentProcess" method="post"
        modelAttribute="payment">
        <%
        	double orderTotal = (Double) request.getAttribute("order_total");
        	double cartTotal = (Double) request.getAttribute("cart_total");
        	double tax = (Double) request.getAttribute("tax");
        	String taxS = String.format("%.2f", tax);
        	String cartS = String.format("%.2f", cartTotal);
        	String orderS = String.format("%.2f", orderTotal);
        %>

        <!-- You can now combine a row and column if you just need a 12 column row -->

        <div class="row">
            <div class="small-3 columns">
                <p></p>
            </div>
            <div class="small-6 columns form">

                <h2 class="text-center">Payment Details</h2>

                <div class="row small-up-shiping">

                    <div class="columns">
                        <input type="number" name="creditCardNum" id="creditCardNum"
                            size="30" placeholder="Card Number *"
                            required />
                        <select name='expMonth' id='expireMonth'>
                            <option value=''>Month</option>
                            <option value='01'>January</option>
                            <option value='02'>February</option>
                            <option value='03'>March</option>
                            <option value='04'>April</option>
                            <option value='05'>May</option>
                            <option value='06'>June</option>
                            <option value='07'>July</option>
                            <option value='08'>August</option>
                            <option value='09'>September</option>
                            <option value='10'>October</option>
                            <option value='11'>November</option>
                            <option value='12'>December</option>
                        </select>
                        <select name='expYear' id='expireYear'>
                            <option value=''>Year</option>
                            <option value='10'>2010</option>
                            <option value='11'>2011</option>
                            <option value='12'>2012</option>
                        </select>
                        <input type="number" name="cvv" id="cvv"
                            size="30" placeholder="CVV *" required /> <br>

                        <h2 class="text-center">Order Summary</h2>

                        <label for="middle-label" class="middle">Cart
                            Total: &nbsp&nbsp&nbsp&nbsp $<%=cartS%></label> <label
                            for="middle-label" class="middle">Tax:
                            &nbsp&nbsp&nbsp&nbsp $<%=taxS%></label> <label
                            for="middle-label" class="middle">Order
                            Total: &nbsp&nbsp&nbsp&nbsp $<%=orderS%></label>

                        <!-- Hidden inputs -->
                     

                        <input type="submit"
                            class="button large expanded"
                            value="Complete Transaction" />

                    </div>
                </div>
                <hr>
            </div>
            <div class="small-3 columns"></div>
        </div>
        <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
        <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
        <script src="js/elsevier.js"></script>
        <script src="js/update_cart.js"></script>

        <script src="js/validations.js"></script>
        <script>
									$(document).foundation();
								</script>

    </form>
</body>
</html>



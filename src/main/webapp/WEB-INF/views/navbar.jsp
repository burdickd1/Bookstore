<%@ page import="com.qa.models.*" %>
<div class="top-bar" style="width:100%">
  <div class="top-bar-left">
    <ul class="menu">
      <li class="menu-text title-logo" style="cursor:default">
      	<span style="font-family: 'Bevan'; font-size: 20px;">Chicken</span>
      	<span style="font-family: 'Permanent Marker', cursive; font-size: 20px;">Cluckers</span>
	  </li>
	  <li><a class="interact" href="/">Home</a></li>
      <li><a class="interact" href="/aboutUs">About Us</a></li>
      <li><a class="interact" href="/contact">Contact</a></li>
    </ul>
  </div>
  <div class="top-bar-right">
    <ul class="menu">
      <% if (session.getAttribute("logged_in_customer") != null) {  	  
      Customer c = (Customer) session.getAttribute("logged_in_customer"); %>
      <li><a style="cursor:default">Welcome, <b><%= c.getFirstName() %></b></a></li>
      <li class="dropdown">
        <a style="padding: 0px;">
            <i class="fi-torso navbar-icon" href="#account" style="padding: 5px 10px;"></i>
        </a>
        <div class="dropdown-content">
            <div class="dropdown-content-menu">
                <ul>
                    <li><a href="#account">Account</a></li>
                    <li><a href="#history">Order History</a></li>
                    <li><a href="#password">Change Password</a></li>
                    <li><a href="/logout">Sign Out</a></li>
                </ul>
            </div>
        </div>
      </li> 
      <% } %>
      <li><a href="#cart" style="padding: 0px;"><i class="fi-shopping-cart navbar-icon" style="padding: 5px 8px;"></i></a></li>      
      <li><input type="search" placeholder="Search"></li>
      <li><button type="button" class="button">Search</button></li>
      <% if (session.getAttribute("logged_in_customer") == null) { %>
    	  <li><a href="/login"><span>Login</span>&nbsp|&nbsp<span>Register</span></a></li>
	  <% }  %>
    </ul>
  </div>
</div>

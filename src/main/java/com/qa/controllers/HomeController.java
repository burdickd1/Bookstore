package com.qa.controllers;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Purchase;
import com.qa.services.BookService;
import com.qa.services.CustomerService;
import com.qa.services.OrderService;

@Controller
@SessionAttributes(names = { "books", "cart_items", "logged_in_customer", "Address" })
public class HomeController {

	@Autowired
	BookService bookService;

	@Autowired
	CustomerService customerService;

	@Autowired
	OrderService orderService;

	@RequestMapping("/")
	public ModelAndView indexPage(HttpServletRequest request) {

		ArrayList<Book> cartItems = null;

		HttpSession session = request.getSession();

		Object items = session.getAttribute("cart_items");

		if (items != null) {
			cartItems = (ArrayList<Book>) items;
		} else {
			cartItems = new ArrayList<Book>();
		}

		Iterable<Book> books = bookService.findAll();

		ModelAndView modelAndView = new ModelAndView("index", "books", books);

		modelAndView.addObject("cart_items", cartItems);
		
		return modelAndView;

	}
	
	@RequestMapping("/home")
	public ModelAndView index2(){
		ModelAndView modelAndView = new ModelAndView("index2");

		return modelAndView;
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView("login");

		return modelAndView;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(SessionStatus status) {
		status.setComplete();
		String url = "";
		return new ModelAndView("redirect:" + url);
	}

	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView("register");

		return modelAndView;
	}
	
	@RequestMapping("/aboutUs")
	public ModelAndView aboutUs() {
		ModelAndView modelAndView = new ModelAndView("aboutUs");

		return modelAndView;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView modelAndView = new ModelAndView("contact");

		return modelAndView;
	}

	@RequestMapping("/registerProcess")
	public ModelAndView registerProcess(@ModelAttribute("Customer") Customer customer) {

		ModelAndView modelAndView = null;

		System.out.println("Customer Firstname is " + customer.getFirstName());

		System.out.println("Customer Password is " + customer.getPassword());
		Customer c = customerService.save(customer);
		if (c != null && c.getEmail().length() != 0) {
			modelAndView = new ModelAndView("registration_success");
		} else {
			modelAndView = new ModelAndView("registration_failed");
		}

		return modelAndView;
	}

	@RequestMapping("/loginProcess")
	public ModelAndView loginProcess(@RequestParam("email") String email, @RequestParam("password") String password) {

		ModelAndView modelAndView = null;

		System.out.println("Email is " + email);

		System.out.println("Password is " + password);

		Customer c = customerService.loginProcess(email, password);

		if (c != null) {
			System.out.println("Success");
			modelAndView = new ModelAndView("index", "logged_in_customer", c);
		} else {
			System.out.println("Failure");
			modelAndView = new ModelAndView("login");
		}

		return modelAndView;
	}

	@RequestMapping("/profile")
	public ModelAndView profile(@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
		ModelAndView modelAndView = new ModelAndView("profile", "logged_in_customer", loggedInCustomer);

		return modelAndView;
	}

	@RequestMapping("/updateProfile")
	public ModelAndView updateProfile(@ModelAttribute("logged_in_customer") Customer loggedInCustomer,
			@ModelAttribute("Customer") Customer customer) {

		ModelAndView modelAndView = null;

		System.out.println("Before update ");

		System.out.println("ID " + loggedInCustomer.getCustomerId());
		System.out.println("Name" + loggedInCustomer.getFirstName());
		System.out.println("Email" + loggedInCustomer.getEmail());

		int recordsUpdated = customerService.updateCustomer(loggedInCustomer.getFirstName(),
				loggedInCustomer.getLastName(), loggedInCustomer.getEmail(), loggedInCustomer.getCustomerId());

		if (recordsUpdated > 0) {
			Customer c = customerService.findOne(loggedInCustomer.getCustomerId());

			System.out.println("After update ");

			System.out.println("ID " + c.getCustomerId());
			System.out.println("Name" + c.getFirstName());
			System.out.println("Email" + c.getEmail());

			modelAndView = new ModelAndView("profile", "logged_in_customer", c);
		} else {
			modelAndView = new ModelAndView("profile", "logged_in_customer", loggedInCustomer);
		}

		return modelAndView;
	}
	
	@RequestMapping("/password")
	public ModelAndView updatePassword(@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
		ModelAndView modelAndView = new ModelAndView("updatePassword", "logged_in_customer", loggedInCustomer);

		return modelAndView;
	}

	@RequestMapping("/updatePassword")
	public ModelAndView updatePassword(@ModelAttribute("logged_in_customer") Customer loggedInCustomer,
			@RequestParam("old_password") String old_password,
			@RequestParam("password") String password,
			@RequestParam("password2") String password2 ) {

		ModelAndView modelAndView = null;

		Customer c = customerService.findOne(loggedInCustomer.getCustomerId());
		
		if (!(password.equals( password2 )) || !(c.getPassword().equals( old_password ))) {
			System.out.println("Password form invalid");
			System.out.println("Password: " + password + "   ---   Password Confirm: " + password2);
			System.out.println("Entered Old: " + old_password + "   ---   Actual Old: " + c.getPassword());
			modelAndView = new ModelAndView("updatePassword", "logged_in_customer", loggedInCustomer);
			return modelAndView;
		} else {

			System.out.println("Before update ");
	
			System.out.println("Password " + c.getPassword());
			c.setPassword(password);
			int recordsUpdated = customerService.updatePassword(c.getPassword(), c.getCustomerId());
			System.out.println("recordsUpdated " + recordsUpdated);
			if (recordsUpdated > 0) {
				c = customerService.findOne(loggedInCustomer.getCustomerId());
	
				System.out.println("After update ");
	
				System.out.println("Password " + c.getPassword());
	
				modelAndView = new ModelAndView("index", "logged_in_customer", c);
				return modelAndView;
			} else {
				System.out.println("Password update failed ");
				modelAndView = new ModelAndView("updatePassword", "logged_in_customer", loggedInCustomer);
				return modelAndView;
			}
		}
	}
	
	@RequestMapping("/addressBook")
	public ModelAndView addressBook(@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
		ModelAndView modelAndView = new ModelAndView("address_book", "logged_in_customer", loggedInCustomer);

		return modelAndView;
	}
	
	@RequestMapping("/search")
	public void serach(){
		
	}

	@RequestMapping("/orderHistory")
	public ModelAndView orderHistory(@ModelAttribute("logged_in_customer") Customer loggedInCustomer) {
		List<Purchase> purchases = orderService.findByCustomerId(loggedInCustomer.getCustomerId());
		Map<Purchase, Book> purchaseBooks = new HashMap<>();
		for (Purchase purchase : purchases) {
			Book b = bookService.findOne(purchase.getBookIdPurchase());
			purchaseBooks.put(purchase, b);
		}

        ModelAndView modelAndView = new ModelAndView("order_history", "purchaseBooks", purchaseBooks);

		return modelAndView;
	}
}

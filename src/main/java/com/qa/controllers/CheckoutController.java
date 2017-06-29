package com.qa.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Purchase;
import com.qa.models.Shipping;
import com.qa.services.OrderService;

@SessionAttributes(names = { "book_counts", "filtered_books", "logged_in_customer" })
@Controller
public class CheckoutController {
	
	@Autowired
	OrderService orderService;

	@RequestMapping("/checkoutProcess")
	public ModelAndView checkoutProcess(@ModelAttribute("Shipping") Shipping shipping,
			@ModelAttribute("book_counts") Map<Integer, Integer> bookCounts,
			@RequestParam("order_total") double orderTotal,
			@RequestParam("cart_total") double cartTotal,
			@RequestParam("tax") double tax,
			@ModelAttribute("filtered_books") ArrayList<Book> books,
			@ModelAttribute("logged_in_customer_") Customer customer){
		
		Date date = new Date();
		Iterator<Integer> it = bookCounts.values().iterator();
		System.out.println("Printing Books: ");
		Purchase purchase =new Purchase();
		for(Book book : books){
			Purchase p = new Purchase();
			p.setBookIdPurchase(book.getBookId());
			p.setCustomerIdPurchase(customer.getCustomerId());
			p.setDate(date);
			p.setQuantity(it.next());
			System.err.println(p);
			purchase = orderService.save(p);
		}

		if(purchase!=null){
			ModelAndView modelAndView = new ModelAndView("payment_form", "order_total", orderTotal);
			modelAndView.addObject("cart_total", cartTotal);
			modelAndView.addObject("tax", tax);
			modelAndView.addObject("shipping_address", shipping);
			modelAndView.addObject("order_total", orderTotal);
			modelAndView.addObject("book_counts", bookCounts);
			return modelAndView;
		} else {
			ModelAndView modelAndView = new ModelAndView("error");
			return modelAndView;
		}

		
	}
}

package com.qa;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.qa.controllers.BookController;
import com.qa.models.Address;
import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Purchase;
import com.qa.services.AddressService;
import com.qa.services.BookService;
import com.qa.services.CustomerService;
import com.qa.services.OrderService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ElsevierProjectApplicationTests {
//	@Autowired
//	private BookService bs;
	
	@Autowired
	private CustomerService cs;
	Customer c;
	
	@Autowired
	private AddressService as;
	Address address;
	
	@Autowired
	private OrderService os;
	
	List<Book> books;
	//Book b1, b2, b3, b4;
	
	List<Purchase> purchases;
	Purchase p;
	
	private BookController bc;
	ArrayList<Book> cartItems;
	ArrayList<Integer> cartItemIds;
	//Iterable<Book> books;
	ArrayList<Integer> bookIds;
	int bookId;
	Book b0, b1, b2, b3, b4;
	Map<Integer, Integer> map;
	
	@Before
	public void setUp() {
//		b1 = bs.findOne(3);
//		b2 = bs.findOne(6);
//		b3 = bs.findOne(10);
//		b4 = bs.findOne(13);
//		books = new ArrayList<Book>(Arrays.asList(b1, b2, b3, b4));
		
		c = cs.findOne(65);
		address = as.findOne(1032);
		p = os.findOne(0);
		purchases = new ArrayList<Purchase>(Arrays.asList(p));
		
		bc = new BookController();
		
		b0 = new Book();
		b0.setBookId(0);
		
		b1 = new Book();
		b1.setBookId(1);
		
		b2 = new Book();
		b2.setBookId(2);
		
		b3 = new Book();
		b3.setBookId(3);
		
		b4 = new Book();
		b4.setBookId(4);
		
		cartItems = new ArrayList<Book>(Arrays.asList(b0, b2));
		cartItemIds = new ArrayList<Integer>(Arrays.asList(0, 2));
		books = new ArrayList<Book>(Arrays.asList(b0, b1, b2, b3, b4, b2));
		bookIds = new ArrayList<Integer>(Arrays.asList(0, 1, 2, 3, 4, 2));
		
		map = new HashMap<Integer, Integer>();
		map.put(0, 1);
		map.put(1, 1);
		map.put(2, 2);
		map.put(3, 1);
		map.put(4, 1);
		
	}
	
	@After
	public void tearDown() {
	   System.out.println("teardown");
	}
	
	/*
	//BookService
	@Test
	public void testSearchBooks() {
		List<Book> test = bs.searchBooks("chicken"); //LazyInitializationException
		assertEquals(test, books);
	}
	*/
	
	//Customer Service
	@Test
	public void testLoginProcess() {
		Customer c1 = cs.loginProcess(c.getEmail(), c.getPassword());
		assertEquals(c1.getCustomerId(), c.getCustomerId());
	}
	
	@Test
	public void testUpdateCustomer() {
		assertEquals(cs.updateCustomer(c.getFirstName(), c.getLastName(), c.getEmail(), c.getCustomerId()), 1);
	}
	
	@Test
	public void testUpdatePassword() {
		assertEquals(cs.updatePassword(c.getPassword(), c.getCustomerId()), 1);
	}
	
	//AddressService
	@Test
	public void testUpdateBillingAddress() {
		int i = as.updateBillingAddress(address.getAddressLine1(), address.getAddressLine2(), address.getCity(),
										address.getPostcode(), address.getState(), address.getCountry(), 
										address.getPhoneNumber(), address.getCustomerId(), address.getAddressType());
		assertEquals(i, 1);
	}
	
	//Book Controller
	@Test
	public void testLoadBookIds() {
		assertEquals(bc.loadBookIds(cartItems), cartItemIds);
	}
	
	@Test
	public void testFindBookById() {
		bookId = 2;
		assertEquals(bc.findBookById(books, bookId), b2);
	}
	
	@Test
	public void testFindBookInCart() {
		bookId = 2;
		assertTrue(bc.findBookInCart(cartItemIds, bookId));
	}
	
	@Test
	public void testRemoveBookById() {
		bookId = 3;
		ArrayList<Book> test = new ArrayList(Arrays.asList(b0, b1, b2, b4, b2));
		assertEquals(bc.removeBookById((ArrayList<Book>) books, bookId), test);	
	}
	
	@Test
	public void testBookCounts() {
		assertEquals(bc.bookCounts(bookIds), map);
	}
	
	@Test
	public void testFilteredBookList() {
		assertEquals(bc.filteredBookList(books, map), books);
	}
	
	//Purchase
	@Test
	public void testGetPurchaseId() {
		assertEquals(p.getPurchaseId(), 0);
	}
	
	@Test
	public void testGetBookIdPurchase() {
		assertEquals(p.getBookIdPurchase(), 318);
	}
	
	@Test
	public void testSetBookIdPurchase() {
		p.setBookIdPurchase(50);
		assertEquals(p.getBookIdPurchase(), 50);
	}
	
	@Test
	public void testGetCustomerIdPurchase() {
		assertEquals(p.getCustomerIdPurchase(), 18);
	}
	
	@Test
	public void testSetCustomerIdPurchase() {
		p.setCustomerIdPurchase(400);
		assertEquals(p.getCustomerIdPurchase(), 400);
	}
	
	@Test
	public void testGetDate() {
		assertEquals(os.findByCustomerId(18).get(0).getDate(), purchases.get(0).getDate());
	}
	
	@Test
	public void testSetDate() {
		Date date = new Date();
		p.setDate(date);
		assertEquals(p.getDate(), date);
	}
	
	@Test
	public void testGetQuantity() {
		assertEquals(p.getQuantity(), 7);
	}
	
	@Test
	public void testSetQuantity() {
		p.setQuantity(40);
		assertEquals(p.getQuantity(), 40);
	}
	
	@Test
	public void testPurchaseToString() {
		assertEquals(p.toString(), "Purchase{bookIdPurchase=318, customerIdPurchase=18, date=" + p.getDate() + ", quantity=7}");
	}
	
	//Customer
	@Test
	public void testGetCustomerId() {
		assertEquals(c.getCustomerId(), 65);
	}
	
	@Test
	public void testGetFirstName() {
		assertEquals(c.getFirstName(), "Lilllie");
	}
	
	@Test
	public void testSetFirstName() {
		c.setFirstName("Sally");
		assertEquals(c.getFirstName(), "Sally");
	}
	
	@Test
	public void testGetLastName() {
		assertEquals(c.getLastName(), "Herety");
	}
	
	@Test
	public void testSetLastName() {
		c.setLastName("Smith");
		assertEquals(c.getLastName(), "Smith");
	}
	
	@Test
	public void testGetEmail() {
		assertEquals(c.getEmail(), "lherety1s@youtube.com");
	}
	
	@Test
	public void testSetEmail() {
		c.setEmail("test@gmail.com");
		assertEquals(c.getEmail(), "test@gmail.com");
	}
	
	@Test
	public void testGetPassword() {
		assertEquals(c.getPassword(), "wU4ioNhIC");
	}
	
	@Test
	public void testSetPassword() {
		c.setPassword("password");
		assertEquals(c.getPassword(), "password");
	}
	
	@Test
	public void testCustomerToString() {
		assertEquals(c.toString(), "Customer [customerId=65, firstName=Lilllie, lastName=Herety, email=lherety1s@youtube.com, password=wU4ioNhIC]");
	}
	
}

package com.qa;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.qa.controllers.BookController;
import com.qa.models.Book;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ElsevierProjectApplicationTests {
	private BookController bc;
	ArrayList<Book> cartItems;
	ArrayList<Integer> cartItemIds;
	ArrayList<Book> books;
	//Iterable<Book> books;
	ArrayList<Integer> bookIds;
	int bookId;
	Book b0, b1, b2, b3, b4;
	Map<Integer, Integer> map;
	
	@Before
	public void setUp() {
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
		assertEquals(bc.removeBookById(books, bookId), test);	
	}
	
	@Test
	public void testBookCounts() {
		assertEquals(bc.bookCounts(bookIds), map);
	}
	
	@Test
	public void testFilteredBookList() {
		assertEquals(bc.filteredBookList(books, map), books);
	}

}

package com.qa.services;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.qa.models.Book;

@Repository
public interface BookService extends CrudRepository<Book, Integer>{

	//add book to cart
	//remove book from cart
	//get book
	//update book
	//add book to DB
	//delete book from DB
	//get book details
	
/*
SELECT b FROM book b
INNER JOIN book_authors ba on b.book_id = ba.book_book_id
INNER JOIN author a ON ba.authors_author_id = a.author_id
WHERE a.author_name LIKE 'Aili Paula'
 */
	@Query("SELECT b FROM Book b INNER JOIN BookAuthors ba on b.bookId = ba.book_book_id INNER JOIN Author a ON ba.authors_author_id = a.authorId WHERE UPPER(a.authorName) LIKE UPPER(:searchterm)")
	public List<Book> searchBookByAuthor(@Param("searchterm")String searchterm);
	
	@Query("SELECT b FROM Book b WHERE UPPER(b.eBookISBN) LIKE UPPER(:searchTerm) OR UPPER(b.paperISBN) LIKE UPPER(:searchTerm) OR UPPER(b.publisher) LIKE UPPER(:searchTerm) OR UPPER(b.title) LIKE UPPER(:searchTerm) OR UPPER(b.description) LIKE UPPER(:searchTerm)")
	public List<Book> searchBooks(@Param("searchTerm") String searchTerm);
}

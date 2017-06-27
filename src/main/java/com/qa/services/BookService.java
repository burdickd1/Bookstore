package com.qa.services;


import org.springframework.data.repository.CrudRepository;
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
	//
}

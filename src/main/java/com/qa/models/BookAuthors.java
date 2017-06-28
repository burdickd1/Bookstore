package com.qa.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "book_authors")
public class BookAuthors {
	@Id
	@GeneratedValue
	private int id;
	@OneToOne
	@JoinColumn(name="book_id")
	private Book book;
	@OneToOne
	@JoinColumn(name="author_id")
	private Author author;

	
	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}
	
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
}

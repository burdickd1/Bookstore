package com.qa.models;

import java.util.*;
import javax.persistence.*;

@Entity
public class Purchase {


    @Id
    private int test;

	private int bookIdPurchase;

	private int customerIdPurchase;

	private Date date;

	private int quantity;

    public int getTest() {
        return test;
    }

    public void setTest(int test) {
        this.test = test;
    }

    public int getBookIdPurchase() {
        return bookIdPurchase;
    }

    public void setBookIdPurchase(int bookIdPurchase) {
        this.bookIdPurchase = bookIdPurchase;
    }

    public int getCustomerIdPurchase() {
        return customerIdPurchase;
    }

    public void setCustomerIdPurchase(int customerIdPurchase) {
        this.customerIdPurchase = customerIdPurchase;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Purchase{" +
                        "bookIdPurchase=" + bookIdPurchase +
                        ", customerIdPurchase=" + customerIdPurchase +
                        ", date=" + date +
                        ", quantity=" + quantity +
                        '}';
    }
}

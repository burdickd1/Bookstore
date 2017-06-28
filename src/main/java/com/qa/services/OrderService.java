package com.qa.services;

import java.util.*;
import com.qa.models.*;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.*;
import org.springframework.data.repository.query.*;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderService extends CrudRepository<Purchase, Integer>{
    @Query("select p from Purchase p where p.customer_id_purchase = :customerId")
	public List<Purchase> findByCustomerId(@Param("customerId") int customerId);
}


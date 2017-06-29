package com.qa.repositories;

import java.util.*;
import com.qa.models.*;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.*;
import org.springframework.data.repository.query.*;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends CrudRepository<Purchase, Integer>{
    @Query("select p from Purchase p where p.customerIdPurchase = :customerId")
	public List<Purchase> findByCustomerId(@Param("customerId") int customerId);
}


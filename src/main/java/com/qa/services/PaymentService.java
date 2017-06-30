package com.qa.services;

import java.util.List;

import javax.transaction.*;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.qa.models.PaymentInfo;

@Repository
public interface PaymentService extends CrudRepository<PaymentInfo, Integer>{

}
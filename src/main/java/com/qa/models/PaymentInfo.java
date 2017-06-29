package com.qa.models;

import javax.persistence.*;

@Entity
public class PaymentInfo {
	
	int paymentInfoId, customerIdPayment, addressIdPayment, expireYear, expireMonth, creditCardNum;
	
	@Id
	@GeneratedValue
	public int getPaymentInfoId() {
		return this.paymentInfoId;
	}
	
	public void setPaymentInfoId(int paymentInfoId) {
		this.paymentInfoId = paymentInfoId;
	}
	
	public int getCustomerId() {
		return customerIdPayment;
	}
	public void setCustomerId(int customerId) {
		this.customerIdPayment = customerId;
	}
	public int getAddressId() {
		return addressIdPayment;
	}
	public void setAddressId(int addressId) {
		this.addressIdPayment = addressId;
	}
	public int getExpYear() {
		return expireYear;
	}
	public void setExpYear(int expYear) {
		this.expireYear = expYear;
	}
	public int getExpMonth() {
		return expireMonth;
	}
	public void setExpMonth(int expMonth) {
		this.expireMonth = expMonth;
	}
	public long getCreditCardNum() {
		return creditCardNum;
	}
	public void setCreditCardNum(int creditCardNum) {
		this.creditCardNum = creditCardNum;
	}

	@Override
	public String toString() {
		return "PaymentInfo [paymentInfoId=" + paymentInfoId + ", customerIdPayment=" + customerIdPayment
				+ ", addressIdPayment=" + addressIdPayment + ", expireYear=" + expireYear + ", expireMonth="
				+ expireMonth + ", creditCardNum=" + creditCardNum + "]";
	}
	

	
}

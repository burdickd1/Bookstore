package com.qa.models;

import javax.persistence.*;

@Entity
public class PaymentInfo {
	
	int paymentInfoId;
	int customerpaymentId;
	int addresspaymentId;
	int cardNumber;
	int expireYear;
	int expireMonth;
	int cvv;
	
	@Id
	@GeneratedValue
	public int getPaymentInfoId() {
		return this.paymentInfoId;
	}
	
	public void setPaymentInfoId(int paymentInfoId) {
		this.paymentInfoId = paymentInfoId;
	}
	
	public int getCustomerpaymentId() {
		return customerpaymentId;
	}
	public void setCustomerpaymentId(int customerpaymentId) {
		this.customerpaymentId = customerpaymentId;
	}
	public int getAddresspaymentId() {
		return addresspaymentId;
	}
	public void setAddresspaymentId(int addresspaymentId) {
		this.addresspaymentId = addresspaymentId;
	}
	public int getExpireYear() {
		return expireYear;
	}
	public void setExpireYear(int expYear) {
		this.expireYear = expYear;
	}
	public int getExpireMonth() {
		return expireMonth;
	}
	public void setExpireMonth(int expMonth) {
		this.expireMonth = expMonth;
	}
	public long getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(int cardNumber) {
		this.cardNumber = cardNumber;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	@Override
	public String toString() {
		return "PaymentInfo{" +
						"paymentInfoId=" + paymentInfoId +
						", customerpaymentId=" + customerpaymentId +
						", addresspaymentId=" + addresspaymentId +
						", cardNumber=" + cardNumber +
						", expireYear=" + expireYear +
						", expireMonth=" + expireMonth +
						", cvv=" + cvv +
						'}';
	}

}

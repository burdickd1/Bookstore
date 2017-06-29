package com.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Address;
import com.qa.models.Customer;
import com.qa.services.AddressService;

@Controller
@SessionAttributes(names = { "logged_in_customer" })
public class AddressBookController {

	@Autowired
	private AddressService addressService;

	@RequestMapping("/updateAddress")
	public ModelAndView updateAddress(@ModelAttribute("logged_in_customer") Customer loggedInCustomer,
			@ModelAttribute Address address) {

		ModelAndView modelAndView = null;

		Address bAddress = addressService.findAddressByType(loggedInCustomer.getCustomerId(), "billing");
		Address sAddress = addressService.findAddressByType(loggedInCustomer.getCustomerId(), "shipping");

		Address new_billing = null;
		Address new_shipping = null;

		if (bAddress == null) {
			new_billing = new Address();
			new_billing.validate();
			new_billing.setAddressType("billing");
			new_billing.setCustomerId(loggedInCustomer.getCustomerId());
			addressService.save(new_billing);
		}

		if (sAddress == null) {
			new_shipping = new Address();
			new_shipping.validate();
			new_shipping.setAddressType("shipping");
			new_shipping.setCustomerId(loggedInCustomer.getCustomerId());
			addressService.save(new_shipping);
		}

		if (bAddress != null || sAddress != null) {

			int recordsUpdated = addressService.updateBillingAddress(address.getAddressLine1(),
					address.getAddressLine2(), address.getCity(), address.getPostcode(), address.getState(),
					address.getCountry(), address.getPhoneNumber(), loggedInCustomer.getCustomerId(),
					address.getAddressType());

			Address billingAddress = addressService.findAddressByType(loggedInCustomer.getCustomerId(), "billing");
			Address shippingAddress = addressService.findAddressByType(loggedInCustomer.getCustomerId(), "shipping");

			if (recordsUpdated > 0) {
				modelAndView = new ModelAndView("redirect:updateAddress", "billing_address", billingAddress);
				modelAndView.addObject("shipping_address", shippingAddress);
			} else {
				modelAndView = new ModelAndView("address_book", "billing_address", billingAddress);
				modelAndView.addObject("shipping_address", shippingAddress);

			}

		} else {
			modelAndView = new ModelAndView("address_book", "billing_address", new_billing);
			modelAndView.addObject("shipping_address", new_shipping);
		}

		return modelAndView;
	}

}

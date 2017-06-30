package com.qa.controllers;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
@SessionAttributes(names = { "logged_in_customer" })
@Controller
public class CCCErrorController  implements ErrorController{
	private static final String PATH = "/error";
	
	@RequestMapping(value = PATH)
	public ModelAndView errorz(){
		return new ModelAndView(PATH);
	}
	
	@Override
	public String getErrorPath() {
		return PATH;
	}

}

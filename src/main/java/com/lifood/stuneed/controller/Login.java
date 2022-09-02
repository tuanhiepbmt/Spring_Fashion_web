package com.lifood.stuneed.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class Login {
	@GetMapping("/login")
	public ModelAndView login()
	{
		return new ModelAndView("views/login");
	}
}

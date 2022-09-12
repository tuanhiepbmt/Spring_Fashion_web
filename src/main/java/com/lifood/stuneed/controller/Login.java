package com.lifood.stuneed.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lifood.stuneed.dto.OriginDTO;
import com.lifood.stuneed.service.IOriginService;

@RestController
public class Login {

	@Autowired
	private IOriginService iOriginService;
	
	@GetMapping("/login")
	public ModelAndView login()
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null || authentication instanceof AnonymousAuthenticationToken) {
			return new ModelAndView("views/login");
		}
		else
			return new ModelAndView("redirect:/");
	}
}

package com.lifood.stuneed.controller.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.lifood.stuneed.service.impl.UserService;
@EnableAutoConfiguration
@RestController
public class home_products {

	@Autowired
	private UserService userService;
	
	@GetMapping({"/home","/"})
	public ModelAndView display(ModelMap model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    model.addAttribute("user", userService.findByEmail(authentication.getName()).get(0));
		    return new ModelAndView("views/client/home", model);
		}else {
			return new ModelAndView("views/client/home");
		}
	}
}

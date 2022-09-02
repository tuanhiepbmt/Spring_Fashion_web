package com.lifood.stuneed.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping({"/home","/"})
	public String display() {
		return "views/client/home";
	}
}

package com.krms4u.api.web.pages;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String getHomePage() {
		return "index";
	}
	@GetMapping("/loginForm")
	public String getLogin() {
		return "loginForm";
	}
	
}

package com.fdx.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value = "/*")
@Controller
public class HomeController {
	
	@RequestMapping(value = "home")
	public String join() {
		
		return "mainPage/home";
	}
	
	
	@RequestMapping(value = "board")
	public String board() {
		
		return "main/board";
	}

}

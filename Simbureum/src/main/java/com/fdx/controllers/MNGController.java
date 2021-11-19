package com.fdx.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MNGController {
	
	@RequestMapping(value = "/MNGhome")
	public String MNGhome() {
		
		return "Manager/MNGhome";
	}




	@RequestMapping(value = "/MNGmypage")
	public String MNGmypage() {
		
		return "Manager/MNGmypage";
	}

}

package com.fdx.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value = "/*")
@Controller
public class JoinController {

	@RequestMapping(value = "join")
	public String join() {
		
		return "join/joineUs";
	}
}
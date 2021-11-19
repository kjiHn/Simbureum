package com.fdx.controllers;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fdx.dto.PostDto;
import com.fdx.services.PostService;
import com.fdx.services.Vlntr_RvService;


@Controller
@RequestMapping("")
public class ReviewController {
	
	
	@Autowired
	private Vlntr_RvService vlservice;
	
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public String write(Model model) {
		model.addAttribute("post", new PostDto());
		return "/review";
	}
	
	
	
}

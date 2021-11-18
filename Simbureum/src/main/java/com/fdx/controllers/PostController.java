package com.fdx.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fdx.dto.PostDto;
import com.fdx.services.PostService;

@Controller
public class PostController {

	@Autowired
	private PostService postService;
	
	@RequestMapping(value="/main/writePost", method=RequestMethod.GET)
	public String write(Model model) {
		model.addAttribute("post", new PostDto());
		return "main/writePost";
	}
	
	@RequestMapping(value="/main/writePost", method=RequestMethod.POST)
	public String write(PostDto post) {
		postService.write(post);
		return "redirect:/main";
	}
}

package com.fdx.controllers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fdx.dto.PostDto;
import com.fdx.services.PostService;

@Controller
public class PostController {

	@Inject
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
	
	@RequestMapping(value="/main/postPage")
	public String showPost(Model model) {
		model.addAttribute("postList", postService.allPost());
		return "main/postPage";
	}
	
	//위치 필터링 Ajax
	@ResponseBody
	@RequestMapping(value="/main/locFilter", method =RequestMethod.GET)
	public List<PostDto> locFilter(@RequestParam(value="catNum")int psmallc){
		List<PostDto> postList = postService.selByLoc(psmallc);
		return postList;
	}}

package com.fdx.controllers;




import javax.inject.Inject;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import com.fdx.services.Vlntr_RvService;


@Controller
@RequestMapping("/review/*")
public class ReviewController {
	
	
	@Inject
	private Vlntr_RvService vlservice;
	
	/*
	 * @RequestMapping(value="/review", method=RequestMethod.GET) public String
	 * write(Model model) { model.addAttribute("post", new PostDto()); return
	 * "/review"; }
	 */
	
	/*
	 * @RequestMapping(value = "/reviewList", method = RequestMethod.GET) public
	 * void allwList(Model model) throws Exception { model.addAttribute("allList",
	 * vlservice.reviewList());
	 * 
	 * 
	 * }
	 */
	//받은 리뷰 조회 
	@RequestMapping(value = "/receiveList", method = RequestMethod.GET)
	public void receiveList(Model model) throws Exception {
		model.addAttribute("receiveList", vlservice.receiveList());
		
	}	
	
	
	@RequestMapping(value = "/reList", method = RequestMethod.GET)
	public void reList(Model model, @RequestParam(value = "post_num_pk") int post_num_pk) throws Exception {
		model.addAttribute("reList",vlservice.reList(post_num_pk));
	}
	
	
	
	
	
	/* 작성한 리뷰 조회 */
	@RequestMapping(value = "/writeList", method = RequestMethod.GET)
	public void writeList(Model model) throws Exception {
		model.addAttribute("writeList", vlservice.writeList());
		
	}
	
	
	@RequestMapping(value = "/wrList", method = RequestMethod.GET)
	public void wrList(Model model, @RequestParam(value = "post_num_pk") int post_num_pk) throws Exception {
		model.addAttribute("wrList",vlservice.wrList(post_num_pk));
	}
	
	
	
	@RequestMapping(value = "/wreUpdate", method = RequestMethod.GET)
	public void wreUpdate(Model model) throws Exception {
		model.addAttribute("wreUpdate");
	}
	
	@RequestMapping(value = "/wreUpdate", method = RequestMethod.POST)
	public void wreUpdatePOST(Model model) throws Exception {
		model.addAttribute("wreUpdate");
	}
	
}

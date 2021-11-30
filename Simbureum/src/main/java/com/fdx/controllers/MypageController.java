package com.fdx.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fdx.dto.MypageDTO;
import com.fdx.services.MypageService;

@Controller
@RequestMapping(value = "/mypage/*")
public class MypageController {
	
	
	@Autowired
	public MypageService mypageService;
	
	@RequestMapping(value ="/upPost")
	public String myUploadPage(@RequestParam(value = "mb_num_pk") int mb_num_pk, 
								Model model) {
		List<MypageDTO> list = mypageService.myUploadPost(mb_num_pk);
		model.addAttribute("myList", list);
		return "mypage/myUploadPost";
		
	}
	
	@RequestMapping(value ="/supPost")
	public String mySupportPage(@RequestParam(value = "mb_num_pk") int mb_num_pk, 
			Model model) {
		List<MypageDTO> list = mypageService.mySupPost(mb_num_pk);
		model.addAttribute("myList", list);
		return "mypage/supportErrand";
		
	}
	@RequestMapping(value ="/endPost")
	public String myFinshPage(@RequestParam(value = "mb_num_pk") int mb_num_pk, 
								Model model) {
		List<MypageDTO> list = mypageService.myFinshPost(mb_num_pk);
		model.addAttribute("myList", list);
		return "mypage/myFinshPage";
		
	}
	
	@RequestMapping(value ="/supPostDel")
	public void supPostDel(@RequestParam(value = "mb_num_pk") int mb_num_pk,
			@RequestParam(value = "post_num_pk") int post_num_pk,
								Model model) {
		
		
		
	}

}

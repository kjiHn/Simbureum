package com.fdx.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;
import com.fdx.dto.PageMaker;
import com.fdx.services.MypageService;

@Controller
@RequestMapping(value = "/mypage/*")
public class MypageController {
	
	
	@Autowired
	public MypageService mypageService;
	
	@RequestMapping(value ="/upPost")
	public String myUploadPage(@RequestParam(value = "mb_num_pk") int mb_num_pk,
								@ModelAttribute Criteria cri, 
								Model model) {
		cri.setMb_num_pk(mb_num_pk);
		List<MypageDTO> list = mypageService.myUploadPost(cri);
		model.addAttribute("myList", list);
		int total = mypageService.uptotalPage(cri);
		System.out.println(total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		
		return "mypage/myUploadPost";
		
	}
	
	@RequestMapping(value ="/supPost")
	public String mySupportPage(@RequestParam(value = "mb_num_pk") int mb_num_pk 
			,@ModelAttribute Criteria cri, 
			Model model) {
		cri.setMb_num_pk(mb_num_pk);
		List<MypageDTO> list = mypageService.mySupPost(cri);
		model.addAttribute("myList", list);
		int total = mypageService.suptotalPage(cri);
		System.out.println(total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		
		return "mypage/supportErrand";
		
	}
	@RequestMapping(value ="/endPost")
	public String myFinshPage(@RequestParam(value = "mb_id") String mb_id
			,@ModelAttribute Criteria cri, 
								Model model) {
		
		cri.setMb_id(mb_id);
		List<MypageDTO> list = mypageService.myFinshPost(cri);
		model.addAttribute("myList", list);
		
		int total = mypageService.finshtotalPage(cri);
		System.out.println(total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		return "mypage/myFinshPage";
		
	}
	
	@RequestMapping(value ="/supPostDel", method = RequestMethod.POST)
	@ResponseBody
	public int supPostDel(@RequestParam(value = "mb_num_pk" ,required=true) int mb_num_pk,
			@RequestParam(value = "post_num_pk" ,required=true) int post_num_pk,
								Model model) {
		int num = 0;
		MypageDTO dto = new MypageDTO();
		dto.setMb_num_pk(mb_num_pk);
		dto.setPost_num_pk(post_num_pk);
		
		num = mypageService.supDel(dto);
		return num;
	}

}

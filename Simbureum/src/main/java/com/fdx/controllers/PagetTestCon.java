package com.fdx.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fdx.dto.Criteria;
import com.fdx.dto.PageMaker;
import com.fdx.services.PageMakerService;

@Controller
public class PagetTestCon {
	
	@Autowired
	private PageMakerService pageMakerService;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String pageing(@RequestParam(value = "pageNum",defaultValue = "1" ) int pageNum,
			@RequestParam(value = "amount", defaultValue = "1" ) int amount,
			@RequestParam(value = "mb_num_pk", defaultValue = "1" ) int mb_num_pk
			, Model model) {
		Criteria cri = new Criteria(pageNum, amount,mb_num_pk);
		model.addAttribute("list", pageMakerService.getListWithPageing(cri));
		
		int total = pageMakerService.getTotal(cri);
		System.out.println(total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		
		return "test";
		
		
	}

}

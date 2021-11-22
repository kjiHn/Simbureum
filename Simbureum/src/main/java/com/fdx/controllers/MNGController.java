package com.fdx.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fdx.manager.ManagerDao;

@Controller
public class MNGController {
	
	@Autowired
	ManagerDao managerDao;
	
	@RequestMapping(value = "/MNGhome")
	public String MNGhome() {
		
		return "Manager/MNGhome";
	}




	@RequestMapping(value = "/MNGmypage")
	public String MNGmypage(Model model) {
		List<Object/* 내가만든DTO명 */> report = managerDao.selectList();
		System.out.println(report);
		model.addAttribute("city", report);
		return "Manager/MNGmypage";
	}

}

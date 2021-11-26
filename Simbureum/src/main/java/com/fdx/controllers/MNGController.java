package com.fdx.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fdx.dao.ManagerDao;
import com.fdx.dto.managerDTO;



@Controller
public class MNGController {
	
	@Autowired
	ManagerDao managerDao;
	
	@RequestMapping(value = "/MNGhome")
	public String MNGhome() {
		
		return "Manager/MNGhome";
	}




	@RequestMapping(value = "/MNGrptboard")
	public String MNGrptboard(Model model) {
		int a = 1;
		List<managerDTO> report = managerDao.selectList(a);
		System.out.println(report);
		model.addAttribute("report", report);
		return "Manager/MNGrptboard";
	}
	
	
	
	  @RequestMapping(value = "/MNGrvboard") public String MNGrvboard() {
	  
	  return "Manager/MNGrvboard"; }
	 
	
	
	@RequestMapping(value = "/MNGntcboard")
	public String MNGntcboard() {
		
		return "Manager/MNGntcboard";
	}
	
	@RequestMapping(value = "/MNGancboard")
	public String MNGancboard() {
		
		return "Manager/MNGancboard";
	}

	@RequestMapping(value = "/MNGuserboard")
	public String MNGuserboard() {
		
		return "Manager/MNGuserboard";
	}
	
	@RequestMapping(value = "/MNGmodal")
	public String MNGmodal() {
		
		return "Manager/MNGmodal";
	}

}

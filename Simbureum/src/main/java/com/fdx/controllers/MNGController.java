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
	
	//매니저 홈 화면
	@RequestMapping(value = "/MNGhome")
	public String MNGhome() {
		
		return "Manager/MNGhome";
	}
	//게시글 보는화면
	@RequestMapping(value = "/MNGntcboard")
	public String MNGntcboard(Model model) {
		int a = 1;
		List<managerDTO> post = managerDao.selectList(a);
		System.out.println(post);
		model.addAttribute("post", post);
	
		
		return "Manager/MNGntcboard"; 
	}
	
	//게시글 클릭시 상세 화면
	@RequestMapping(value = "/MNGntcboard2")
	public String MNGntcboard3() {
		
		return "Manager/MNGntcboard2";
	}
	
	//공지 보기
	@RequestMapping(value = "/MNGancboard")
	public String MNGancboard(Model model) {
		int a = 1;
		List<managerDTO> announce = managerDao.selectList1(a);
		System.out.println(announce);
		model.addAttribute("announce", announce);
		
		return "Manager/MNGancboard";
	}
	//공지 상세 보기
	@RequestMapping(value = "/MNGannounce")
	public String MNGannounce(Model model) {
		int a = 1;
		List<managerDTO> announce = managerDao.selectList1(a);
		System.out.println(announce);
		model.addAttribute("announce", announce);
		
		return "Manager/MNGannounce";
	}
	//회원 관리 메인 페이지
	@RequestMapping(value = "/MNGuserboard")
	public String MNGuserboard() {
		
		return "Manager/MNGuserboard";
	}
	
	
	
	//신고된 게시글
	@RequestMapping(value = "/MNGrptboard")
	public String MNGrptboard(Model model) {
		int a = 1;
		List<managerDTO> reportpost = managerDao.selectList2(a);
		System.out.println(reportpost);
		model.addAttribute("reportpost", reportpost);
		return "Manager/MNGrptboard";
	}
	
	@RequestMapping(value = "/MNGrvboard")
	public String MNGrvboard() {
		
		return "Manager/MNGrvboard"; 
	}
	
	
	
	
	/*
	 * @RequestMapping(value = "/USERancboard") public String USERancboard(Model
	 * model) { int a = 1; List<managerDTO> announce = managerDao.selectList(a);
	 * System.out.println(announce); model.addAttribute("announce", announce);
	 * 
	 * return "Manager/USERancboard"; }
	 */
	
	
	
	
	
	

}

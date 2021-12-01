package com.fdx.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping(value = "/MNGntcboard", method = RequestMethod.GET)
	public String MNGntcboard(Model model) {
		
		List<managerDTO> post = managerDao.selectList();
		model.addAttribute("post", post);
	
		return "Manager/MNGntcboard";
	}
	
	//게시글 클릭시 상세 화면
	@RequestMapping(value = "/MNGntcboardDetail", method = RequestMethod.GET)
	public String MNGntcboardDetail(@RequestParam("post_num_pk") int post_num_pk, Model model) throws Exception {
		
		managerDTO postDetail = managerDao.postDetail(post_num_pk);
		
		model.addAttribute("postDetail", postDetail);
		
		return "Manager/MNGntcboardDetail";
	}
	
	//공지 보기
	@RequestMapping(value = "/MNGancboard", method = RequestMethod.GET)
	public String MNGancboard(Model model) {
		
		List<managerDTO> announce = managerDao.announce();
		model.addAttribute("announce", announce);
		
		return "Manager/MNGancboard";
	}

	
	// 공지 상세 보기
	@RequestMapping(value = "/MNGancboardDetail", method = RequestMethod.GET)
	public String MNGannounceDetail(@RequestParam("ntc_num_pk") int ntc_num_pk, Model model) throws Exception {

		managerDTO announceDetail = managerDao.announceDetail(ntc_num_pk);
		model.addAttribute("announceDetail", announceDetail);

		return "Manager/MNGancboardDetail";
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

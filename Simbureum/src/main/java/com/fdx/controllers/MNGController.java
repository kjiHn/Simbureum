package com.fdx.controllers;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;

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

	// 매니저 홈 화면
	@RequestMapping(value = "/MNGhome")
	public String MNGhome() {

		return "Manager/MNGhome";
	}

	// 게시글 보는화면
	@RequestMapping(value = "/MNGntcboard", method = RequestMethod.GET)
	public String MNGntcboard(Model model) {

		List<managerDTO> post = managerDao.selectList();
		model.addAttribute("post", post);
		System.out.println(post);
		return "Manager/MNGntcboard";
	}

	// 게시글 클릭시 상세 화면
	@RequestMapping(value = "/MNGntcboardDetail", method = RequestMethod.GET)
	public String MNGntcboardDetail(@RequestParam("post_num_pk") int post_num_pk, Model model) throws Exception {

		managerDTO postDetail = managerDao.postDetail(post_num_pk);
		model.addAttribute("postDetail", postDetail);
		return "Manager/MNGntcboardDetail";
	}

	// 게시글 클릭시 삭제

	@RequestMapping(value = "/postdelete", method = RequestMethod.GET)
	public String postdelete(@RequestParam("post_num_pk") int post_num_pk, Model model) throws Exception {
		managerDao.postdelete(post_num_pk);
		return "redirect:/MNGntcboard";
	}

	// 공지 보기
	@RequestMapping(value = "/MNGancboard", method = RequestMethod.GET)
	public String MNGancboard(Model model) {

		List<managerDTO> announce = managerDao.announce();
		model.addAttribute("announce", announce);

		return "Manager/MNGancboard";
	}


	// 공지 작성(버튼 클릭)
	
	  @RequestMapping(value = "/MNGwriteanc", method = RequestMethod.POST)
	  public String MNGwriteancclick() throws Exception {
	  
	  return "Manager/MNGwriteanc";
	  
	  }
	 
	  // 공지 작성(공지 저장)
		
	  @RequestMapping(value = "/MNGwriteancIns", method = RequestMethod.POST)
	  public String MNGwriteanc(@RequestParam(required = true) String post_title,@RequestParam(required = true)String post_con) throws Exception {
		  HashMap<String,Object> map = new HashMap<String,Object>();
		  map.put("title", post_title);
		  map.put("con", post_con);
		  managerDao.writeanc(map);
		  
		 return "redirect:/MNGancboard";
	  
	  }

	// 공지 상세 보기
	@RequestMapping(value = "/MNGancboardDetail", method = RequestMethod.GET)
	public String MNGannounceDetail(@RequestParam("ntc_num_pk") int ntc_num_pk, Model model) throws Exception {

		managerDTO announceDetail = managerDao.announceDetail(ntc_num_pk);
		model.addAttribute("announceDetail", announceDetail);

		return "Manager/MNGancboardDetail";
	}
	
	//공지 수정

		@RequestMapping(value = "/MNGancmodify1", method = RequestMethod.POST)
		public String ancmodify(@RequestParam("ntc_num_pk") int ntc_num_pk,String ntc_title,String ntc_con) throws Exception {

			
			  HashMap<String,Object> map = new HashMap<String,Object>();
			  map.put("ntc_title", ntc_title); map.put("ntc_con", ntc_con);
			  map.put("ntc_num_pk", ntc_num_pk); managerDao.ancmodify(map);
			 
			
			return "redirect:/MNGancboard";
		}
		
		// 공지 수정 페이지 넘어가기
		@RequestMapping(value = "/MNGancmodify", method = RequestMethod.GET)
		public String MNGancmodify(@RequestParam("ntc_num_pk") int ntc_num_pk,Model model) throws Exception {
			managerDTO announceDetail = managerDao.announceDetail(ntc_num_pk);
			model.addAttribute("ancmodify", announceDetail);

			return "Manager/MNGancmodify";
		}
		
		// 공지 삭제

		@RequestMapping(value = "/MNGancdelete", method = RequestMethod.POST)
		public String ancdelete(@RequestParam("ntc_num_pk") int ntc_num_pk) throws Exception {
			managerDao.ancdelete(ntc_num_pk);
			return "redirect:/MNGancboard";
		}
	// 회원 관리 메인 페이지
	@RequestMapping(value = "/MNGuserboard", method = RequestMethod.GET)
	public String MNGuserboard(Model model) {

		List<managerDTO> mnguser = managerDao.selectList1();

		model.addAttribute("mnguser", mnguser);
		return "Manager/MNGuserboard";
	}


	// 회원 탈퇴
		@RequestMapping(value = "/userdelete", method = RequestMethod.POST)
		public String userdelete(@RequestParam("mb_num_pk") int mb_num_pk) throws Exception {
			
			managerDao.userdelete(mb_num_pk); 
			return "redirect:/MNGuserboard";
		}
		
	// 신고된 게시글
		@RequestMapping(value = "/MNGrptboard", method = RequestMethod.GET)
		public String MNGrptboard(@RequestParam("mb_num_pk") int mb_num_pk,Model model) throws Exception {
			
			managerDTO reportpost = managerDao.reportpost(mb_num_pk);
			model.addAttribute("reportpost", reportpost);
			return "Manager/MNGrptboard";
		}
	//신고된 리뷰
	@RequestMapping(value = "/MNGrvboard", method = RequestMethod.GET)
	public String MNGrvboard(@RequestParam("mb_num_pk") int mb_num_pk,Model model) throws Exception {

		managerDTO reportreview = managerDao.reportreview(mb_num_pk);
		model.addAttribute("reportreview", reportreview);
		return "Manager/MNGrvboard";
	}

	// 신고된 게시글 팝업 보기
	@RequestMapping(value = "/MNGPopupPost", method = RequestMethod.GET)
	public String MNGPopupPost(@RequestParam("mb_num_pk") int mb_num_pk, Model model) throws Exception {

		List<managerDTO> popuppost = managerDao.popuppost(mb_num_pk);
		model.addAttribute("popuppost", popuppost);
		return "Manager/MNGPopupPost";
	}

	// 신고된 리뷰 팝업 보기
		@RequestMapping(value = "/MNGPopupReview", method = RequestMethod.GET)
		public String MNGPopupReview(@RequestParam("mb_num_pk") int mb_num_pk, Model model) throws Exception {

			List<managerDTO> popupreview = managerDao.popupreview(mb_num_pk);
			model.addAttribute("popupreview", popupreview);
			return "Manager/MNGPopupReview";
		}
}

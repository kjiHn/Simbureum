package com.fdx.controllers;

import static org.springframework.test.web.client.match.MockRestRequestMatchers.jsonPath;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		int postcount = managerDao.selectList2();
		System.out.println("count : " + postcount);
		List<managerDTO> post = managerDao.selectList();
		model.addAttribute("post", post);
		model.addAttribute("postcount",postcount);
		return "Manager/MNGntcboard";
	}
	
	// 게시글 카운트
		@RequestMapping(value = "/MNGntcboardcount", method = RequestMethod.GET)
		public String MNGntcboardcount(Model model) {

			int postcount = managerDao.selectList2();
			System.out.println(postcount);
			
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
		int announceCount = managerDao.announceCount();
		List<managerDTO> announce = managerDao.announce();
		model.addAttribute("announce", announce);
		model.addAttribute("announceCount", announceCount);

		return "Manager/MNGancboard";
	}

	//회원 공지 보기
	@RequestMapping(value = "/userancboard", method = RequestMethod.GET)
	public String userancboard(Model model) {
		List<managerDTO> userancboard = managerDao.announce();
		model.addAttribute("userancboard", userancboard);
		return "Manager/userancboard";
	}
	
	// 회원 공지 상세 보기
		@RequestMapping(value = "/userancboarddetail", method = RequestMethod.GET)
		public String userancboardDetail(@RequestParam("ntc_num_pk") int ntc_num_pk, Model model) throws Exception {

			managerDTO userancboarddetail = managerDao.announceDetail(ntc_num_pk);
			model.addAttribute("userancboarddetail",userancboarddetail);

			return "Manager/userancboarddetail";
		}

	// 공지 작성(버튼 클릭)
	
	  @RequestMapping(value = "/MNGwriteanc", method = RequestMethod.POST)
	  public String MNGwriteancclick() throws Exception {
	  
	  return "Manager/MNGwriteanc";
	  
	  }
	 
	  // 공지 작성(공지 저장)
		
	  @RequestMapping(value = "/MNGwriteancIns", method = RequestMethod.POST)
	  public String MNGwriteanc(managerDTO manager) throws Exception {
		  
		  managerDao.writeanc(manager);
		  
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

		@RequestMapping(value = "/MNGancdelete", method = RequestMethod.GET)
		public String ancdelete(@RequestParam("ntc_num_pk") int ntc_num_pk) throws Exception {
			managerDao.ancdelete(ntc_num_pk);
			return "redirect:/MNGancboard";
		}
		//회원 관리 페이지
		@RequestMapping(value = "/MNGuserboard", method = RequestMethod.GET)
		public String MNGuserboard(Model model) throws Exception {
			int mnguserCount = managerDao.mnguserCount();
			List<managerDTO> mnguser = managerDao.selectList1();
			model.addAttribute("mnguser", mnguser);
			model.addAttribute("mnguserCount", mnguserCount);
			
			
			 
			return "Manager/MNGuserboard";
		}


	// 회원 탈퇴
		@RequestMapping(value = "/userdelete", method = RequestMethod.POST)
		public String userdelete(@RequestParam("mb_num_pk") int mb_num_pk,@RequestParam(required = true) String fw_name,@RequestParam(required = true)String fw_emaile) throws Exception {
			 HashMap<String,Object> map = new HashMap<String,Object>();
			  map.put("fw_name", fw_name);
			  map.put("fw_emaile", fw_emaile);
			  System.out.println(fw_name);
			  System.out.println(fw_emaile);
			  managerDao.userinsert(map);
			managerDao.userdelete(mb_num_pk); 
			return "redirect:/MNGuserboard";
		}
		

	// 신고된 게시글 보기
		@RequestMapping(value = "/MNGrptboard", method = RequestMethod.GET)
		public String MNGrptboard(managerDTO manager,Model model) throws Exception {
			
			managerDTO reportpost = managerDao.reportpost(manager);
			model.addAttribute("reportpost", reportpost);
			
			return "Manager/MNGrptboard";
		}
	//신고된 고용자 리뷰 보기
	@RequestMapping(value = "/MNGrvboardgyz", method = RequestMethod.GET)
	public String MNGrvboard1(@RequestParam("rerp_mbn") int rerp_mbn,Model model) throws Exception {

		managerDTO gyzreportreview = managerDao.gyzreportreview(rerp_mbn);
		model.addAttribute("gyzreportreview", gyzreportreview);
		return "Manager/MNGrvboardgyz";
	}

	//신고된 심부름꾼 리뷰 보기
		@RequestMapping(value = "/MNGrvboardsbr", method = RequestMethod.GET)
		public String MNGrvboard(@RequestParam("rerp_mbn") int rerp_mbn,Model model) throws Exception {

			managerDTO sbrreportreview = managerDao.sbrreportreview(rerp_mbn);
			model.addAttribute("sbrreportreview", sbrreportreview);
			return "Manager/MNGrvboardsbr";
		}
	
	  // 신고된 게시글 팝업 보기
	  
	  @RequestMapping( value = "/MNGPopupPost", method = RequestMethod.GET) 
	  @ResponseBody
	  public JSONObject MNGPopupPost(@RequestParam("mb_num_pk") int mb_num_pk, Model model) throws Exception {
	  
	  List<managerDTO> popuppost = managerDao.popuppost(mb_num_pk);	
      JSONObject finalJsonObject1 = new JSONObject(); // 중괄호로 감싸 대괄호의 이름을 정의함 { "c" : [{  "a" : "1", "b" : "2" }] }
      finalJsonObject1.put("data", popuppost);
      System.out.println(finalJsonObject1.toString());
	  return finalJsonObject1;
 
	  }
	  
	  // 신고된 리뷰 팝업 보기
	  
	  @RequestMapping(value = "/MNGPopupReview", method = RequestMethod.GET)
	  @ResponseBody
	  public JSONObject MNGPopupReview(managerDTO manager, Model model) throws Exception {
	  
	  
	  List<managerDTO> popupreview = managerDao.popupreview(manager);
      JSONObject finalJsonObject1 = new JSONObject(); // 중괄호로 감싸 대괄호의 이름을 정의함 { "c" : [{  "a" : "1", "b" : "2" }] }
      finalJsonObject1.put("", popupreview);
	  return finalJsonObject1; 
	  }
	 
	 
		
		// 신고된 게시글 처리
		@RequestMapping(value = "/repoertpostdelete", method = RequestMethod.GET)
		public String repoertpostdelete(@RequestParam("post_num_pk") int post_num_pk, Model model) throws Exception {
			managerDao.repoertpostdelete(post_num_pk);
			return "redirect:/MNGuserboard";
		} 
		
		// 신고된 게시글 취소
		@RequestMapping(value = "/repoertpostcancle", method = RequestMethod.GET)
		public String repoertpostcancle(@RequestParam("porp_num_pk") int porp_num_pk, Model model) throws Exception {
			managerDao.repoertpostcancle(porp_num_pk);
			return "redirect:/MNGuserboard";
		}
		
		// 신고된 고용자 리뷰 처리
		@RequestMapping(value = "/gyzrepoertreviewdelete", method = RequestMethod.GET)
		public String gyzrepoertreviewdelete(@RequestParam("vr_rvn_pk") int vr_rvn_pk, Model model) throws Exception {
			managerDao.gyzrepoertreviewdelete(vr_rvn_pk);
			return "redirect:/MNGuserboard";
		}
		// 신고된 심부름꾼 리뷰 처리
		@RequestMapping(value = "/sbrrepoertreviewdelete", method = RequestMethod.GET)
		public String sbrrepoertreviewdelete(@RequestParam("er_num_pk") int er_num_pk, Model model) throws Exception {
			managerDao.sbrrepoertreviewdelete(er_num_pk);
			return "redirect:/MNGuserboard";
		}
		
		// 신고된 리뷰 취소
		@RequestMapping(value = "/repoertreviewcancle", method = RequestMethod.GET)
		public String repoertreviewcancle(@RequestParam("rerp_num_pk") int rerp_num_pk, Model model) throws Exception {
			managerDao.repoertreviewcancle(rerp_num_pk);
			return "redirect:/MNGuserboard";
		}

}

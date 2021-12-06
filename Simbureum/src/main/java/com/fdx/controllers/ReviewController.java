package com.fdx.controllers;




import java.util.List;

import javax.inject.Inject;
import javax.mail.Session;
import javax.management.RuntimeErrorException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.fdx.dto.LoginDTO;

import com.fdx.dto.Vlntr_RvDTO;
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
	//고용자가 받은 리뷰 조회 
		@RequestMapping(value = "/receiveList", method = RequestMethod.GET)
		public void page(@RequestParam(value = "vr_mbid") String vr_mbid, Model model) throws Exception {
			model.addAttribute("receiveList", vlservice.receiveList(vr_mbid));
			
//			List<Vlntr_RvDTO> vrdto = null;
//			vrdto = vlservice.page(cri);	
//			
//			model.addAttribute("receiveList", vrdto);				
//			PageMaker pageMaker = new PageMaker();
//			pageMaker.setCri(cri);
//			pageMaker.setTotalCount(vlservice.vrCount(vr_mbid));
//			model.addAttribute("pageMaker",pageMaker);
//		
//			System.out.println(vlservice.vrCount(vr_mbid));
//			System.out.println(pageMaker);
			
		}	
		
		//고용자가 받은 리뷰 자세히 
		@RequestMapping(value = "/reList", method = RequestMethod.GET)
		public void reList(Model model, @RequestParam(value = "vr_rvn_pk") int vr_rvn_pk) throws Exception {
			model.addAttribute("reList",vlservice.reList(vr_rvn_pk));
		}
		
		
		
		
		
//		/* 작성한 리뷰 조회 */
//		@RequestMapping(value = "/writeList", method = RequestMethod.GET)
//		public void writeList(@RequestParam(value="mb_id_pk") String mb_id_pk, Model model) throws Exception {
//			
//			model.addAttribute("writeList",vlservice.writeList(mb_id_pk));
//		}
		
		//심부름꾼이 고용자에게 작성한 리뷰 전체 리스트 
		 @RequestMapping(value = "/writeList", method = RequestMethod.GET) 
		 public void writeListget(@RequestParam(value="mb_id_pk") String mb_id_pk, 
		           				   Model model) throws Exception {	
			 
			    model.addAttribute("writeList", vlservice.writeList(mb_id_pk));
			   
			   
			    
			    
//				List<Vlntr_RvDTO> wrdto = null;
//				wrdto = vlservice.page(cri);			
//				model.addAttribute("wrdto", wrdto);	
//				
//				PageMaker pageMaker = new PageMaker();
//				pageMaker.setCri(cri);
//				pageMaker.setTotalCount(vlservice.listCount(mb_id_pk));
//				System.out.println("listCount : " + vlservice.listCount(mb_id_pk));
//				model.addAttribute("pageMaker",pageMaker);
		 
		 }
		
		 
		
			
//			  @RequestMapping(value = "/writeList", method = RequestMethod.POST) public
//			  String page(@RequestParam(value="mb_id_pk") String mb_id_pk, 
//       				       @ModelAttribute(value = "cri") CriteriaDTO cri, Model model) throws Exception { 
//		      model.addAttribute("writeList", vlservice.writeList(mb_id_pk));
//			  model.addAttribute("writeList", vlservice.writeList(mb_id_pk));
//				List<Vlntr_RvDTO> writeList = null;
//				writeList = vlservice.page(cri);			
//				model.addAttribute("writeList", writeList);
//				
//				PageMaker pageMaker = new PageMaker();
//				pageMaker.setCri(cri);
//				pageMaker.setTotalCount(vlservice.listCount());
//				model.addAttribute("pageMaker",pageMaker);
//			  
//			  return "redirect:/review/writeList";
//			  
//			  }
//			 
		
		@RequestMapping(value = "/wreInsert", method = RequestMethod.GET)
		public void wreInsert(Model model, Vlntr_RvDTO vrdto)  throws Exception {
			model.addAttribute("wreInsert",vrdto);
			
		}
		
		
		//심부름꾼이 고용자에게 작성한 리뷰 자세히
		@RequestMapping(value = "/wrList", method = RequestMethod.GET)
		public void wrListGet(Model model, @RequestParam(value = "vr_rvn_pk") int vr_rvn_pk) throws Exception {
			model.addAttribute("wrList",vlservice.wrList(vr_rvn_pk));
			
		}
		
		//심부름꾼이 고용자아게 작성한 리뷰 수정하기
		@RequestMapping(value = "/wreUpdate", method = RequestMethod.GET)
		public void wreUpdateGet(@RequestParam(value = "vr_rvn_pk", required=false) int vr_rvn_pk, Model model, Vlntr_RvDTO vrdto) throws Exception {
			model.addAttribute(vlservice.wrList(vr_rvn_pk));		
			model.addAttribute("wrList",vlservice.wrList(vr_rvn_pk));
		}
		
		
	  @RequestMapping(value = "/wreUpdate", method = RequestMethod.POST) 
	  public String wreUpdatePOST(Vlntr_RvDTO vrdto, @RequestParam(value = "vr_rvn_pk") int vr_rvn_pk,
			                      @RequestParam(value = "mb_id_pk") String mb_id_pk, Model model, RedirectAttributes redirect) throws Exception {
		  redirect.addAttribute("mb_id_pk",mb_id_pk);
		  vlservice.wreUpdate(vrdto);
		  
	  return "redirect:/review/writeList"; 
	  }
		 
	  
	  //심부름꾼이 작성한 리뷰 삭제 
	  @RequestMapping(value = "/wreDelete", method = RequestMethod.POST) 
	  public String wreDeletePOST(Vlntr_RvDTO vrdto, @RequestParam(value = "vr_rvn_pk") int vr_rvn_pk,
			                      @RequestParam(value = "mb_id_pk") String mb_id_pk, RedirectAttributes redirect) throws Exception {
		  redirect.addAttribute("mb_id_pk",mb_id_pk);
		  vlservice.wreDelete(vr_rvn_pk);
		 
		  
	  return "redirect:/review/writeList" ; 
	  }
	 
	  @ResponseBody
	  @RequestMapping(value = "/ReportCheck", method = RequestMethod.POST)
	  public int ReprotCheck(Model model, Vlntr_RvDTO vrdto) throws Exception {
		  int data = vlservice.ReportCheck(vrdto);
		  return data;
		  
		  
	  }
	  
	  
//	  @RequestMapping(value = "/Report", method = RequestMethod.POST)
//		public String ReportPOST(Model model, Vlntr_RvDTO vrdto, @RequestParam("vr_mbid") String vr_mbid,  RedirectAttributes redirect)  throws Exception {
//		  redirect.addAttribute("vr_mbid",vr_mbid);
//		    vlservice.Report(vrdto);
//			return "redirect:/review/receiveList" ; 
//		}


	  @RequestMapping(value = "/Report", method = RequestMethod.POST)
		public String ReportPOST(Model model, Vlntr_RvDTO vrdto, @RequestParam("vr_mbid") String vr_mbid,  RedirectAttributes redirect)  throws Exception {
		  int data = vlservice.ReportCheck(vrdto);
		  try {
			  if(data == 1) {
				  redirect.addAttribute("vr_mbid",vr_mbid);
				// return "redirect:/review/receiveList";
			  }else if(data == 0) {
				  redirect.addAttribute("vr_mbid",vr_mbid);
				    vlservice.Report(vrdto);
				    return "redirect:/review/receiveList" ; 
			  }
			  
		  }catch (Exception e) {
			// TODO: handle exception
			  throw new RuntimeException();
		}
		  redirect.addAttribute("vr_mbid",vr_mbid);
		  return "redirect:/review/receiveList" ; 
		}

	 
	  
	  
	  
	//고용자가 받은 리뷰 자세히 
	@RequestMapping(value = "/grdAvg", method = RequestMethod.POST)
	public void grdAvg(Model model, @RequestParam(value = "vr_mbid") String vr_mbid) throws Exception {
		
		model.addAttribute("grdAvg",vlservice.grdAvg(vr_mbid));
	}
	  

	  
	  
	  
	  
	  
	  
	  
	  
	  
		
		
	}

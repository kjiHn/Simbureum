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

import com.fdx.dto.Criteria;
import com.fdx.dto.Ern_RvDTO;
import com.fdx.dto.LoginDTO;
import com.fdx.dto.PageMaker;
import com.fdx.dto.Vlntr_RvDTO;
import com.fdx.services.PostService;
import com.fdx.services.Vlntr_RvService;



@Controller
@RequestMapping("/review/*")
public class ReviewController {
	
	 
	@Inject
	private Vlntr_RvService vlservice;
	
	//고용자가 받은 리뷰 조회 
			@RequestMapping(value = "/receiveList", method = RequestMethod.GET)
			public String page(@RequestParam(value = "vr_mbid") String vr_mbid, Model model,
						     @ModelAttribute Criteria cri) throws Exception {
				cri.setVr_mbid(vr_mbid);
				List<Vlntr_RvDTO> list = vlservice.receiveListPaging(cri);
				model.addAttribute("receiveListPaging",list);
				int total = vlservice.retotalPage(cri);
				model.addAttribute("retotalPage",total);
				model.addAttribute("pageMaker",new PageMaker(cri, total));
				 return "/review/receiveList"; 
			}	
		
		//고용자가 받은 리뷰 자세히 
		@RequestMapping(value = "/reList", method = RequestMethod.GET)
		public void reList(Model model, @RequestParam(value = "vr_rvn_pk") int vr_rvn_pk) throws Exception {
			model.addAttribute("reList",vlservice.reList(vr_rvn_pk));
		}
		
	
		  @ResponseBody
		  @RequestMapping(value = "/reInsertCheck", method = RequestMethod.POST)
		  public int reInsertCheck(Model model, Vlntr_RvDTO vrdto) throws Exception {
			  int data = vlservice.reInsertCheck(vrdto);
			  return data;
			  
		  }
		
		
		//심부름꾼이 고용자에게 작성하는 리뷰
		 @RequestMapping(value = "/reInsert", method = RequestMethod.POST) 
		 public String reInsertPOST(Model model, Vlntr_RvDTO vrdto,RedirectAttributes redirect, @RequestParam(value = "mb_id_pk") String mb_id) throws Exception {
			 int data = vlservice.reInsertCheck(vrdto);
			 try {
				  if(data == 1) {
					  redirect.addAttribute("mb_id",mb_id);
					 return "redirect:/mypage/endPost";
				  }else if(data == 0) {
					  redirect.addAttribute("mb_id",mb_id);
					  vlservice.reInsert(vrdto);
					  return "redirect:/mypage/endPost";
				  }
				  
			  }catch (Exception e) {
				// TODO: handle exception
				  throw new RuntimeException();
			}
			  redirect.addAttribute("mb_id",mb_id);
			  return "redirect:/mypage/endPost";
			}
		 
			//심부름꾼이 고용자에게 작성한 리뷰 전체 리스트 
		 @RequestMapping(value = "/writeList", method = RequestMethod.GET) 
		 public String writeListget(@RequestParam(value="mb_id_pk") String mb_id_pk, 
		           				   Model model,  @ModelAttribute Criteria cri) throws Exception {	
			 	cri.setMb_id_pk(mb_id_pk);
				List<Vlntr_RvDTO> list = vlservice.writeListPaging(cri);			
				model.addAttribute("writeListPaging",list);
				int total = vlservice.wrtotalPage(cri);
				model.addAttribute("wrtotalPage",total);
				model.addAttribute("pageMaker",new PageMaker(cri, total));
				 return "/review/writeList"; 
			
		 }
		 
		//심부름꾼이 고용자에게 작성한 리뷰 자세히
		@RequestMapping(value = "/wrList", method = RequestMethod.GET)
		public void wrListGet(Model model, @RequestParam(value = "vr_rvn_pk") int vr_rvn_pk) throws Exception {
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
		model.addAttribute("reviewList",vlservice.receiveList(vr_mbid));
	}
		
		
	}

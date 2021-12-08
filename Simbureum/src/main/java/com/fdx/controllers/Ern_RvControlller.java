package com.fdx.controllers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fdx.dto.Criteria;
import com.fdx.dto.Ern_RvDTO;
import com.fdx.dto.PageMaker;
import com.fdx.dto.Vlntr_RvDTO;
import com.fdx.services.Ern_RvService;

@Controller
@RequestMapping("/Ereview/*")
public class Ern_RvControlller {
	
	@Inject
	private Ern_RvService erser;
	
	//고요자가 리뷰작성
	  @ResponseBody
	  @RequestMapping(value = "/EreInsertCheck", method = RequestMethod.POST)
	  public int reInsertCheck(Model model, Ern_RvDTO erdto) throws Exception {
		  int data = erser.EreInsertCheck(erdto);
		  System.out.println("data :" + data);
		  return data;
	  }
	  
	//고용자가 심부름꾼에게 리뷰 작성
		 @RequestMapping(value = "/EreInsert", method = RequestMethod.POST) 
		 public String EreInsertPOST(Model model, Ern_RvDTO erdto,RedirectAttributes redirect, @RequestParam(value = "mb_num_pk") int mb_num_pk) throws Exception {
			 int data = erser.EreInsertCheck(erdto);
			 try {
				  if(data == 1) {
					  redirect.addAttribute("mb_num_pk",mb_num_pk);
					 return "redirect:/mypage/upPost";
				  }else if(data == 0) {
					  redirect.addAttribute("mb_num_pk",mb_num_pk);
					  erser.EreInsert(erdto);
					  return "redirect:/mypage/upPost";
				  }
				  
			  }catch (Exception e) {
				// TODO: handle exception
				  throw new RuntimeException();
			}
			  redirect.addAttribute("mb_num_pk",mb_num_pk);
			  return "redirect:/mypage/upPost";
			}
		 
	//심부름꾼이 받은 전체 리스트 
		@RequestMapping(value = "/EreceiveList", method = RequestMethod.GET)
		public String ListGET(@RequestParam(value = "er_mbid") String er_mbid, Model model,  @ModelAttribute Criteria cri) throws Exception{
			cri.setEr_mbid(er_mbid);
			List<Ern_RvDTO> list = erser.EreceiveListPaging(cri);
			model.addAttribute("EreceiveListPaging",list);
			int total = erser.EretotalPage(cri);
			model.addAttribute("EretotalPage",total);
			model.addAttribute("pageMaker",new PageMaker(cri, total));
			 return "/Ereview/EreceiveList"; 
				
		}
	
	@RequestMapping(value = "/EreList", method = RequestMethod.GET)
	public void reListGET(Model model, @RequestParam(value = "er_num_pk") int er_num_pk) throws Exception {
		model.addAttribute("EreList",erser.EreList(er_num_pk));
	}
	
	
	  @ResponseBody
	  @RequestMapping(value = "/EReportCheck", method = RequestMethod.POST)
	  public int ReprotCheck(Model model, Ern_RvDTO erdto) throws Exception {
		  int data = erser.EReportCheck(erdto);
		  return data;
		  
		  
	  }
	
	
	
	 @RequestMapping(value = "/EReport", method = RequestMethod.POST)
		public String ReportPOST(Model model, Ern_RvDTO erdto, @RequestParam("er_mbid") String er_mbid,  RedirectAttributes redirect)  throws Exception {
		  redirect.addAttribute("er_mbid",er_mbid);
		    erser.EReport(erdto);
			return "redirect:/Ereview/EreceiveList" ; 
		}
	 
	 	//고용자이 심부름꾼에게 작성한 리뷰 전체 리스트 
	 @RequestMapping(value = "/EwriteList", method = RequestMethod.GET) 
	 public String EwriteListget(@RequestParam(value="mb_id_pk") String mb_id_pk, Model model, @ModelAttribute Criteria cri) throws Exception {
		cri.setMb_id_pk(mb_id_pk);
		List<Ern_RvDTO> list = erser.EwriteListPaging(cri);
		model.addAttribute("EwriteListPaging",list);
		int total = erser.EwrtotalPage(cri);
		model.addAttribute("EwrtotalPage",total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		 return "/Ereview/EwriteList"; 
	 }
	 
	
	 
	//고용자가 심부름꾼에게 작성한 리뷰 자세히
	@RequestMapping(value = "/EwrList", method = RequestMethod.GET)
	public void EwrListGet(Model model, @RequestParam(value = "er_num_pk") int er_num_pk) throws Exception {
		model.addAttribute("EwrList",erser.EwrList(er_num_pk));
		
	}
	
	  //고용자가 작성한 리뷰 삭제 
	  @RequestMapping(value = "/EwreDelete", method = RequestMethod.POST) 
	  public String EwreDeletePOST(Ern_RvDTO erdto, @RequestParam(value = "mb_id_pk") String mb_id_pk,
			  					   @RequestParam(value = "er_num_pk")int er_num_pk, RedirectAttributes redirect) throws Exception {
		  redirect.addAttribute("mb_id_pk",mb_id_pk);
		  erser.EwreDelete(er_num_pk);
		  return "redirect:/Ereview/EwriteList"; 
	  }
	  
	
		
	  @RequestMapping(value = "/EwreUpdate", method = RequestMethod.POST) 
	  public String wreUpdatePOST(@RequestParam(value = "er_num_pk") int er_num_pk, Ern_RvDTO erdto, 
			  					  @RequestParam(value = "mb_id_pk") String mb_id_pk, Model model, RedirectAttributes redirect) throws Exception {
		  redirect.addAttribute("mb_id_pk",mb_id_pk);
		  erser.EwreUpdate(erdto);
		  
		  return "redirect:/Ereview/EwriteList"; 
	  }

}

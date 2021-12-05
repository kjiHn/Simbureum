package com.fdx.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;
import com.fdx.dto.PageMaker;
import com.fdx.dto.PostDto;
import com.fdx.services.MypageService;

@Controller
@RequestMapping(value = "/mypage/*")
public class MypageController {
	
	
	@Autowired
	public MypageService mypageService;
	
	@RequestMapping(value ="/upPost")
	public String myUploadPage(@RequestParam(value = "mb_num_pk") int mb_num_pk,
								@ModelAttribute Criteria cri, 
								Model model) {
		cri.setMb_num_pk(mb_num_pk);
		List<MypageDTO> list = mypageService.myUploadPost(cri);
		model.addAttribute("myList", list);
		int total = mypageService.uptotalPage(cri);
		System.out.println(total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		
		return "mypage/myUploadPost";
		
	}
	
	@RequestMapping(value ="/supPost")
	public String mySupportPage(@RequestParam(value = "mb_num_pk") int mb_num_pk 
			,@ModelAttribute Criteria cri, 
			Model model) {
		cri.setMb_num_pk(mb_num_pk);
		List<MypageDTO> list = mypageService.mySupPost(cri);
		model.addAttribute("myList", list);
		int total = mypageService.suptotalPage(cri);
		System.out.println(total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		
		return "mypage/supportErrand";
		
	}
	@RequestMapping(value ="/endPost")
	public String myFinshPage(@RequestParam(value = "mb_id") String mb_id
			,@ModelAttribute Criteria cri, 
								Model model) {
		
		cri.setMb_id(mb_id);
		List<MypageDTO> list = mypageService.myFinshPost(cri);
		model.addAttribute("myList", list);
		
		int total = mypageService.finshtotalPage(cri);
		System.out.println(total);
		model.addAttribute("pageMaker",new PageMaker(cri, total));
		return "mypage/myFinshPage";
		
	}
	
	@RequestMapping(value ="/supPostDel", method = RequestMethod.POST)
	@ResponseBody
	public int supPostDel(@RequestParam(value = "mb_num_pk" ,required=true) int mb_num_pk,
			@RequestParam(value = "post_num_pk" ,required=true) int post_num_pk,
								Model model) {
		int num = 0;
		MypageDTO dto = new MypageDTO();
		dto.setMb_num_pk(mb_num_pk);
		dto.setPost_num_pk(post_num_pk);
		
		num = mypageService.supDel(dto);
		return num;
	}
	
	//올린 심부름 상세보기
	@RequestMapping(value = "uploadedPostDetail/{post_num_pk}", method = RequestMethod.GET)
	public String writtenPost(@PathVariable("post_num_pk") int postNum, Model model) {
		PostDto post = mypageService.oneWrittenPost(postNum);
		model.addAttribute("post", post);
		return "mypage/uploadedPostDetail";
	}
	
	//지원한 심부름꾼 보기
	@RequestMapping(value = "volunteerList/{post_num_pk}", method = RequestMethod.GET)
	public String showVol(@PathVariable("post_num_pk") int postNum, Model model) {
		int check = mypageService.checkVol(postNum);
		model.addAttribute("checkVol", check);
		if(check == 1) {
			model.addAttribute("postNum", postNum);
			model.addAttribute("numOfVol", mypageService.checkNumOfVol(postNum));
			model.addAttribute("volRe", mypageService.volRe(postNum));
		}
		return "mypage/volunteerList";
	}
	
	//심부름꾼 선택 Ajax
	@RequestMapping(value = "selectedVolunteer", method = RequestMethod.POST)
	public String selectedVolunteer(@RequestParam("postNum") int postNum, @RequestParam("sel_vol") String sel_vr) {
		mypageService.selectedVol(postNum, sel_vr);
		return "mypage/selectedVolunteer";
	}
	
	//심부름 완료 확인
	@RequestMapping(value = "completeProcess/{post_num_pk}", method = RequestMethod.GET)
	public String completeProcess(@PathVariable("post_num_pk") int postNum) {
		return "mypage/completeProcess";
	}
	
	//심부름 완료
	@RequestMapping(value = "completeProcess/{post_num_pk}", method = RequestMethod.POST)
	public String completeAccept(@PathVariable("post_num_pk") int postNum) {
		//심부름 완료 시 심부름꾼 지원 삭제
		mypageService.insertVolHis(postNum);
		return "mypage/completeAccept";
	}
	
	//게시글 삭제
	@RequestMapping(value = "postDelete", method = RequestMethod.POST)
	public String deletePost(@RequestParam("post_num_pk") int postNum, HttpSession session) {
		mypageService.deletePost(postNum);
		int mNum = (int)session.getAttribute("mNum");
		return "redirect:/mypage/upPost?mb_num_pk="+mNum;
	}
	
	//게시글 수정 페이지
	@RequestMapping(value="updatePost/{post_num_pk}", method = RequestMethod.GET)
	public String updatePost(@PathVariable("post_num_pk") int postNum, Model model) {
		model.addAttribute("post", mypageService.oneWrittenPost(postNum));
		return "mypage/updatePost";
	}
	
	//게시글 수정
	@RequestMapping(value="updatePost/{post_num_pk}", method = RequestMethod.POST)
	public String updatePost(@PathVariable("post_num_pk") int postNum, PostDto post) {
		mypageService.updatePost(post);
		return "redirect:/mypage/uploadedPostDetail/"+postNum;
	}
	
	//심부름 한 게시글 상세보기
	@RequestMapping(value="finishedPostDetail/{post_num_pk}", method = RequestMethod.GET)
	public String finishedPost(@PathVariable("post_num_pk") int postNum, Model model){
		PostDto post = mypageService.oneWrittenPost(postNum);
		model.addAttribute("post", post);
		return "mypage/finishedPostDetail";
	}
	
	

}

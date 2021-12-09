package com.fdx.controllers;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fdx.dto.Criteria2;
import com.fdx.dto.PageMaker2;
import com.fdx.dto.PoReportDto;
import com.fdx.dto.PostDto;
import com.fdx.services.PostService;

@Controller
public class PostController {

	@Inject
	private PostService postService;

	//게시글 작성 페이지
	@RequestMapping(value = "/main/writePost", method = RequestMethod.GET)
	public String write(Model model) {
		model.addAttribute("post", new PostDto());
		return "main/writePost";
	}

	//게시글 작성 후
	@RequestMapping(value = "/main/writePost", method = RequestMethod.POST)
	public String write(PostDto post, HttpSession session) {
		int idNum = (int)session.getAttribute("mNum");
		postService.write(post, idNum);
		return "redirect:/main/postPage";
	}

	//전체 게시글 보기
	@RequestMapping(value = "/main/postPage", method = RequestMethod.GET)
	public String showPost(Model model, @ModelAttribute Criteria2 cri) {
		model.addAttribute("postList", postService.allPost(cri));
		int total = postService.countAllPost();
		model.addAttribute("pageMaker", new PageMaker2(cri,total));
		return "main/postPage";
	}

	//위치 필터링
	@RequestMapping(value = "/main/postLocFilter", method = RequestMethod.GET)
	public String locFilter(@RequestParam(value = "psmallc") int psmallc, @RequestParam(value = "pbigc") int pbigc, 
			@ModelAttribute Criteria2 cri, Model model) {
		cri.setPsmallc_pk(psmallc);
		model.addAttribute("postList", postService.selByLoc(cri));
		int total = postService.countSelByLoc(cri);
		model.addAttribute("pageMaker", new PageMaker2(cri,total));
		model.addAttribute("pbigc", pbigc);
		model.addAttribute("psmallc", psmallc);
		return "main/postLocFilter";
	}
	
	//게시글 검색
	@RequestMapping(value = "/main/postSearchFilter", method = RequestMethod.GET)
	public String searchFilter(@RequestParam(value = "catNum") int catNum, @RequestParam(value = "value") String value,
			@ModelAttribute Criteria2 cri, Model model) {
		cri.setSearch_num(catNum);
		cri.setSearch_value(value);
		model.addAttribute("postList", postService.selSearch(cri));
		int total = postService.countSelSearch(cri);
		model.addAttribute("pageMaker", new PageMaker2(cri,total));
		model.addAttribute("catNum", catNum);
		model.addAttribute("value", value);
		return "main/postSearchFilter";
	}
	
	//게시글 상세보기
	@RequestMapping(value = "/main/postDetail/{post_num_pk}", method = RequestMethod.GET)
	public String postDetail(Model model, @PathVariable("post_num_pk") int postNum) {
		postService.increaseHits(postNum);
		model.addAttribute("post", postService.postDetail(postNum));
		return "main/postDetail";
	}
		
	//게시글 신고 작성 페이지
	@RequestMapping(value = "/main/writeReport/{post_num_pk}", method = RequestMethod.GET)
	public String writeReport(Model model, @PathVariable("post_num_pk") int postNum) {
		model.addAttribute("report", new PoReportDto());
		return "main/writeReport";
	}
	
	//게시글 신고 작성 후
	@RequestMapping(value = "/main/writeReport/{post_num_pk}", method = RequestMethod.POST)
	public String writeReport(@PathVariable("post_num_pk") int postNum, PoReportDto poReport, HttpSession session) {
		int idNum = (int)session.getAttribute("mNum");
		postService.writeReport(postNum, idNum, poReport);
		return "main/reportAccept";
	}
	
	//심부름꾼 지원 여부
	@RequestMapping(value = "/main/volunteer/{post_num_pk}", method = RequestMethod.GET)
	public String checkVolunteer(@PathVariable("post_num_pk") int postNum, Model model, HttpSession session) {
		int idNum = (int)session.getAttribute("mNum");
		model.addAttribute("apPost", postService.selectApPost(postNum, idNum));
		return "main/volunteer";
	}
	
	//심부름꾼 지원하기
	@RequestMapping(value = "/main/volunteer/{post_num_pk}", method = RequestMethod.POST)
	public String volunteer(@PathVariable("post_num_pk") int postNum, HttpSession session) {
		int idNum = (int)session.getAttribute("mNum");
		postService.insertApPost(postNum, idNum);
		return "main/volunteerAccept";
	}
	
	
	
	
}

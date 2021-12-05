package com.fdx.controllers;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value = "/main/postPage")
	public String showPost(Model model) {
		model.addAttribute("postList", postService.allPost());
		return "main/postPage";
	}

	//위치 필터링 Ajax
	@ResponseBody
	@RequestMapping(value = "/main/locFilter", method = RequestMethod.GET)
	public List<PostDto> locFilter(@RequestParam(value = "catNum") int psmallc) {
		List<PostDto> postList = postService.selByLoc(psmallc);
		return postList;
	}
	
	//검색 Ajax
	@ResponseBody
	@RequestMapping(value = "/main/searchFilter", method = RequestMethod.GET)
	public List<PostDto> searchFilter(@RequestParam(value = "num") int num, @RequestParam(value = "search") String value) {
		List<PostDto> postList = postService.selSearch(num, value);
		return postList;
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

package com.fdx.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fdx.dao.PostDaoImpl;
import com.fdx.dto.ApPostDto;
import com.fdx.dto.Criteria2;
import com.fdx.dto.PoReportDto;
import com.fdx.dto.PostDto;

@Service
public class PostService {

	@Inject
	private PostDaoImpl postDao;
	
	public PostService() {}
	
	//게시글 작성
	public void write(PostDto post, int idNum) {
		post.setMb_num_pk(idNum);
		postDao.insert(post);
	}
	
	//모든 게시글 보기
	public List<PostDto> allPost(Criteria2 cri) {
		List<PostDto> dto = postDao.selectAll(cri);
		return dto;
	}
	
	//게시글 총 개수
	public int countAllPost() {
		return postDao.countAllPost();
	}
	
	//위치 필터링
	public List<PostDto> selByLoc(Criteria2 cri) {
		return postDao.selectByLoc(cri);
	}
	
	//위치 필터링 total
	public int countSelByLoc(Criteria2 cri) {
		return postDao.countSelByLoc(cri);
	}
	
	//게시글 검색 필터링
	public List<PostDto> selSearch(Criteria2 cri) {
		int num = cri.getSearch_num();
		String value = cri.getSearch_value();
		
		if(num == 1) {
			cri.setPost_title(value);
			return postDao.selectBySearch1(cri);
		}else if(num == 2) {
			cri.setPost_title(value);
			cri.setPost_con(value);
			return postDao.selectBySearch2(cri);
		}else {
			cri.setMb_id(value);
			return postDao.selectBySearch3(cri);
		}
	}
	
	//게시글 검색 필터링 total
	public int countSelSearch(Criteria2 cri) {
		int num = cri.getSearch_num();
		String value = cri.getSearch_value();
		
		if(num == 1) {
			cri.setPost_title(value);
			return postDao.countSelBySearch1(cri);
		}else if(num == 2) {
			cri.setPost_title(value);
			cri.setPost_con(value);
			return postDao.countSelBySearch2(cri);
		}else {
			cri.setMb_id(value);
			return postDao.countSelBySearch3(cri);
		}
	}
	
	//게시글 상세보기
	public PostDto postDetail(int postNum) {
		return postDao.selectOne(postNum);
	}
	
	//게시글 신고 접수
	public void writeReport(int postNum, int idNum, PoReportDto poReport) {
		poReport.setPorp_lnb(postNum);
		poReport.setPorp_mbn(idNum);
		postDao.insertReport(poReport);
	}
	
	//심부름꾼 지원 여부
	public ApPostDto selectApPost(int postNum, int idNum) {
		ApPostDto apPost = new ApPostDto();
		apPost.setPost_num_pk(postNum);
		apPost.setMb_num_pk(idNum);
		return postDao.selectApPost(apPost);
	}
	
	//심부름꾼 지원하기
	public void insertApPost(int postNum, int idNum) {
		ApPostDto apPost = new ApPostDto();
		apPost.setPost_num_pk(postNum);
		apPost.setMb_num_pk(idNum);
		postDao.insertApPost(apPost);
	}
	
	//게시글 조회수 증가
	public void increaseHits(int postNum) {
		postDao.updatePostViews(postNum);
	}
	
}

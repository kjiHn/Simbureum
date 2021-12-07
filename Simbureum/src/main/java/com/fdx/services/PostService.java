package com.fdx.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fdx.dao.PostDaoImpl;
import com.fdx.dto.ApPostDto;
import com.fdx.dto.Criteria;
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
	public List<PostDto> allPost(Criteria cri) {
		List<PostDto> dto = postDao.selectAll(cri);
		return dto;
	}
	
	//총 게시글 개수
	public int countAllPost() {
		return postDao.countAllPost();
	}
	
	//위치 필터링
	public List<PostDto> selByLoc(int smallc) {
		return postDao.selectByLoc(smallc);
	}
	
	//게시글 검색
	public List<PostDto> selSearch(int num, String value) {
		if(num == 1) {
			return postDao.selectBySearch1(num, value);
		}else if(num == 2) {
			return postDao.selectBySearch2(num, value);
		}else {
			return postDao.selectBySearch3(num, value);
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

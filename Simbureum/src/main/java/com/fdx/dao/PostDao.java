package com.fdx.dao;

import java.util.List;

import com.fdx.dto.ApPostDto;
import com.fdx.dto.Criteria2;
import com.fdx.dto.PoReportDto;
import com.fdx.dto.PostDto;

public interface PostDao {

	//작성한 게시글 insert
	public void insert(PostDto post);
	
	//모든 게시글 select
	public List<PostDto> selectAll(Criteria2 cri);
	
	//총 게시글 개수
	public int countAllPost();
	
	//위치 필터링 select
	public List<PostDto> selectByLoc(Criteria2 cri);
	
	//위치 필터링 total select
	public int countSelByLoc(Criteria2 cri);
	
	//검색어 필터1(제목) select
	public List<PostDto> selectBySearch1(Criteria2 cri);
	
	//검색어 필터링1 total select
	public int countSelBySearch1(Criteria2 cri);
	
	//검색어 필터2(제목+내용) select
	public List<PostDto> selectBySearch2(Criteria2 cri);
	
	//검색어 필터링2 total select
	public int countSelBySearch2(Criteria2 cri);
	
	//검색어 필터3(작성자) select
	public List<PostDto> selectBySearch3(Criteria2 cri);
	
	//검색어 필터링3 total select
	public int countSelBySearch3(Criteria2 cri);
	
	//게시글 상세보기 select
	public PostDto selectOne(int postNum);
	
	//게시글 신고하기 insert
	public void insertReport(PoReportDto poReport);
	
	//심부름꾼 지원 여부 select
	public ApPostDto selectApPost(ApPostDto apPost);
	
	//심부름꾼 지원하기 insert
	public void insertApPost(ApPostDto apPost);
	
	//게시글 조회수 증가 update
	public void updatePostViews(int postNum);
	

}

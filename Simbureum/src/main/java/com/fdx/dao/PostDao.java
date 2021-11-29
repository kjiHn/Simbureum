package com.fdx.dao;

import java.util.List;

import com.fdx.dto.PostDto;

public interface PostDao {

	//작성한 게시글 insert
	public void insert(PostDto post);
	
	//모든 게시글 select
	public List<PostDto> selectAll();
	
	//위치 필터링 select
	public List<PostDto> selectByLoc(int psmallc);
	
	//검색어 필터1(제목) select
	public List<PostDto> selectBySearch1(int num, String value);
	
	//검색어 필터2(제목+내용) select
	public List<PostDto> selectBySearch2(int num, String value);
	
	//검색어 필터3(작성자) select
	public List<PostDto> selectBySearch3(int num, String value);
	
	//게시글 하나 select
	public PostDto selectOne(int postNum);

}

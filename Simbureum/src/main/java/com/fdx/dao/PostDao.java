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
	
}

package com.fdx.dao;

import com.fdx.dto.PostDto;

public interface PostDao {

	//작성한 게시글 insert
	public void insert(PostDto post);
}

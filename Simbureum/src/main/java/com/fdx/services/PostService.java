package com.fdx.services;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fdx.dao.PostDaoImpl;
import com.fdx.dto.PostDto;

@Service
public class PostService {

	@Inject
	private PostDaoImpl postDao;
	
	public PostService() {}
	
	//게시글 작성
	public void write(PostDto post) {
		postDao.insert(post);
	}
	
}

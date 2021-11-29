package com.fdx.services;

import java.util.List;

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
	
	//모든 게시글 보기
	public List<PostDto> allPost() {
		return postDao.selectAll();
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
	
	
	
	
	
	
	
	
	
}

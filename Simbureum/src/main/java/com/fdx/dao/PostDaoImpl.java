package com.fdx.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.PostDto;

@Repository
public class PostDaoImpl implements PostDao{

	@Inject
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Inject
	public PostDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	

	@Override
	public void insert(PostDto post) {
		sqlSessionTemplate.insert("insertPost", post);
		
	}

	
	
}

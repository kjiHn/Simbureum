package com.fdx.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdx.dto.PostDto;

@Repository
public class PostDaoImpl implements PostDao{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	public PostDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	@Override
	public void insert(PostDto post) {
		sqlSessionTemplate.insert("insertPost", post);
		
	}
	
}

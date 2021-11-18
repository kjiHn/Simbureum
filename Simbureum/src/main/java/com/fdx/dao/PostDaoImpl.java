package com.fdx.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdx.dto.PostDto;

@Repository
public class PostDaoImpl implements PostDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	public PostDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSession = sqlSessionTemplate;
	}

	@Override
	public void insert(PostDto post) {
		sqlSession.insert("insertPost", post);
		
	}
	
}

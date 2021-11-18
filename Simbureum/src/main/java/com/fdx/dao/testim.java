package com.fdx.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

public class testim implements testDAO{

	@Inject
	private SqlSession sqlSession;
	@Override
	public void insert(testDAO tdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert("insert",tdto);

		
	}


	
}

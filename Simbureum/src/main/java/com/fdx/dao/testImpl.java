package com.fdx.dao;

import javax.inject.Inject;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.testDTO;

@Repository
public class testImpl implements testDAO{

	@Inject
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertTest(testDTO tdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("insertTest",tdto);
		
	}
	
	

		
	}


	

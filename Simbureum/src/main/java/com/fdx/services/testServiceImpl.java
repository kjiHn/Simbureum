package com.fdx.services;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fdx.dao.testDAO;
import com.fdx.dto.testDTO;


@Service
public class testServiceImpl implements testService{
	
	@Inject
	private testDAO tdao;

	@Override
	public void insertTest(testDTO tdto) throws Exception {
		// TODO Auto-generated method stub
	
		tdao.insertTest(tdto);
		
	}

}

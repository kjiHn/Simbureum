package com.fdx.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.Vlntr_RvDTO;
@Repository
	
public class Vlntr_RvDAOImpl implements Vlntr_RvDAO{
	
	@Inject
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void vlreinsert(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("vlreinsert",vrdto);
		
	}


	@Override
	public Vlntr_RvDAO select(Vlntr_RvDAO vrdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("select", vrdto);
	}
	


	

}

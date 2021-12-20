package com.fdx.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdx.dto.AdminDTO;
import com.fdx.dto.JoinDTO;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public AdminDTO adminCheck(String mng_id_pk) {
		AdminDTO adminDTO = new AdminDTO();
		adminDTO = sqlSessionTemplate.selectOne("mappers.login.adminCheck",mng_id_pk); 
		return adminDTO;
	}


	@Override
	public JoinDTO memberCheck(String mb_id) {
		JoinDTO joinDTO = new JoinDTO();
		joinDTO = sqlSessionTemplate.selectOne("mappers.login.loginCheck",mb_id); 
		return joinDTO;
	}


	@Override
	public int mailFrc_WthCheckID(String mb_id) {
		
		return sqlSessionTemplate.selectOne("mappers.login.frc_WthCheckID", mb_id);
	}

}

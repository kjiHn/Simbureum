package com.fdx.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdx.dto.JoinDTO;

@Repository
public class JoinDAOImpl implements JoinDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int userIdCheck(String mb_id) {
		
		return sqlSessionTemplate.selectOne("mapper.mamber.userIdCheck", mb_id);
	}

	@Override
	public void insertMember(JoinDTO joinDTO) {
		sqlSessionTemplate.insert("mapper.mamber.insertMember", joinDTO);
		
	}

	@Override
	public int emailDuplCheck(String mb_emaile) {
		
		return sqlSessionTemplate.selectOne("mapper.mamber.emailDuplCheck", mb_emaile);
	}

	@Override
	public String findId(JoinDTO joinDTO) {
		String id = "";
		id = sqlSessionTemplate.selectOne("mapper.mamber.findIdCheck", joinDTO);
		return id;
	}
	

	@Override
	public int updateMember(JoinDTO joinDTO) {
		return sqlSessionTemplate.update("mapper.mamber.updateMember", joinDTO);
		
	}

	@Override
	public int deleteMember(String mb_id) {
		
		return sqlSessionTemplate.delete("mapper.mamber.deleteMember", mb_id);
		
	}

	@Override
	public int pswdCheck(JoinDTO joinDTO) {
		
		return sqlSessionTemplate.selectOne("mapper.mamber.allMember2", joinDTO);
	}
	@Override
	public int idCheck(JoinDTO joinDTO) {
		
		return sqlSessionTemplate.selectOne("mapper.mamber.allMember3", joinDTO);
	}
	
	
	
	

}

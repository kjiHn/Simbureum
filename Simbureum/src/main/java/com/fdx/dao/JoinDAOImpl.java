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
		int num  = 0 ;
		num = sqlSessionTemplate.update("mapper.mamber.updateMember", joinDTO);
		System.out.println(num);
		return num;
		
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

	@Override
	public JoinDTO myInfo(String mb_name) {
		
		return sqlSessionTemplate.selectOne("mapper.mamber.allMember", mb_name);
	}

	@Override
	public int mailFrc_WthCheck(String mb_emaile) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("mapper.mamber.frc_WthCheck", mb_emaile);
	}
	
	
	
	

}

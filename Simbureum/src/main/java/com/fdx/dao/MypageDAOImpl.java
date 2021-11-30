package com.fdx.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdx.dto.MypageDTO;

@Repository
public class MypageDAOImpl implements MypageDAO{

	@Inject
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public List<MypageDTO> myUploadPost(int mb_num_pk) {	
		
		return sqlSessionTemplate.selectList("com.fdx.dao.MypageDAO.myUploadPost", mb_num_pk);
	}


	@Override
	public void hitup(int post_num_pk) {
		System.out.println("조회수 증가");
		sqlSessionTemplate.update("com.fdx.dao.MypageDAO.hitup", post_num_pk);
		
	}


	@Override
	public List<MypageDTO> mySupPost(int mb_num_pk) {
		
		return sqlSessionTemplate.selectList("com.fdx.dao.MypageDAO.mySupPost", mb_num_pk);
	}


	@Override
	public List<MypageDTO> myFinshPost(int mb_num_pk) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("com.fdx.dao.MypageDAO.myFinshPost", mb_num_pk);
	}


	@Override
	public int supPostDel(MypageDTO mypageDTO) {
		return sqlSessionTemplate.delete("com.fdx.dao.MypageDAO.supDel", mypageDTO);
		
	}

}

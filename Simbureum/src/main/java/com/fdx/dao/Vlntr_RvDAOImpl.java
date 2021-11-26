package com.fdx.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.jdbc.SQL;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.PostRvDTO;
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
	public List<Vlntr_RvDTO> receiveList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("receiveList");
	}


	@Override
	public PostRvDTO reList(int post_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("reList",post_num_pk);
	}


	@Override
	public void update(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.update("update", vrdto);
		
	}


	@Override
	public List<Vlntr_RvDTO> writeList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("writeList");
	}


	@Override
	public PostRvDTO wrList(int post_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("wrList", post_num_pk);
	}




	


	

	
	


	

}

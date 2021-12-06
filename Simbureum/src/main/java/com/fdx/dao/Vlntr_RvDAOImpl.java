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
	public void vlInsert(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("vlreinsert",vrdto);
		
	}


	@Override
	public List<Vlntr_RvDTO> receiveList(String vr_mbid) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("receiveList",vr_mbid);
	}


	@Override
	public PostRvDTO reList(int vr_rvn_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("reList",vr_rvn_pk);
	}


	@Override
	public void wreUpdate(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.update("wreUpdate", vrdto);
		
	}


	@Override
	public List<Vlntr_RvDTO> writeList(String mb_id_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("writeList", mb_id_pk);
	}


	@Override
	public PostRvDTO wrList(int vr_rvn_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("wrList", vr_rvn_pk);
	}


	@Override
	public void wreDelete(int vr_rvn_pk) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.delete("wreDelete", vr_rvn_pk);
		
	}



	@Override
	public int listCount(String mb_id_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("listCount",mb_id_pk);
	}


//	@Override
//	public List<Vlntr_RvDTO> page(CriteriaDTO cri) throws Exception {
//		// TODO Auto-generated method stub
//		return sqlSessionTemplate.selectList("page",cri);
//	}


	@Override
	public void wreInsert(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("wreInsert", vrdto);
		
	}


	@Override
	public int vrCount(String vr_mbid) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("vrCount",vr_mbid);
	}

	//고용자의 평점
	@Override
	public Vlntr_RvDTO grdAvg(String vr_mbid) throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSessionTemplate.selectOne("grdAvg", vr_mbid);
		
	}


	@Override
	public void Report(Vlntr_RvDTO vrdto) throws Exception {
		sqlSessionTemplate.insert("Report", vrdto);
		
	}


	@Override
	public int ReportCheck(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("ReportCheck", vrdto);
	}


	




	


	

	
	


	

}

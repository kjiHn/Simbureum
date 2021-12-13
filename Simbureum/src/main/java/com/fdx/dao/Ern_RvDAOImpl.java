package com.fdx.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.Criteria;
import com.fdx.dto.Ern_RvDTO;
import com.fdx.dto.PostRvDTO;

@Repository
public class Ern_RvDAOImpl implements Ern_RvDAO{
	
	@Inject
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Ern_RvDTO> EreceiveList(String er_mbid) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("EreceiveList", er_mbid);
	}

	@Override
	public PostRvDTO EreList(int er_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EreList",er_num_pk);
	}

	@Override
	public void EReport(Ern_RvDTO erdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("EReport",erdto);
		
	}

	@Override
	public List<Ern_RvDTO> EwriteList(String mb_id_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("EwriteList", mb_id_pk);
	}

	@Override
	public PostRvDTO EwrList(int er_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EwrList", er_num_pk);
	}

	@Override
	public void EwreDelete(int er_num_pk) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.delete("EwreDelete",er_num_pk);
		
	}

	@Override
	public void EwreUpdate(Ern_RvDTO erdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.update("EwreUpdate",erdto);
		
	}

	@Override
	public int EReportCheck(Ern_RvDTO erdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EReportCheck",erdto);
	}

	@Override
	public void EreInsert(Ern_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("EreInsert",vrdto);
		
	}

	@Override
	public int EreInsertCheck(Ern_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EreInsertCheck", vrdto);
	}

	@Override
	public List<Ern_RvDTO> EwriteListPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("EwriteListPaging", cri);
	}

	@Override
	public int EwrtotalPage(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EwrtotalPage", cri);
	}

	@Override
	public List<Ern_RvDTO> EreceiveListPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("EreceiveListPaging",cri);
	}

	@Override
	public int EretotalPage(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EretotalPage",cri);
	}


	@Override
	public Ern_RvDTO EgrdAvg(String er_mbid) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EgrdAvg",er_mbid);
	}

	
	
	
	
	

}

package com.fdx.services;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Service;

import com.fdx.dao.Vlntr_RvDAO;
import com.fdx.dto.Criteria;
import com.fdx.dto.PostRvDTO;
import com.fdx.dto.Vlntr_RvDTO;

@Service
public class Vlntr_RvServiceImpl implements Vlntr_RvService{
	@Inject
	private Vlntr_RvDAO vrdao;

	@Override
	public void reInsert(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		vrdao.reInsert(vrdto);
		
	}

	@Override
	public List<Vlntr_RvDTO> receiveList(String vr_mbid) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.receiveList(vr_mbid);
	}

	@Override
	public PostRvDTO reList(int vr_rvn_pk) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.reList(vr_rvn_pk);
		
	}

	@Override
	public void wreUpdate(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		vrdao.wreUpdate(vrdto);
		
	}

	@Override
	public List<Vlntr_RvDTO> writeList(String mb_id_pk) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.writeList(mb_id_pk);
	}

	@Override
	public PostRvDTO wrList(int mb_id_pk) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.wrList(mb_id_pk);
	}

	@Override
	public void wreDelete(int vr_rvn_pk) throws Exception {
		// TODO Auto-generated method stub
		vrdao.wreDelete(vr_rvn_pk);
		
	}

	
	@Override
	public Vlntr_RvDTO grdAvg(String vr_mbid) throws Exception {
		// TODO Auto-generated method stub
		
		return vrdao.grdAvg(vr_mbid);
		
	}

	@Override
	public void Report(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		vrdao.Report(vrdto);
		
	}

	@Override
	public int ReportCheck(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.ReportCheck(vrdto);
	}

	@Override
	public int reInsertCheck(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.reInsertCheck(vrdto);
	}

	@Override
	public List<Vlntr_RvDTO> reviewList(String vr_mbid) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.receiveList(vr_mbid);
	}

	@Override
	public List<Vlntr_RvDTO> writeListPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.writeListPaging(cri);
	}

	@Override
	public int wrtotalPage(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.wrtotalPage(cri);
	}

	@Override
	public List<Vlntr_RvDTO> receiveListPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.receiveListPaging(cri);
	}

	@Override
	public int retotalPage(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.retotalPage(cri);
	}

	
	


	


	

}

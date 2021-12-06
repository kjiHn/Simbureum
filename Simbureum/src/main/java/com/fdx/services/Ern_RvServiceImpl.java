package com.fdx.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fdx.dao.Ern_RvDAO;
import com.fdx.dto.Ern_RvDTO;
import com.fdx.dto.PostRvDTO;
@Service
public class Ern_RvServiceImpl implements Ern_RvService{
	
	@Inject
	private Ern_RvDAO erdao;

	@Override
	public List<Ern_RvDTO> EreceiveList(String er_mbid) throws Exception {
		// TODO Auto-generated method stub
		return erdao.EreceiveList(er_mbid);
	}

	@Override
	public PostRvDTO EreList(int er_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return erdao.EreList(er_num_pk);
	}

	@Override
	public void EReport(Ern_RvDTO erdto) throws Exception {
		// TODO Auto-generated method stub
		erdao.EReport(erdto);
	}

	@Override
	public List<Ern_RvDTO> EwriteList(String mb_id_pk) throws Exception {
		// TODO Auto-generated method stub
		return erdao.EwriteList(mb_id_pk);
	}

	@Override
	public PostRvDTO EwrList(int er_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return erdao.EwrList(er_num_pk);
	}

	@Override
	public void EwreDelete(int er_num_pk) throws Exception {
		// TODO Auto-generated method stub
		erdao.EwreDelete(er_num_pk);
		
	}

	@Override
	public void EwreUpdate(Ern_RvDTO erdto) throws Exception {
		// TODO Auto-generated method stub
		erdao.EwreUpdate(erdto);
		
	}

	@Override
	public int EReportCheck(Ern_RvDTO erdto) throws Exception {
		// TODO Auto-generated method stub
		return erdao.EReportCheck(erdto);
	}

}

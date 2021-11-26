package com.fdx.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fdx.dao.Vlntr_RvDAO;
import com.fdx.dto.PostRvDTO;
import com.fdx.dto.Vlntr_RvDTO;

@Service
public class Vlntr_RvServiceImpl implements Vlntr_RvService{
	@Inject
	private Vlntr_RvDAO vrdao;

	@Override
	public void vlreinsert(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		vrdao.vlreinsert(vrdto);
		
	}

	@Override
	public List<Vlntr_RvDTO> receiveList() throws Exception {
		// TODO Auto-generated method stub
		return vrdao.receiveList();
	}

	@Override
	public PostRvDTO reList(int post_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.reList(post_num_pk);
		
	}

	@Override
	public void update(Vlntr_RvDTO vrdto) throws Exception {
		// TODO Auto-generated method stub
		vrdao.update(vrdto);
		
	}

	@Override
	public List<Vlntr_RvDTO> writeList() throws Exception {
		// TODO Auto-generated method stub
		return vrdao.writeList();
	}

	@Override
	public PostRvDTO wrList(int post_num_pk) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.wrList(post_num_pk);
	}

	


	


	

}

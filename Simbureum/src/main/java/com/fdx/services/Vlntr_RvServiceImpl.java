package com.fdx.services;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fdx.dao.Vlntr_RvDAO;
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
	public Vlntr_RvDAO select(Vlntr_RvDAO vrdto) throws Exception {
		// TODO Auto-generated method stub
		return vrdao.select(vrdto);
	}
	
	

}

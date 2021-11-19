package com.fdx.services;

import com.fdx.dao.Vlntr_RvDAO;
import com.fdx.dto.Vlntr_RvDTO;

public interface Vlntr_RvService {
	
	public void vlreinsert(Vlntr_RvDTO vrdto) throws Exception;
	public Vlntr_RvDAO select(Vlntr_RvDAO vrdto) throws Exception;  //리뷰 정보 조회

}

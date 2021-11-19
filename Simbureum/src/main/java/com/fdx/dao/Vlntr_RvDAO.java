package com.fdx.dao;

import com.fdx.dto.Vlntr_RvDTO;

public interface Vlntr_RvDAO {
	
	public void vlreinsert(Vlntr_RvDTO vrdto) throws Exception; //리뷰  쓰기
	
	public Vlntr_RvDAO select(Vlntr_RvDAO vrdto) throws Exception;  //리뷰 정보 조회 
	

}

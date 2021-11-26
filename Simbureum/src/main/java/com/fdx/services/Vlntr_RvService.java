package com.fdx.services;

import java.util.List;

import com.fdx.dao.Vlntr_RvDAO;
import com.fdx.dto.PostRvDTO;
import com.fdx.dto.Vlntr_RvDTO;

public interface Vlntr_RvService {
	
	public void vlreinsert(Vlntr_RvDTO vrdto) throws Exception;
	public List<Vlntr_RvDTO> receiveList() throws Exception;//리뷰 정보 조회
	public PostRvDTO reList(int post_num_pk) throws Exception;// 자신이  심부름꾼일때 받은 리뷰 조회(전체)
	public void update(Vlntr_RvDTO vrdto)throws Exception; //작성한 리뷰 수정하기
	
	public List<Vlntr_RvDTO> writeList() throws Exception;//자신이 심부름꾼일때 작성한 리뷰 조회(전체)
	public PostRvDTO wrList(int post_num_pk) throws Exception;
	
}

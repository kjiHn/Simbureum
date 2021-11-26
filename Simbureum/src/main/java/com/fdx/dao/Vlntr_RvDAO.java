package com.fdx.dao;

import java.util.List;

import com.fdx.dto.PostRvDTO;
import com.fdx.dto.Vlntr_RvDTO;

public interface Vlntr_RvDAO {
	
	public void vlreinsert(Vlntr_RvDTO vrdto) throws Exception; //자신이 심부름꾼일떄 리뷰  쓰기	
	public List<Vlntr_RvDTO> receiveList() throws Exception;// 자신이  심부름꾼일때 받은 리뷰 조회(전체) 
	public PostRvDTO reList(int post_num_pk) throws Exception;// 자신이  심부름꾼일때 받은 리뷰 조회(전체)
	
	
	
	
	public List<Vlntr_RvDTO> writeList() throws Exception;//자신이 심부름꾼일때 작성한 리뷰 조회(전체)
	public PostRvDTO wrList(int post_num_pk) throws Exception;// 자신이  심부름꾼일때 받은 리뷰 조회(전체)
	public void update(Vlntr_RvDTO vrdto)throws Exception; //작성한 리뷰 수정하기
	
	
	

}

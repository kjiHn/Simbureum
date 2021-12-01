package com.fdx.services;

import java.util.List;

import com.fdx.dao.Vlntr_RvDAO;
import com.fdx.dto.CriteriaDTO;
import com.fdx.dto.PostRvDTO;
import com.fdx.dto.Vlntr_RvDTO;

public interface Vlntr_RvService {
	
	public void vlInsert(Vlntr_RvDTO vrdto) throws Exception;
	public List<Vlntr_RvDTO> receiveList(String vr_mbid) throws Exception;//리뷰 정보 조회
	public PostRvDTO reList(int  vr_rvn_pk) throws Exception;// 자신이  심부름꾼일때 받은 리뷰 조회(전체)
	
	public List<Vlntr_RvDTO> writeList(String mb_id_pk) throws Exception;//자신이 심부름꾼일때 작성한 리뷰 조회(전체)
	
	public PostRvDTO wrList(String mb_id_pk) throws Exception;
	public void wreUpdate(Vlntr_RvDTO vrdto)throws Exception; //작성한 리뷰 수정하기
	public void wreDelete(String mb_id_pk) throws Exception;//작성한 리뷰 삭제하기
	public void wreInsert(Vlntr_RvDTO vrdto) throws Exception; //고용자에게 리뷰작성하기
	
	
	
	public Vlntr_RvDTO grdAvg(String vr_mbid) throws Exception;	//고용자의 평점
	
	
	
	public void Report(Vlntr_RvDTO vrdto) throws Exception;//리뷰신고하기
	
	
	
	
	public int vrCount(String vr_mbid)throws Exception;
	public int listCount(String mb_id_pk)throws Exception;
	public List<Vlntr_RvDTO> page(CriteriaDTO cri) throws Exception; 
	
	
	
	
	
	
	
}

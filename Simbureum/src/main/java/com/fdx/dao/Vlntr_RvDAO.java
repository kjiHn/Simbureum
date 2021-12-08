package com.fdx.dao;

import java.util.List;

import com.fdx.dto.Criteria;
import com.fdx.dto.Ern_RvDTO;
import com.fdx.dto.PostRvDTO;
import com.fdx.dto.Vlntr_RvDTO;

public interface Vlntr_RvDAO {
	
	public void reInsert(Vlntr_RvDTO vrdto) throws Exception; //자신이 심부름꾼일떄 리뷰  쓰기	
	public List<Vlntr_RvDTO> receiveList(String vr_mbid) throws Exception;// 자신이 고용자일때 받은 리뷰 조회(전체) 
	public PostRvDTO reList(int vr_rvn_pk) throws Exception;// 자신이  고용자일때 받은 리뷰 조회(전체)
	public void Report(Vlntr_RvDTO vrdto) throws Exception;//리뷰신고하기
	
	
	
	
	
	public List<Vlntr_RvDTO> writeList(String mb_id_pk) throws Exception;//자신이 심부름꾼일때 작성한 리뷰 조회(전체)	
	public PostRvDTO wrList(int vr_rvn_pk) throws Exception;// 자신이  심부름꾼일때 작성 리뷰 조회(전체)
	public void wreUpdate(Vlntr_RvDTO vrdto)throws Exception; //작성한 리뷰 수정하기	
	public void wreDelete(int vr_rvn_pk) throws Exception;//작성한 리뷰 삭제하기
	
	public Vlntr_RvDTO grdAvg(String vr_mbid) throws Exception;	//고용자의 평점
	
	public int ReportCheck(Vlntr_RvDTO vrdto) throws Exception; //리뷰 신고 중복체크
	public int reInsertCheck(Vlntr_RvDTO vrdto) throws Exception; //리뷰 작성 중복체크 
	public List<Vlntr_RvDTO> reviewList(String vr_mbid) throws Exception; // 고용자의 리뷰 보기
	
	
	/* 페이징처리 */
	public List<Vlntr_RvDTO> writeListPaging(Criteria cri) throws Exception;
	public int wrtotalPage(Criteria cri) throws Exception;
	
	
	public List<Vlntr_RvDTO> receiveListPaging(Criteria cri) throws Exception;
	public int retotalPage(Criteria cri) throws Exception;
	
	
	
	
	

}

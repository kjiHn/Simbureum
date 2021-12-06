package com.fdx.services;

import java.util.List;

import com.fdx.dto.Ern_RvDTO;
import com.fdx.dto.PostRvDTO;
import com.fdx.dto.Vlntr_RvDTO;

public interface Ern_RvService {
	
	public List<Ern_RvDTO> EreceiveList(String er_mbid) throws Exception; //자신이 심부름꾼일떄 받은 리뷰
	public PostRvDTO EreList(int er_num_pk) throws Exception; // 자신이 심부름꾼일떄 받은 리뷰 자세히 보기
	public void EReport(Ern_RvDTO erdto) throws Exception;//리뷰신고하기
	
	
	public List<Ern_RvDTO> EwriteList(String mb_id_pk) throws Exception; //자신이 고용자 일때 작성한 리뷰 조회(전체)
	public PostRvDTO EwrList(int er_num_pk) throws Exception;// 자신이  고용자일때 받은 리뷰 조회(전체)
	public void EwreDelete(int er_num_pk) throws Exception;//작성한 리뷰 삭제하기
	public void EwreUpdate(Ern_RvDTO erdto)throws Exception; //작성한 리뷰 수정하기
	
	public int EReportCheck(Ern_RvDTO erdto) throws Exception; //리뷰 신고 중복체크
	

}

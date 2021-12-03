package com.fdx.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdx.dao.MypageDAO;
import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;
import com.fdx.dto.PostDto;
import com.fdx.dto.PostVolDto;
import com.fdx.dto.VolReDto;

@Service
public class MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
	
	public List<MypageDTO> myUploadPost(Criteria cri){
		
		return mypageDAO.myUploadPost(cri);
		
	}
	public List<MypageDTO> mySupPost(Criteria cri){
		
		return mypageDAO.mySupPost(cri);
		
	}
	public List<MypageDTO> myFinshPost(Criteria cri){
			
		return mypageDAO.myFinshPost(cri);
			
	}
	
	public int supDel(MypageDTO mypageDTO) {
		return mypageDAO.supPostDel(mypageDTO);
	}
	
	public int uptotalPage(Criteria cri) {
		return mypageDAO.uptotalPage(cri);
	}
	public int suptotalPage(Criteria cri) {
		return mypageDAO.suptotalPage(cri);
	}
	
	public int finshtotalPage(Criteria cri) {
		return mypageDAO.finshtotalPage(cri);
	}
	
	//올린 심부름 상세보기
	public PostDto oneWrittenPost(int postNum) {
		return mypageDAO.selOneWrittenPost(postNum);
	}
	
	//지원한 심부름꾼 있는지 여부 (있으면 1, 없으면 0)
	public int checkVol(int postNum) {
		return mypageDAO.checkVol(postNum);
	}
	
	//지원한 심부름꾼이 있다면 필요한 심부름꾼 수 select
	public int checkNumOfVol(int postNum) {
		return mypageDAO.checkNumOfVol(postNum);
	}
	
	//지원한 심부름꾼 각각의 리뷰 수 및 평점
	public List<VolReDto> volRe(int postNum){
		return mypageDAO.selVolRe(postNum);
	}
	
	//심부름꾼 선택
	public void selectedVol(int postNum, String sel_vr) {
		PostVolDto postVolDto = new PostVolDto();
		postVolDto.setPost_num_pk(postNum);
		postVolDto.setSel_vr(sel_vr);
		mypageDAO.updateSelVol(postVolDto);
	}
	
	
	
	
}

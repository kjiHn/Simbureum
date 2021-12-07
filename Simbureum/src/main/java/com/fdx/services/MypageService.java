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
	
	//게시글 조회수 증가
	public void hitsup(int postNum) {
		mypageDAO.hitsup(postNum);
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
		PostVolDto postVol = new PostVolDto();
		postVol.setPost_num_pk(postNum);
		postVol.setSel_vr(sel_vr);
		mypageDAO.updateSelVol(postVol);
	}
	
	//심부름 완료
	public void insertVolHis(int postNum) {
		mypageDAO.insertVolHis(postNum);
	}
	
	//게시글 삭제
	public void deletePost(int postNum) {
		mypageDAO.deletePost(postNum);
	}
	
	//게시글 수정
	public void updatePost(PostDto post) {
		mypageDAO.updatePost(post);
	}
	
	//심부름꾼 지원 취소
	public void deleteSupportPost(int postNum, int mNum) {
		PostVolDto postVol = new PostVolDto();
		postVol.setPost_num_pk(postNum);
		postVol.setMb_num_pk(mNum);
		mypageDAO.deleteSupportPost(postVol);
	}
	
	//심부름 완료시 ap_post테이블에서 해당 게시글에 지원한 심부름꾼 모두 삭제
	public void deleteVol(int postNum) {
		mypageDAO.deleteVol(postNum);
	}
	
	//선택한 심부름꾼 전화번호 가져오기
	public String selectPhoneNum(String id) {
		return mypageDAO.selectPhoneNum(id);
	}
	
	
	
}

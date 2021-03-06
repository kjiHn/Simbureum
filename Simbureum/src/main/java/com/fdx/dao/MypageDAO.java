package com.fdx.dao;

import java.util.List;

import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;
import com.fdx.dto.PostDto;
import com.fdx.dto.PostVolDto;
import com.fdx.dto.VolReDto;

public interface MypageDAO {
	
	
	//올린 심부름
	public List<MypageDTO> myUploadPost(Criteria cri);
	
	//지원한 심부름
	public List<MypageDTO> mySupPost(Criteria cri);
	
	//심부름 한 내역
	public List<MypageDTO> myFinshPost(Criteria cri);
	
	//게시글 조회수 증가
	public void hitsup(int postNum);
	
	public int supPostDel(MypageDTO mypageDTO);
	
	public int uptotalPage(Criteria cri);
	
	public int suptotalPage(Criteria cri);
	
	public int finshtotalPage(Criteria cri);
	
	//올린 심부름 상세보기 select
	public PostDto selOnePost(int postNum);
	
	//지원한 심부름꾼 있는지 여부 select
	public int checkVol(int postNum);
	
	//지원한 심부름꾼 각각의 리뷰 수 및 평점
	public List<VolReDto> selVolRe(int postNum);
	
	//심부름꾼 선택
	public void updateSelVol(PostVolDto postVol);
	
	//심부름 완료
	public void insertVolHis(int postNum);
	
	//게시글 삭제
	public void deletePost(int postNum);
	
	//게시글 수정
	public void updatePost(PostDto post);
	
	//심부름꾼 지원 취소
	public void deleteSupportPost(PostVolDto postVol);
	
	//심부름 완료시 ap_post테이블에서 해당 게시글에 지원한 심부름꾼 모두 삭제
	public void deleteVol(int postNum);
	
	//선택한 심부름꾼 전화번호 가져오기
	public String selectPhoneNum(String id);
	
	
	
	
}

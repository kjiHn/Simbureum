package com.fdx.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdx.dto.managerDTO;

@Repository
public class ManagerDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	//게시글 보기
	public List<managerDTO> selectList() {
		List<managerDTO> post = this.sqlSessionTemplate.selectList("mappers.Manager.post");
	    return post;
	}
	
	//게시글 상세 보기
		public managerDTO postDetail(int post_num_pk) throws Exception {
			managerDTO postDetail = this.sqlSessionTemplate.selectOne("mappers.Manager.postDetail",post_num_pk);
		    
			return postDetail;
		}
	//게시글 삭제
		public managerDTO postdelete(int post_num_pk) throws Exception {
			managerDTO postdelete = this.sqlSessionTemplate.selectOne("mappers.Manager.postdelete",post_num_pk);
		    
			return postdelete;
		}
	//게시글 삭제
		public managerDTO reportpostdelete(int post_num_pk,int porp_num_pk) throws Exception {
			managerDTO reportpostdelete = this.sqlSessionTemplate.selectOne("mappers.Manager.reportpostdelete",post_num_pk);
			    
			return reportpostdelete;
				}
		
	//공지 보기
	public List<managerDTO> announce() {
		List<managerDTO> announce = this.sqlSessionTemplate.selectList("mappers.Manager.announce");
	    return announce;
	}
	 
	//공지 작성
		public void writeanc(HashMap<String,Object> map) throws Exception {
			this.sqlSessionTemplate.insert("mappers.Manager.writeanc",map);
	
		}
	//공지 수정	
		public int ancmodify(HashMap<String,Object> map) throws Exception {
			return this.sqlSessionTemplate.update("mappers.Manager.ancmodify",map);
		}
	//공지 삭제	
		public int ancdelete(int ntc_num_pk) throws Exception {
			return this.sqlSessionTemplate.delete("mappers.Manager.ancdelete",ntc_num_pk);
		}	
	//공지 상세 보기
		public managerDTO announceDetail(int ntc_num_pk) throws Exception {
			managerDTO announceDetail = this.sqlSessionTemplate.selectOne("mappers.Manager.announceDetail",ntc_num_pk);
			
		    return announceDetail;
		}
	//회원 관리 메인페이지
		public List<managerDTO> selectList1() {
			List<managerDTO> mnguser = this.sqlSessionTemplate.selectList("mappers.Manager.mnguser");
			return mnguser;
		}
	//모든회원보기
		public List<managerDTO> usersearch() {
			List<managerDTO> user = this.sqlSessionTemplate.selectList("mappers.Manager.usersearch");
			return user;
		}
	//회원탈퇴
		public int userdelete(int mb_num_pk) {
			return this.sqlSessionTemplate.delete("mappers.Manager.userdelete", mb_num_pk);
	
		}
	
	
	//신고된 게시글 팝업 보기
		public List<managerDTO> popuppost(int mb_num_pk) throws Exception{
			List<managerDTO> popuppost = this.sqlSessionTemplate.selectList("mappers.Manager.popuppost",mb_num_pk);
			
		    return popuppost;
		}
		
	//신고된 리뷰 팝업 보기
		public List<managerDTO> popupreview(int mb_num_pk) throws Exception{
			List<managerDTO> popupreview = this.sqlSessionTemplate.selectList("mappers.Manager.popupreview",mb_num_pk);
			
			return popupreview;
		}
	
		//신고된 게시글 보기
		public managerDTO reportpost(int mb_num_pk) throws Exception{
			managerDTO reportpost = this.sqlSessionTemplate.selectOne("mappers.Manager.reportpost", mb_num_pk);
			
			return reportpost;
		}
		//신고된 리뷰 보기
		public managerDTO reportreview(int mb_num_pk) throws Exception{
			managerDTO reportreview = this.sqlSessionTemplate.selectOne("mappers.Manager.reportreview", mb_num_pk);
			
			return reportreview;
				}

}
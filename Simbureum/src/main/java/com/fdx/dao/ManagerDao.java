package com.fdx.dao;

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
	
	//공지 보기
	public List<managerDTO> announce() {
		List<managerDTO> announce = this.sqlSessionTemplate.selectList("mappers.Manager.announce");
	    return announce;
	}
	
	//공지 상세 보기
		public managerDTO announceDetail(int ntc_num_pk) throws Exception {
			managerDTO announceDetail = this.sqlSessionTemplate.selectOne("mappers.Manager.announceDetail",ntc_num_pk);
			
		    return announceDetail;
		}
	
	
	//신고된 게시글 보기
	public List<managerDTO> selectList2(int post_num_pk) {
		List<managerDTO> reportpost = this.sqlSessionTemplate.selectList("mappers.Manager.reportpost",post_num_pk);
	    return reportpost;
	}
	
	
}
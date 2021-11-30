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
	public List<managerDTO> selectList(int post_num_pk) {
		List<managerDTO> post = this.sqlSessionTemplate.selectList("mappers.Manager.post",post_num_pk);
	    return post;
	}
	
	//공지 보기
	public List<managerDTO> selectList1(int ntc_num_pk) {
		List<managerDTO> announce = this.sqlSessionTemplate.selectList("mappers.Manager.announce",ntc_num_pk);
	    return announce;
	}
	
	//신고된 게시글 보기
	public List<managerDTO> selectList2(int post_num_pk) {
		List<managerDTO> reportpost = this.sqlSessionTemplate.selectList("mappers.Manager.reportpost",post_num_pk);
	    return reportpost;
	}
	
	
}
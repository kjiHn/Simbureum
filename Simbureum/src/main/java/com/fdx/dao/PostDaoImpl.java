package com.fdx.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.ApPostDto;
import com.fdx.dto.Criteria2;
import com.fdx.dto.PoReportDto;
import com.fdx.dto.PostDto;

@Repository
public class PostDaoImpl implements PostDao{

	@Inject
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Inject
	public PostDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	@Override
	public void insert(PostDto post) {
		sqlSessionTemplate.insert("insertPost", post);
	}

	@Override
	public List<PostDto> selectAll(Criteria2 cri) {
		return sqlSessionTemplate.selectList("selectAll", cri);
	}
	
	@Override
	public int countAllPost() {
		return sqlSessionTemplate.selectOne("countAllPost");
	}

	@Override
	public List<PostDto> selectByLoc(Criteria2 cri) {
		return sqlSessionTemplate.selectList("selectByLoc", cri);
	}
	
	@Override
	public int countSelByLoc(Criteria2 cri) {
		return sqlSessionTemplate.selectOne("countSelectByLoc", cri);
	}

	@Override
	public List<PostDto> selectBySearch1(Criteria2 cri) {
		return sqlSessionTemplate.selectList("selectBySearch1", cri);
	}
	
	@Override
	public int countSelBySearch1(Criteria2 cri) {
		return sqlSessionTemplate.selectOne("countSelectBySearch1", cri);
	}

	@Override
	public List<PostDto> selectBySearch2(Criteria2 cri) {
		return sqlSessionTemplate.selectList("selectBySearch2", cri);
	}
	
	@Override
	public int countSelBySearch2(Criteria2 cri) {
		return sqlSessionTemplate.selectOne("countSelectBySearch2", cri);
	}

	@Override
	public List<PostDto> selectBySearch3(Criteria2 cri) {
		return sqlSessionTemplate.selectList("selectBySearch3", cri);
	}
	
	@Override
	public int countSelBySearch3(Criteria2 cri) {
		return sqlSessionTemplate.selectOne("countSelectBySearch3", cri);
	}

	@Override
	public PostDto selectOne(int postNum) {
		return sqlSessionTemplate.selectOne("selectOnePost", postNum);
	}

	@Override
	public int checkReport(PoReportDto poReport) {
		return sqlSessionTemplate.selectOne("checkReport", poReport);
	}

	@Override
	public void insertReport(PoReportDto poReport) {
		sqlSessionTemplate.insert("insertPoReport", poReport);
	}

	@Override
	public int checkApPost(ApPostDto apPost) {
		return sqlSessionTemplate.selectOne("checkApPost", apPost);
	}

	@Override
	public void insertApPost(ApPostDto apPost) {
		sqlSessionTemplate.insert("insertApPost", apPost);
	}

	@Override
	public void updatePostViews(int postNum) {
		sqlSessionTemplate.update("updatePostViews", postNum);
	}

	

	

	
	
}

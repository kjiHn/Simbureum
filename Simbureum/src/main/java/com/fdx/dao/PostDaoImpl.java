package com.fdx.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.ApPostDto;
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
	public List<PostDto> selectAll() {
		return sqlSessionTemplate.selectList("selectAll");
	}

	@Override
	public List<PostDto> selectByLoc(int psmallc) {
		return sqlSessionTemplate.selectList("selectByLoc", psmallc);
	}

	@Override
	public List<PostDto> selectBySearch1(int num, String value) {
		return sqlSessionTemplate.selectList("selectBySearch1", value);
	}

	@Override
	public List<PostDto> selectBySearch2(int num, String value) {
		return sqlSessionTemplate.selectList("selectBySearch2", value);
	}

	@Override
	public List<PostDto> selectBySearch3(int num, String value) {
		return sqlSessionTemplate.selectList("selectBySearch3", value);
	}

	@Override
	public PostDto selectOne(int postNum) {
		return sqlSessionTemplate.selectOne("selectOnePost", postNum);
	}

	@Override
	public void insertReport(PoReportDto poReport) {
		sqlSessionTemplate.insert("insertPoReport", poReport);
	}

	@Override
	public ApPostDto selectApPost(ApPostDto apPost) {
		return sqlSessionTemplate.selectOne("selectApPost", apPost);
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

package com.fdx.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdx.dto.Criteria;
import com.fdx.dto.PostDto;
@Repository
public class PageMakerDAOImpl implements PageMakerDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int getTotalCount(Criteria cri) {
		
		return sqlSessionTemplate.selectOne("com.fdx.dao.PageMakerDAO.totalPage", cri);
	}

	@Override
	public List<PostDto> getList() {
		List<PostDto> list = sqlSessionTemplate.selectList("com.fdx.dao.PageMakerDAO.getList");
		return list;
	}

	@Override
	public List<PostDto> getListWithPageing(Criteria cri) {
		List<PostDto> list = sqlSessionTemplate.selectList("com.fdx.dao.PageMakerDAO.getListWithPaging",cri);
		return list;
	}

}

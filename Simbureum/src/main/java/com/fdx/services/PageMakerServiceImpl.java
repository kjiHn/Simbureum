package com.fdx.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdx.dao.PageMakerDAO;
import com.fdx.dto.Criteria;
import com.fdx.dto.PostDto;
@Service
public class PageMakerServiceImpl implements PageMakerService{

	@Autowired
	private PageMakerDAO pageMakerDao;
		
	@Override
	public int getTotal(Criteria cri) {
		System.out.println("get total count");
		System.out.println(pageMakerDao.getTotalCount(cri));
		return pageMakerDao.getTotalCount(cri);
	}

	@Override
	public List<PostDto> getList() {
		
		return pageMakerDao.getList();
	}

	@Override
	public List<PostDto> getListWithPageing(Criteria cri) {
		
		return pageMakerDao.getListWithPageing(cri);
	}
	
	

}

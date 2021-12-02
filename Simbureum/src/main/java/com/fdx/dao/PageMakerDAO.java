package com.fdx.dao;

import java.util.List;

import com.fdx.dto.Criteria;
import com.fdx.dto.PostDto;

public interface PageMakerDAO {
	
	public int getTotalCount(Criteria cri);
	public List<PostDto> getList();
	public List<PostDto> getListWithPageing(Criteria cri);

}

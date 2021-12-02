package com.fdx.services;

import java.util.List;

import com.fdx.dto.Criteria;
import com.fdx.dto.PostDto;

public interface PageMakerService {
	
	public int getTotal(Criteria cri);
	public List<PostDto> getList();
	public List<PostDto> getListWithPageing(Criteria cri);

}

package com.fdx.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdx.dao.MypageDAO;
import com.fdx.dto.MypageDTO;

@Service
public class MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
	
	public List<MypageDTO> myUploadPost(int mb_num_pk){
		
		return mypageDAO.myUploadPost(mb_num_pk);
		
	}
	public List<MypageDTO> mySupPost(int mb_num_pk){
		
		return mypageDAO.mySupPost(mb_num_pk);
		
	}
	public List<MypageDTO> myFinshPost(int mb_num_pk){
			
		return mypageDAO.myFinshPost(mb_num_pk);
			
	}
	
	
	
	
	
	
	
}

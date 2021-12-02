package com.fdx.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdx.dao.MypageDAO;
import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;

@Service
public class MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
	
	public List<MypageDTO> myUploadPost(Criteria cri){
		
		return mypageDAO.myUploadPost(cri);
		
	}
	public List<MypageDTO> mySupPost(Criteria cri){
		
		return mypageDAO.mySupPost(cri);
		
	}
	public List<MypageDTO> myFinshPost(Criteria cri){
			
		return mypageDAO.myFinshPost(cri);
			
	}
	
	public int supDel(MypageDTO mypageDTO) {
		return mypageDAO.supPostDel(mypageDTO);
	}
	
	public int uptotalPage(Criteria cri) {
		return mypageDAO.uptotalPage(cri);
	}
	public int suptotalPage(Criteria cri) {
		return mypageDAO.suptotalPage(cri);
	}
	
	public int finshtotalPage(Criteria cri) {
		return mypageDAO.finshtotalPage(cri);
	}
	
	
	
	
	
	
}

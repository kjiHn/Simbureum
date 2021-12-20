package com.fdx.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.fdx.dao.LoginDAO;
import com.fdx.dto.AdminDTO;
import com.fdx.dto.JoinDTO;

@Service
@Repository 
public class LoginService {

	
	@Autowired
	private LoginDAO loginDAO;
	
	
	
	public LoginService() {}



	public AdminDTO adminCheck(String mng_id_pk) {
				
		return loginDAO.adminCheck(mng_id_pk);
	}
	
	
	public JoinDTO memberCheck(String mb_id) {
		return loginDAO.memberCheck(mb_id);
		
	}
	
	public int mailFrc_WthCheckID(String mb_id) {
		return loginDAO.mailFrc_WthCheckID(mb_id);
		
	}
	
	
}

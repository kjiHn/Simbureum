package com.fdx.dao;

import com.fdx.dto.AdminDTO;
import com.fdx.dto.JoinDTO;

public interface LoginDAO {
	
	public AdminDTO adminCheck(String mng_id_pk);
	public JoinDTO memberCheck(String mb_id);
	
	
}

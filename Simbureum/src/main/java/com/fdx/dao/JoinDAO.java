package com.fdx.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.fdx.dto.JoinDTO;

public interface JoinDAO {
	
	int userIdCheck(String mb_id); // 아이디 체크
	void insertMember(JoinDTO joinDTO);
	int emailDuplCheck(String mb_emaile);
	String findId(JoinDTO joinDTO);
	int updateMember(JoinDTO joinDTO);
	int deleteMember(String mb_id);
	int pswdCheck(JoinDTO joinDTO);
	public int idCheck(JoinDTO joinDTO);
	public JoinDTO myInfo(String mb_name);
	int mailFrc_WthCheck(String mb_emaile);

}

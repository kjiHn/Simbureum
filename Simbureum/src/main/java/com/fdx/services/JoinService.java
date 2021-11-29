package com.fdx.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.fdx.dao.JoinDAO;
import com.fdx.dto.JoinDTO;


@Service
@Repository 
public class JoinService {
	
	@Autowired
	private JoinDAO joinDao;
	
	public JoinService() {}
	
	public int userIdCheck(String mb_id) {
		return joinDao.userIdCheck(mb_id);
	}
	
	public void insertMember(JoinDTO joinDTO) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String secuString = encoder.encode(joinDTO.getMb_pswd());
		System.out.println(secuString);
		joinDTO.setMb_pswd(secuString);
		joinDao.insertMember(joinDTO);
	}
	
	public int emailDuplCheck(String mb_emaile) {
		return joinDao.emailDuplCheck(mb_emaile);
	}
	
	public String findID(JoinDTO joinDTO) {
		
		return joinDao.findId(joinDTO);
		
	}
	
	
	//회원 정보 수정
	public int updateMember(JoinDTO joinDTO) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String secuString = encoder.encode(joinDTO.getMb_pswd());
		System.out.println(secuString);
		joinDTO.setMb_pswd(secuString);
		return joinDao.updateMember(joinDTO);
	}
	
	//회원 정보 삭제
	public int deleteMember(String mb_id) {
		return joinDao.deleteMember(mb_id);
	}
	
	public int pswdCheck(JoinDTO joinDTO) {
		return joinDao.pswdCheck(joinDTO);
	}
	public int idCheck(JoinDTO joinDTO) {
		return joinDao.idCheck(joinDTO);
	}
}

package com.fdx.controllers;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fdx.dao.JoinDAO;
import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;
import com.fdx.services.MypageService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class test {
	
	@Inject
	private JoinDAO dao;
	
	@Inject
	private MypageService service;
	
	@Test
	public void inserTest() throws Exception{
//		String emaile = "test11@naver.com";
//		
//		int num = dao.mailFrc_WthCheck(emaile);
//		System.out.println(num);
		
		Criteria cri = new Criteria(1,5,"test3");
	
		List<MypageDTO> dto = service.myFinshPost(cri);
		System.out.println("가져온 데이터~~~"+dto.get(0));
		
	}
	
	
}

package com.fdx.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fdx.dao.JoinDAO;
import com.fdx.dto.Criteria2;
import com.fdx.dto.PostDto;
import com.fdx.services.PostService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class test {
	
	@Inject
	private JoinDAO dao;
	
	@Inject
	private PostService service;
	
	@Test
	public void inserTest() throws Exception{
//		String emaile = "test11@naver.com";
//		
//		int num = dao.mailFrc_WthCheck(emaile);
//		System.out.println(num);
		
		Criteria2 cri = new Criteria2(1,5,1,"test3");
	
		List<PostDto> dto = new ArrayList();
		dto = service.selSearch(cri);
		

		
	}
	
	
}

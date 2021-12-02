package com.fdx.controllers;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fdx.dao.JoinDAO;
import com.fdx.dao.PostDao;
import com.fdx.dto.JoinDTO;
import com.fdx.dto.PostDto;
import com.fdx.services.JoinService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class test {
	
	@Inject
	private JoinDAO dao;
	
	@Test
	public void inserTest() throws Exception{
		String emaile = "test11@naver.com";
		
		int num = dao.mailFrc_WthCheck(emaile);
		System.out.println(num);
		
	}
	
	
}

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
	private JoinService joinService;
	private static Logger logger = LoggerFactory.getLogger(test.class);
	
	
	@Test
	public void inserTest() throws Exception{
		JoinDTO joinDTO = new JoinDTO();
		joinDTO.setMb_id("test");
		joinDTO.setMb_pswd("test");
		joinDTO.setMb_emaile("test");
		int num = 0;
		num = joinService.updateMember(joinDTO);
		
		System.out.println(num);
		
		
	}
	
	
}

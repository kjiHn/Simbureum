package com.fdx.controllers;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fdx.dao.testDAO;
import com.fdx.dto.testDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class test {
	
	@Inject
	private testDAO udao;
	private static Logger logger = LoggerFactory.getLogger(test.class);
	
	
	@Test
	public void inserTest() throws Exception{
		
		testDTO tdto = new testDTO();
		tdto.setNum1(1);
		tdto.setStr1("2");
		
		
		udao.insertTest(tdto);
		
	}
	
	
}

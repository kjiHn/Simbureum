package com.fdx.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.fdx.dto.managerDTO;

public interface ManagerService {
	
	

	String create(Map<String, Object> map);

	Map<String, Object> detail(Map<String, Object> map);

	boolean edit(Map<String, Object> map);

	boolean remove(Map<String, Object> map);

	List<managerDTO> selectList(int post_num_pk);

	String MNGmypage(Map<String, Object> map);

}

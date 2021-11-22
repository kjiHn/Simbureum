package com.fdx.manager;

import java.util.List;
import java.util.Map;

public interface ManagerService {

	String create(Map<String, Object> map);

	Map<String, Object> detail(Map<String, Object> map);

	boolean edit(Map<String, Object> map);

	boolean remove(Map<String, Object> map);

	List<Object/* 내가만든 DTO명 */> selectList();

}

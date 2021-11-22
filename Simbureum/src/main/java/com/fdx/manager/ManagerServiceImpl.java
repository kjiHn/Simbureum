package com.fdx.manager;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService {
 @Autowired
 ManagerDao managerDao;

	
	  @Override public String create(Map<String, Object> map) { int affectRowCount
	  = this.managerDao.insert(map); if (affectRowCount == 1) { return
	  map.get("book_id").toString(); } return null;
	  
	  }
	  
	  @Override public Map<String, Object> detail(Map<String, Object> map){ return
	  this.managerDao.selectDetail(map); }
	  
	  @Override public boolean edit(Map<String, Object> map) { int affectRowCount =
	  this.managerDao.update(map); return affectRowCount == 1; }
	  
	  @Override public boolean remove(Map<String, Object> map) { int affectRowCount
	  = this.managerDao.delete(map); return affectRowCount == 1; }
	 
	@Override
	public List<Object/* 내가만든DTO */> selectList(){
	    return this.managerDao.selectList();
	}
	
 
 
 
 
}
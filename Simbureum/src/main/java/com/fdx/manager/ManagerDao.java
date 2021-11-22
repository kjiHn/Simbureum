package com.fdx.manager;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManagerDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	  public int insert(Map<String, Object> map) { return
	  this.sqlSessionTemplate.insert("book.insert", map); }
	  
	  public Map<String, Object> selectDetail(Map<String, Object> map) { return
	  this.sqlSessionTemplate.selectOne("book.select_detail", map); }
	  
	  public int update(Map<String, Object> map) { return
	  this.sqlSessionTemplate.update("book.update", map); }
	  
	  public int delete(Map<String, Object> map) { return
	  this.sqlSessionTemplate.delete("book.delete", map); }
	 
	
	public List<Object/* ��������DTO�� */> selectList() {
	    return this.sqlSessionTemplate.selectList("reportpost.reportpost");
	}
}
package com.fdx.dto;

import org.apache.ibatis.type.Alias;

@Alias("cri2")
public class Criteria2 {
	
	private int pageNum;
	private int amount;
	private int psmallc_pk;			//위치 필터
	private int search_num;			//검색 필터
	private String search_value;	//검색어
	private String post_title;		//게시글 제목 검색
	private String post_con;		//게시글 내용 검색
	private String mb_id;			//게시글 작성자 검색
	
	public Criteria2() {
		this(1, 5);
	}
	
	public Criteria2(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	//위치 필터 페이징
	public Criteria2(int pageNum, int amount, int psmallc_pk) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.psmallc_pk = psmallc_pk;
	}
	
	//검색 필터 페이징
	public Criteria2(int pageNum, int amount, int search_num, String search_value) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.search_num = search_num;
		this.search_value = search_value;
	}
	

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPsmallc_pk() {
		return psmallc_pk;
	}

	public void setPsmallc_pk(int psmallc_pk) {
		this.psmallc_pk = psmallc_pk;
	}

	public int getSearch_num() {
		return search_num;
	}

	public void setSearch_num(int search_num) {
		this.search_num = search_num;
	}

	public String getSearch_value() {
		return search_value;
	}

	public void setSearch_value(String search_value) {
		this.search_value = search_value;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_con() {
		return post_con;
	}

	public void setPost_con(String post_con) {
		this.post_con = post_con;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	
	
	
	
}


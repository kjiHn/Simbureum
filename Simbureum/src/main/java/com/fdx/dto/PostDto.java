package com.fdx.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("post")
public class PostDto {

	private int post_num_pk;	//게시글번호
	private int mb_num_pk;		//회원번호
	private String post_title;	//제목
	private String post_con;	//내용
	private Date post_dline;	//마감일
	private int post_numof;		//심부름꾼수
	private int psmallc_pk;		//위치 소분류번호
	private int post_price;		//심부름 가격
	private int post_views;		//조회수
	private Date post_date;		//작성일
	
	public int getPost_num_pk() {
		return post_num_pk;
	}
	public void setPost_num_pk(int post_num_pk) {
		this.post_num_pk = post_num_pk;
	}
	
	public int getMb_num_pk() {
		return mb_num_pk;
	}
	public void setMb_num_pk(int mb_num_pk) {
		this.mb_num_pk = mb_num_pk;
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
	
	public Date getPost_dline() {
		return post_dline;
	}
	public void setPost_dline(Date post_dline) {
		this.post_dline = post_dline;
	}
	
	public int getPost_numof() {
		return post_numof;
	}
	public void setPost_numof(int post_numof) {
		this.post_numof = post_numof;
	}
	
	public int getPsmallc_pk() {
		return psmallc_pk;
	}
	public void setPsmallc_pk(int psmallc_pk) {
		this.psmallc_pk = psmallc_pk;
	}
	
	public int getPost_price() {
		return post_price;
	}
	public void setPost_price(int post_price) {
		this.post_price = post_price;
	}
	
	public int getPost_views() {
		return post_views;
	}
	public void setPost_views(int post_views) {
		this.post_views = post_views;
	}
	
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	
}

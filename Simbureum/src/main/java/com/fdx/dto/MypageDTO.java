package com.fdx.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class MypageDTO {
	
	private int post_num_pk;		//게시글번호
	private int mb_num_pk;			//작성자 회원번호
	private String post_title;		//제목
	private String post_con;		//내용
	private Date post_dline;		//마감일
	private int post_numof;			//심부름꾼 수
	private int psmallc_pk;			//위치 소분류번호
	private int post_price;			//심부름 가격
	private int post_views;			//조회수
	@JsonFormat(pattern = "yyyy-MM-dd") //Ajax에 날짜형 데이터로 주기 위해 
	private Date post_date;			//작성일
	private String sel_vr;			//선택된 심부름꾼 id
	
	private String mb_id;			//작성자 id
	
	private String pbigc_name;		//위치 대분류 이름
	private String psmallc_name;	//위치 소분류 이름
	
	private int vh_hsn_pk;
	private int ap_apn_pk;
	
	private String plant;
	
	@JsonFormat(pattern = "yyyy-MM-dd") //Ajax에 날짜형 데이터로 주기 위해 
	private Date vh_date;
	
	
	
	public String getPlant() {
		return plant;
	}
	public void setPlant(String plant) {
		this.plant = plant;
	}
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
	public String getSel_vr() {
		return sel_vr;
	}
	public void setSel_vr(String sel_vr) {
		this.sel_vr = sel_vr;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getPbigc_name() {
		return pbigc_name;
	}
	public void setPbigc_name(String pbigc_name) {
		this.pbigc_name = pbigc_name;
	}
	public String getPsmallc_name() {
		return psmallc_name;
	}
	public void setPsmallc_name(String psmallc_name) {
		this.psmallc_name = psmallc_name;
	}
	public int getVh_hsn_pk() {
		return vh_hsn_pk;
	}
	public void setVh_hsn_pk(int vh_hsn_pk) {
		this.vh_hsn_pk = vh_hsn_pk;
	}
	public int getAp_apn_pk() {
		return ap_apn_pk;
	}
	public void setAp_apn_pk(int ap_apn_pk) {
		this.ap_apn_pk = ap_apn_pk;
	}
	public Date getVh_date() {
		return vh_date;
	}
	public void setVh_date(Date vh_date) {
		this.vh_date = vh_date;
	}
	
	
	
	
	

}

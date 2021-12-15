package com.fdx.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

@Alias("post")
public class PostDto {

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
	private double post_lat;		//위도
	private double post_lng;		//경도
	
	private String mb_id;			//작성자 id
	
	private String pbigc_name;		//위치 대분류 이름
	private String pmidc_name;		//위치 중분류 이름
	private String psmallc_name;	//위치 소분류 이름
	private int pmidc_pk;			//위치 중분류 번호(심부름 수정할 때 필요함)
	
	private Date vh_date;			//완료일
	
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
	
	public String getPmidc_name() {
		return pmidc_name;
	}
	public void setPmidc_name(String pmidc_name) {
		this.pmidc_name = pmidc_name;
	}
	
	public String getPsmallc_name() {
		return psmallc_name;
	}
	public void setPsmallc_name(String psmallc_name) {
		this.psmallc_name = psmallc_name;
	}
	
	public int getPmidc_pk() {
		return pmidc_pk;
	}
	public void setPmidc_pk(int pmidc_pk) {
		this.pmidc_pk = pmidc_pk;
	}
	
	public Date getVh_date() {
		return vh_date;
	}
	public void setVh_date(Date vh_date) {
		this.vh_date = vh_date;
	}
	
	public double getPost_lat() {
		return post_lat;
	}
	public void setPost_lat(double post_lat) {
		this.post_lat = post_lat;
	}
	
	public double getPost_lng() {
		return post_lng;
	}
	public void setPost_lng(double post_lng) {
		this.post_lng = post_lng;
	}
	
	
	
}

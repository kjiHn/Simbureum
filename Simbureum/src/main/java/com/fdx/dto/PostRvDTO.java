package com.fdx.dto;

import java.util.Date;

public class PostRvDTO {
	
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
	private String sel_vr;
	
	private int vr_rvn_pk;       //리뷰번호	   
	private String mb_id_pk;       //회원아이디
	private int vr_grd;          //별점	
	private String vr_rvc;       //리뷰내용
	private Date vr_date;        //작성일
	private String vr_mbid;
	
	
	
	public PostRvDTO() {
		// TODO Auto-generated constructor stub
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
	public int getVr_rvn_pk() {
		return vr_rvn_pk;
	}
	public void setVr_rvn_pk(int vr_rvn_pk) {
		this.vr_rvn_pk = vr_rvn_pk;
	}
	public String getMb_id_pk() {
		return mb_id_pk;
	}
	public void setMb_id_pk(String mb_id_pk) {
		this.mb_id_pk = mb_id_pk;
	}
	public int getVr_grd() {
		return vr_grd;
	}
	public void setVr_grd(int vr_grd) {
		this.vr_grd = vr_grd;
	}
	public String getVr_rvc() {
		return vr_rvc;
	}
	public void setVr_rvc(String vr_rvc) {
		this.vr_rvc = vr_rvc;
	}
	public Date getVr_date() {
		return vr_date;
	}
	public void setVr_date(Date vr_date) {
		this.vr_date = vr_date;
	}
	public String getVr_mbid() {
		return vr_mbid;
	}
	public void setVr_mbid(String vr_mbid) {
		this.vr_mbid = vr_mbid;
	}
	
	
	
	
	
	
	

}

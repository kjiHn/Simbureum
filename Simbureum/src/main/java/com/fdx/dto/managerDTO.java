package com.fdx.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("manager")
public class managerDTO {

	//멤버테이블
	private int mb_num_pk; //회원번호
	private String mb_id; //아이디
	private String mb_pswd; //비밀번호
	private String mb_name; //이름
	private String mb_emaile; //이메일
	private String mb_pnb; //전화번호
	private String mb_date;//회원가입한 일시
	
	//소도시
	private int psmalllc_pk; //소분류 번호
	private String psmalllc_name; //소분류 이름
	
	//대도시
	private int pbigc_pk; //대분류 번호
	private String pbigc_name; //대분류 이름
	
	//게시글
	private int post_num_pk;	//게시글번호
	private String post_title;	//제목
	private String post_con;	//내용
	private Date post_dline;	//마감일
	private int post_numof;		//심부름꾼수
	private int psmallc_pk;		//위치 소분류번호
	private int post_price;		//심부름 가격
	private int post_views;		//조회수
	private Date post_date;		//작성일
	
	//신고
	private int rp_num_pk; //경고번호
	private int rp_target_mbn;//신고당한회원번호
	private int rp_mbn; //신고한회원번호
	private int rp_lnb; //신고당한곳번호
	private int rc_num_pk;//카테고리번호
	private String rp_content;//내용
	private Date rp_date;	//신고일
	
	public int getMb_num_pk() {
		return mb_num_pk;
	}
	public void setMb_num_pk(int mb_num_pk) {
		this.mb_num_pk = mb_num_pk;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_pswd() {
		return mb_pswd;
	}
	public void setMb_pswd(String mb_pswd) {
		this.mb_pswd = mb_pswd;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getMb_emaile() {
		return mb_emaile;
	}
	public void setMb_emaile(String mb_emaile) {
		this.mb_emaile = mb_emaile;
	}
	public String getMb_pnb() {
		return mb_pnb;
	}
	public void setMb_pnb(String mb_pnb) {
		this.mb_pnb = mb_pnb;
	}
	public String getMb_date() {
		return mb_date;
	}
	public void setMb_date(String mb_date) {
		this.mb_date = mb_date;
	}
	public int getPsmalllc_pk() {
		return psmalllc_pk;
	}
	public void setPsmalllc_pk(int psmalllc_pk) {
		this.psmalllc_pk = psmalllc_pk;
	}
	public int getPbigc_pk() {
		return pbigc_pk;
	}
	public void setPbigc_pk(int pbigc_pk) {
		this.pbigc_pk = pbigc_pk;
	}
	public String getPsmalllc_name() {
		return psmalllc_name;
	}
	public void setPsmalllc_name(String psmalllc_name) {
		this.psmalllc_name = psmalllc_name;
	}
	public String getPbigc_name() {
		return pbigc_name;
	}
	public void setPbigc_name(String pbigc_name) {
		this.pbigc_name = pbigc_name;
	}
	public int getPost_num_pk() {
		return post_num_pk;
	}
	public void setPost_num_pk(int post_num_pk) {
		this.post_num_pk = post_num_pk;
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
	public int getRp_num_pk() {
		return rp_num_pk;
	}
	public void setRp_num_pk(int rp_num_pk) {
		this.rp_num_pk = rp_num_pk;
	}
	public int getRp_target_mbn() {
		return rp_target_mbn;
	}
	public void setRp_target_mbn(int rp_target_mbn) {
		this.rp_target_mbn = rp_target_mbn;
	}
	public int getRp_mbn() {
		return rp_mbn;
	}
	public void setRp_mbn(int rp_mbn) {
		this.rp_mbn = rp_mbn;
	}
	public int getRp_lnb() {
		return rp_lnb;
	}
	public void setRp_lnb(int rp_lnb) {
		this.rp_lnb = rp_lnb;
	}
	public int getRc_num_pk() {
		return rc_num_pk;
	}
	public void setRc_num_pk(int rc_num_pk) {
		this.rc_num_pk = rc_num_pk;
	}
	public String getRp_content() {
		return rp_content;
	}
	public void setRp_con(String rp_content) {
		this.rp_content = rp_content;
	}
	public Date getRp_date() {
		return rp_date;
	}
	public void setRp_date(Date rp_date) {
		this.rp_date = rp_date;
	}

	
}

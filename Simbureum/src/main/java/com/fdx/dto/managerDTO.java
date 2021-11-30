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
	private int psmallc_pk; //소분류 번호
	private String psmallc_name; //소분류 이름
	
	//대도시
	private int pbigc_pk; //대분류 번호
	private String pbigc_name; //대분류 이름
	
	//게시글
	private int post_num_pk;	//게시글번호
	private String post_title;	//제목
	private String post_con;	//내용
	private Date post_dline;	//마감일
	private int post_numof;		//심부름꾼수
	private int post_price;		//심부름 가격
	private int post_views;		//조회수
	private Date post_date;		//작성일
	
	//게시글 신고
	private int porp_num_pk;	//경고번호
	private int porp_target_mbn;	//신고당한회원번호
	private int porp_mbn;	//신고한회원번호
	private int porp_lnb;	//해당 게시글 번호
	private String porp_con;	//내용
	private Date porp_date;	//신고일
	
	//리뷰 신고
	private int rerp_num_pk;	//경고번호
	private int rerp_target_mbn;	//신고당한회원번호
	private int rerp_mbn;	//신고한회원번호
	private int rerp_lnb;	//해당 리뷰 번호
	private String rerp_con;	//내용
	private Date rerp_date;	//신고일
	
	public int getPorp_num_pk() {
		return porp_num_pk;
	}
	public void setPorp_num_pk(int porp_num_pk) {
		this.porp_num_pk = porp_num_pk;
	}
	public int getPorp_target_mbn() {
		return porp_target_mbn;
	}
	public void setPorp_target_mbn(int porp_target_mbn) {
		this.porp_target_mbn = porp_target_mbn;
	}
	public int getPorp_mbn() {
		return porp_mbn;
	}
	public void setPorp_mbn(int porp_mbn) {
		this.porp_mbn = porp_mbn;
	}
	public int getPorp_lnb() {
		return porp_lnb;
	}
	public void setPorp_lnb(int porp_lnb) {
		this.porp_lnb = porp_lnb;
	}
	public String getPorp_con() {
		return porp_con;
	}
	public void setPorp_con(String porp_con) {
		this.porp_con = porp_con;
	}
	public Date getPorp_date() {
		return porp_date;
	}
	public void setPorp_date(Date porp_date) {
		this.porp_date = porp_date;
	}
	public int getRerp_num_pk() {
		return rerp_num_pk;
	}
	public void setRerp_num_pk(int rerp_num_pk) {
		this.rerp_num_pk = rerp_num_pk;
	}
	public int getRerp_target_mbn() {
		return rerp_target_mbn;
	}
	public void setRerp_target_mbn(int rerp_target_mbn) {
		this.rerp_target_mbn = rerp_target_mbn;
	}
	public int getRerp_mbn() {
		return rerp_mbn;
	}
	public void setRerp_mbn(int rerp_mbn) {
		this.rerp_mbn = rerp_mbn;
	}
	public int getRerp_lnb() {
		return rerp_lnb;
	}
	public void setRerp_lnb(int rerp_lnb) {
		this.rerp_lnb = rerp_lnb;
	}
	public String getRerp_con() {
		return rerp_con;
	}
	public void setRerp_con(String rerp_con) {
		this.rerp_con = rerp_con;
	}
	public Date getRerp_date() {
		return rerp_date;
	}
	public void setRerp_date(Date rerp_date) {
		this.rerp_date = rerp_date;
	}
	//공지
	private int ntc_num_pk;
	private String ntc_title;
	private String ntc_con;
	private Date ntc_date;
	private int ntc_views;
	
	public int getNtc_views() {
		return ntc_views;
	}
	public void setNtc_views(int ntc_views) {
		this.ntc_views = ntc_views;
	}
	public int getNtc_num_pk() {
		return ntc_num_pk;
	}
	public void setNtc_num_pk(int ntc_num_pk) {
		this.ntc_num_pk = ntc_num_pk;
	}
	public String getNtc_title() {
		return ntc_title;
	}
	public void setNtc_title(String ntc_title) {
		this.ntc_title = ntc_title;
	}
	public String getNtc_con() {
		return ntc_con;
	}
	public void setNtc_con(String ntc_con) {
		this.ntc_con = ntc_con;
	}
	public Date getNtc_date() {
		return ntc_date;
	}
	public void setNtc_date(Date ntc_date) {
		this.ntc_date = ntc_date;
	}
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
	public int getPsmallc_pk() {
		return psmallc_pk;
	}
	public void setPsmallc_pk(int psmallc_pk) {
		this.psmallc_pk = psmallc_pk;
	}
	public String getPsmallc_name() {
		return psmallc_name;
	}
	public void setPsmallc_name(String psmallc_name) {
		this.psmallc_name = psmallc_name;
	}
	public int getPbigc_pk() {
		return pbigc_pk;
	}
	public void setPbigc_pk(int pbigc_pk) {
		this.pbigc_pk = pbigc_pk;
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

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
	
	//탈퇴한 유저 정보
	private int fw_num_pk;	//탈퇴한 회원 번호
	private String fw_name;	//탈퇴한 회원 일므
	private String fw_email;	//탈퇴한 회원 이메일
	
	public int getFw_num_pk() {
		return fw_num_pk;
	}
	public void setFw_num_pk(int fw_num_pk) {
		this.fw_num_pk = fw_num_pk;
	}
	public String getFw_name() {
		return fw_name;
	}
	public void setFw_name(String fw_name) {
		this.fw_name = fw_name;
	}
	public String getFw_email() {
		return fw_email;
	}
	public void setFw_email(String fw_email) {
		this.fw_email = fw_email;
	}
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
	private int report;//게시글신고당한횟수
	private String mbn_id; //신고한 회원
    private String porping_mbn; //게시글 신고한 회원
	private String rerping_mbn; //리뷰 신고한 회원
	
	public String getRerping_mbn() {
		return rerping_mbn;
	}
	public void setRerping_mbn(String rerping_mbn) {
		this.rerping_mbn = rerping_mbn;
	}
	public String getPorping_mbn() {
		return porping_mbn;
	}
	public void setPorping_mbn(String porping_mbn) {
		this.porping_mbn = porping_mbn;
	}
	public String getMbn_id() {
		return mbn_id;
	}
	public void setMbn_id(String mbn_id) {
		this.mbn_id = mbn_id;
	}
	//리뷰 신고
	private int rerp_num_pk;	//경고번호
	private int rerp_target_mbn;	//신고당한회원번호
	private int rerp_mbn;	//신고한회원번호
	private int rerp_lnb;	//해당 리뷰 번호
	private String rerp_con;	//내용
	private Date rerp_date;	//신고일
	private int review;//리뷰신고당한횟수
	private String rembn_id; //리뷰신고한회원
	
	public String getRembn_id() {
		return rembn_id;
	}
	public void setRembn_id(String rembn_id) {
		this.rembn_id = rembn_id;
	}
	//심부름꾼 리뷰
	private int vr_rvn_pk; //리뷰번호
	private String vr_rvc; //리뷰내용
	private String vr_mbid; //리뷰받은사람
	private Date vr_date; //리뷰작성일
	
	
	public Date getVr_date() {
		return vr_date;
	}
	public void setVr_date(Date vr_date) {
		this.vr_date = vr_date;
	}
	public int getVr_rvn_pk() {
		return vr_rvn_pk;
	}
	public void setVr_rvn_pk(int vr_rvn_pk) {
		this.vr_rvn_pk = vr_rvn_pk;
	}
	public String getVr_rvc() {
		return vr_rvc;
	}
	public void setVr_rvc(String vr_rvc) {
		this.vr_rvc = vr_rvc;
	}
	public String getVr_mbid() {
		return vr_mbid;
	}
	public void setVr_mbid(String vr_mbid) {
		this.vr_mbid = vr_mbid;
	}
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
	public int getReport() {
		return report;
	}
	public void setReport(int report) {
		this.report = report;
	}
	public int getReview() {
		return review;
	}
	public void setReview(int review) {
		this.review = review;
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

package com.fdx.dto;

import java.sql.Date;

public class Vlntr_RvDTO {
	private int vr_rvn_pk;       //리뷰번호
	private int post_num_pk;     //게시글 번호
	private String mb_id_pk;       //회원아이디
	private int vr_grd;          //별점	
	private String vr_rvc;       //리뷰내용
	private Date vr_date;        //작성일
	private String vr_mbid;
	
	
	//신고
	private int RERP_NUM_PK;
	private int RERP_TARGET_MBN;
	private int RERP_MBN;
	private int RERP_LNB;
	private String RERP_CONTENT;
	private Date RERP_DATE;

	
	
	
	public Vlntr_RvDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getVr_rvn_pk() {
		return vr_rvn_pk;
	}
	public void setVr_rvn_pk(int vr_rvn_pk) {
		this.vr_rvn_pk = vr_rvn_pk;
	}
	public int getPost_num_pk() {
		return post_num_pk;
	}
	public void setPost_num_pk(int post_num_pk) {
		this.post_num_pk = post_num_pk;
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
	
	
	
	public int getRERP_NUM_PK() {
		return RERP_NUM_PK;
	}

	public void setRERP_NUM_PK(int rERP_NUM_PK) {
		RERP_NUM_PK = rERP_NUM_PK;
	}

	public int getRERP_TARGET_MBN() {
		return RERP_TARGET_MBN;
	}

	public void setRERP_TARGET_MBN(int rERP_TARGET_MBN) {
		RERP_TARGET_MBN = rERP_TARGET_MBN;
	}

	public int getRERP_MBN() {
		return RERP_MBN;
	}

	public void setRERP_MBN(int rERP_MBN) {
		RERP_MBN = rERP_MBN;
	}

	public int getRERP_LNB() {
		return RERP_LNB;
	}

	public void setRERP_LNB(int rERP_LNB) {
		RERP_LNB = rERP_LNB;
	}

	public String getRERP_CONTENT() {
		return RERP_CONTENT;
	}

	public void setRRERP_CONTENT(String rERP_CONTENT) {
		RERP_CONTENT = rERP_CONTENT;
	}

	public Date getRERP_DATE() {
		return RERP_DATE;
	}

	public void setRERP_DATE(Date rERP_DATE) {
		RERP_DATE = rERP_DATE;
	}

	@Override
	public String toString() {
		return "Vlntr_RvDTO [vr_rvn_pk=" + vr_rvn_pk + ", post_num_pk=" + post_num_pk + ", mb_id_pk=" + mb_id_pk
				+ ", vr_grd=" + vr_grd + ", vr_rvc=" + vr_rvc + ", vr_date=" + vr_date + ", vr_mbid=" + vr_mbid
				+ ", RERP_NUM_PK=" + RERP_NUM_PK + ", RERP_TARGET_MBN=" + RERP_TARGET_MBN + ", RERP_MBN=" + RERP_MBN
				+ ", RERP_LNB=" + RERP_LNB + ", RERP_CONTENT=" + RERP_CONTENT + ", RERP_DATE=" + RERP_DATE + "]";
	}

	
	
	
}

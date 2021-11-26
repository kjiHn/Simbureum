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
	
	
	
	@Override
	public String toString() {
		return "Vlntr_RvDTO [vr_rvn_pk=" + vr_rvn_pk + ", post_num_pk=" + post_num_pk + ", mb_id_pk=" + mb_id_pk
				+ ", vr_grd=" + vr_grd + ", vr_rvc=" + vr_rvc + ", vr_date=" + vr_date + ", vr_mbid=" + vr_mbid + "]";
	}
	
	
}

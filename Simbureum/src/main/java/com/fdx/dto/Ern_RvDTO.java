package com.fdx.dto;

import java.sql.Date;

public class Ern_RvDTO {
	private int er_num_pk;     //리뷰 번호 
	private int post_num_pk;   //게시글 번호
	private String mb_id_pk;   //작성자
    private int er_grd;        //별점
    private String er_rvc;     //리뷰내용
    private Date er_date;      //작성일
    private String er_mbid;    //받은사람
    
    
    
    public Ern_RvDTO() {}



	public int getEr_num_pk() {
		return er_num_pk;
	}



	public void setEr_num_pk(int er_num_pk) {
		this.er_num_pk = er_num_pk;
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



	public int getEr_grd() {
		return er_grd;
	}



	public void setEr_grd(int er_grd) {
		this.er_grd = er_grd;
	}



	public String getEr_rvc() {
		return er_rvc;
	}



	public void setEr_rvc(String er_rvc) {
		this.er_rvc = er_rvc;
	}



	public Date getEr_date() {
		return er_date;
	}



	public void setEr_date(Date er_date) {
		this.er_date = er_date;
	}



	public String getEr_mbid() {
		return er_mbid;
	}



	public void setEr_mbid(String er_mbid) {
		this.er_mbid = er_mbid;
	}



	@Override
	public String toString() {
		return "Ern_RvDTO [er_num_pk=" + er_num_pk + ", post_num_pk=" + post_num_pk + ", mb_id_pk=" + mb_id_pk
				+ ", er_grd=" + er_grd + ", er_rvc=" + er_rvc + ", er_date=" + er_date + ", er_mbid=" + er_mbid + "]";
	}
    
    
}

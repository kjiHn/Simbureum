package com.fdx.dto;

import org.apache.ibatis.type.Alias;

@Alias("apPost")
public class ApPostDto {
	
	private int ap_apn_pk;		//지원번호
	private int post_num_pk;	//게시글 번호
	private int mb_num_pk;		//회원번호
	
	public int getAp_apn_pk() {
		return ap_apn_pk;
	}
	public void setAp_apn_pk(int ap_apn_pk) {
		this.ap_apn_pk = ap_apn_pk;
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
	
	

}

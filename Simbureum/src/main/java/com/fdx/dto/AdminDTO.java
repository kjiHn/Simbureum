package com.fdx.dto;

import org.apache.ibatis.type.Alias;

@Alias("admin")
public class AdminDTO {
	
	private String mng_id_pk;
	private String mng_pswd;
	
	
	public AdminDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public AdminDTO(String mng_id_pk, String mng_pswd) {
		super();
		this.mng_id_pk = mng_id_pk;
		this.mng_pswd = mng_pswd;
	}
	
	public String getMng_id_pk() {
		return mng_id_pk;
	}
	public void setMng_id_pk(String mng_id_pk) {
		this.mng_id_pk = mng_id_pk;
	}
	public String getMng_pswd() {
		return mng_pswd;
	}
	public void setMng_pswd(String mng_pswd) {
		this.mng_pswd = mng_pswd;
	}
	
	
	
	
	
}

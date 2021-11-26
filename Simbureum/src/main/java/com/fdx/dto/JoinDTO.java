package com.fdx.dto;

import java.sql.Date;

public class JoinDTO {
	private int mb_num_pk;
	private String mb_id;
	private String mb_pswd;
	private String mb_name;
	private String mb_emaile;
	private String mb_pnb;
	private Date mb_date;
	
	public JoinDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JoinDTO(int mb_num_pk, String mb_id, String mb_pswd, String mb_name, String mb_emaile, String mb_pnb,
			Date mb_date) {
		this.mb_num_pk = mb_num_pk;
		this.mb_id = mb_id;
		this.mb_pswd = mb_pswd;
		this.mb_name = mb_name;
		this.mb_emaile = mb_emaile;
		this.mb_pnb = mb_pnb;
		this.mb_date = mb_date;
	}
	
	public JoinDTO(int mb_num_pk, String mb_id, String mb_pswd, String mb_name, String mb_emaile, String mb_pnb
			) {
		this.mb_num_pk = mb_num_pk;
		this.mb_id = mb_id;
		this.mb_pswd = mb_pswd;
		this.mb_name = mb_name;
		this.mb_emaile = mb_emaile;
		this.mb_pnb = mb_pnb;
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
	public Date getMb_date() {
		return mb_date;
	}
	public void setMb_date(Date mb_date) {
		this.mb_date = mb_date;
	}
	
	
	
	
	
	
	
	
}

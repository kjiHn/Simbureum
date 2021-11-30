package com.fdx.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("poReport")
public class PoReportDto {
	
	private int porp_num_pk;		//신고번호
	private int porp_target_mbn;	//신고당한 회원번호
	private int porp_mbn;			//신고한 회원번호
	private int porp_lnb;			//해당 게시글 번호
	private String porp_con;		//내용
	private Date porp_date;			//신고일
	
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
	
	

}

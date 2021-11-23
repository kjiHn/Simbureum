package com.fdx.dto;

import org.apache.ibatis.type.Alias;

@Alias("loc")
public class LocDto {

	private int pbigc_pk;			//위치 대분류 번호
	private String pbigc_name;		//위치 대분류 이름
	private int psmallc_pk;			//위치 소분류 번호
	private String psmallc_name;	//위치 소분류 이름
	
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
	
	
}

package com.fdx.dto;

import org.apache.ibatis.type.Alias;

@Alias("cri")
public class Criteria {
	
	private int pageNum;
	private int amount;
	private int mb_num_pk;
	private String mb_id;
	private String mb_id_pk;
	private String er_mbid;
	private String vr_mbid;
	
	public Criteria() {
		this(1, 5);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public Criteria(int pageNum, int amount,int mb_num_pk) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.mb_num_pk = mb_num_pk;
	}
	public Criteria(int pageNum, int amount, String mb_id) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.mb_id = mb_id;
	}
	public Criteria(int pageNum, int amount, String mb_id, String mb_id_pk) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.mb_id = mb_id;
		this.mb_id_pk = mb_id_pk;
	}
	
	public Criteria(int pageNum, int amount, String mb_id, String mb_id_pk, String er_mbid) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.mb_id = mb_id;
		this.mb_id_pk = mb_id_pk;
		this.er_mbid = er_mbid;
	}
	
	public Criteria(int pageNum, int amount, String mb_id, String mb_id_pk, String er_mbid, String vr_mbid) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.mb_id = mb_id;
		this.mb_id_pk = mb_id_pk;
		this.er_mbid = er_mbid;
		this.vr_mbid = vr_mbid;
	}
	
	

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
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

	public String getMb_id_pk() {
		return mb_id_pk;
	}

	public void setMb_id_pk(String mb_id_pk) {
		this.mb_id_pk = mb_id_pk;
	}

	public String getEr_mbid() {
		return er_mbid;
	}

	public void setEr_mbid(String er_mbid) {
		this.er_mbid = er_mbid;
	}

	public String getVr_mbid() {
		return vr_mbid;
	}

	public void setVr_mbid(String vr_mbid) {
		this.vr_mbid = vr_mbid;
	}

	
	
	
	
}


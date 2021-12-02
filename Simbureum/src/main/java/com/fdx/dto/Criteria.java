package com.fdx.dto;

public class Criteria {
	
	private int pageNum;
	private int amount;
	private int mb_num_pk;
	private String mb_id;
	
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
	public Criteria(int pageNum, int amount,String mb_id) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.mb_id = mb_id;
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

	
	
	
	
}


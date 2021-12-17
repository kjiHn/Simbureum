package com.fdx.dto;

import org.apache.ibatis.type.Alias;

@Alias("volRe")
public class VolReDto {

	private String mb_id;			//지원한 심부름꾼 id
	
	private int vrRe_count;			//심부름꾼 각각의 리뷰 수
	private double vrRe_avg;		//심부름꾼 각각의 리뷰 평점

	
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	
	public int getVrRe_count() {
		return vrRe_count;
	}
	public void setVrRe_count(int vrRe_count) {
		this.vrRe_count = vrRe_count;
	}
	
	public double getVrRe_avg() {
		return vrRe_avg;
	}
	public void setVrRe_avg(double vrRe_avg) {
		this.vrRe_avg = vrRe_avg;
	}
	@Override
	public String toString() {
		return "VolReDto [mb_id=" + mb_id + ", vrRe_count=" + vrRe_count + ", vrRe_avg=" + vrRe_avg + "]";
	}
	
	
	
	
}

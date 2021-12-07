package com.fdx.dto;

import org.apache.ibatis.type.Alias;

//심부름꾼 선택했을 때와 심부름꾼 지원 취소할 때 쓰는 Dto
@Alias("postVol")
public class PostVolDto {

	private int post_num_pk;		//지원한 게시글 번호
	private String sel_vr;			//선택된 심부름꾼 id
	
	private int mb_num_pk;			//회원 번호

	public int getPost_num_pk() {
		return post_num_pk;
	}
	public void setPost_num_pk(int post_num_pk) {
		this.post_num_pk = post_num_pk;
	}

	public String getSel_vr() {
		return sel_vr;
	}
	public void setSel_vr(String sel_vr) {
		this.sel_vr = sel_vr;
	}

	public int getMb_num_pk() {
		return mb_num_pk;
	}
	public void setMb_num_pk(int mb_num_pk) {
		this.mb_num_pk = mb_num_pk;
	}
	
	
	
	
	
}

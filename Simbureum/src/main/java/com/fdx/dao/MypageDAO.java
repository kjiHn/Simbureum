package com.fdx.dao;

import java.util.List;

import com.fdx.dto.MypageDTO;

public interface MypageDAO {
	
	
	public List<MypageDTO> myUploadPost(int mb_num_pk);
	public List<MypageDTO> mySupPost(int mb_num_pk);
	public List<MypageDTO> myFinshPost(int mb_num_pk);
	public void hitup(int post_num_pk);
	public int supPostDel(MypageDTO mypageDTO);
}

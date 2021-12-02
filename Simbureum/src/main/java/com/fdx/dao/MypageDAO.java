package com.fdx.dao;

import java.util.List;

import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;

public interface MypageDAO {
	
	
	public List<MypageDTO> myUploadPost(Criteria cri);
	public List<MypageDTO> mySupPost(Criteria cri);
	public List<MypageDTO> myFinshPost(Criteria cri);
	public void hitup(int post_num_pk);
	public int supPostDel(MypageDTO mypageDTO);
	public int uptotalPage(Criteria cri);
	public int suptotalPage(Criteria cri);
	public int finshtotalPage(Criteria cri);
}

package com.fdx.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fdx.dto.Criteria;
import com.fdx.dto.MypageDTO;
import com.fdx.dto.PostDto;
import com.fdx.dto.PostVolDto;
import com.fdx.dto.VolReDto;

@Repository
public class MypageDAOImpl implements MypageDAO{

	@Inject
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public List<MypageDTO> myUploadPost(Criteria cri) {	
		
		return sqlSessionTemplate.selectList("com.fdx.dao.MypageDAO.getListWithPaging", cri);
	}


	@Override
	public void hitup(int post_num_pk) {
		System.out.println("조회수 증가");
		sqlSessionTemplate.update("com.fdx.dao.MypageDAO.hitup", post_num_pk);
		
	}


	@Override
	public List<MypageDTO> mySupPost(Criteria cri) {
		
		return sqlSessionTemplate.selectList("com.fdx.dao.MypageDAO.mySupPost", cri);
	}


	@Override
	public List<MypageDTO> myFinshPost(Criteria cri) {
		return sqlSessionTemplate.selectList("com.fdx.dao.MypageDAO.myFinshPost", cri);
	}


	@Override
	public int supPostDel(MypageDTO mypageDTO) {
		return sqlSessionTemplate.delete("com.fdx.dao.MypageDAO.supDel", mypageDTO);
		
	}


	@Override
	public int uptotalPage(Criteria cri) {
		return sqlSessionTemplate.selectOne("com.fdx.dao.MypageDAO.uptotalPage", cri);
	}



	@Override
	public int suptotalPage(Criteria cri) {
		
		return sqlSessionTemplate.selectOne("com.fdx.dao.MypageDAO.suptotalPage", cri);
	}


	@Override
	public int finshtotalPage(Criteria cri) {
		return sqlSessionTemplate.selectOne("com.fdx.dao.MypageDAO.finshtotalPage", cri);
	}
	
	@Override
	public PostDto selOneWrittenPost(int postNum) {
		return sqlSessionTemplate.selectOne("selOneWrittenPost", postNum);
	}
	
	@Override
	public int checkVol(int postNum) {
		return sqlSessionTemplate.selectOne("checkVol", postNum);
	}
	
	@Override
	public int checkNumOfVol(int postNum) {
		return sqlSessionTemplate.selectOne("checkNumOfVol", postNum);
	}

	@Override
	public List<VolReDto> selVolRe(int postNum) {
		return sqlSessionTemplate.selectList("selVolRe", postNum);
	}

	@Override
	public void updateSelVol(PostVolDto postVolDto) {
		sqlSessionTemplate.update("selectedVol", postVolDto);
	}

	@Override
	public void insertVolHis(int postNum) {
		sqlSessionTemplate.insert("insertVolHis", postNum);
	}

	@Override
	public void deletePost(int postNum) {
		sqlSessionTemplate.delete("deletePost", postNum);
	}


	@Override
	public void updatePost(PostDto post) {
		sqlSessionTemplate.update("updatePost", post);
	}

}

package com.java.webproject.main;

import java.util.List;

import com.java.webproject.model.LikeEntity;
import com.java.webproject.model.MatZipDTO;
import com.java.webproject.model.MatZipDomain;
import com.java.webproject.model.MatZipEntity;
import com.java.webproject.model.UserEntity;

public interface MainMapper {

	List<MatZipDomain> matZipSearch(MatZipDTO p);
	int selMaxPageNum(MatZipDTO p);
	//디테일창
	MatZipEntity viewDetail(int m_pk);
	
	//조회수 상승 
	void insViewCount(int m_pk);
	
	//프로필 창 리스트 
	UserEntity selUser(UserEntity param);
	
	//프로필 이미지 등록 
	int updUser(UserEntity p);
	
	//좋아요 리스트
	List<LikeEntity> likeList(int u_pk);
	
	//좋아요 추가 
	int  insLike(MatZipDomain p);
	
	//맛집 1개찾기(좋아용)
	MatZipDomain selMatzip(MatZipDomain p);
	
	//좋아요 중복확인
	LikeEntity selLike(MatZipDomain p);
	//좋아요 리스트 삭제
	int delLike(LikeEntity p);
	
	
}

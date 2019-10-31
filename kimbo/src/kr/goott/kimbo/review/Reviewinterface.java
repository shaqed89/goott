package kr.goott.kimbo.review;

import java.util.List;

public interface Reviewinterface {
	//리스트 불러오기
	public List<ReviewVO> getReview();
	//글 등록하기
	public int insertReview(ReviewVO vo);
	
	//댓글 불러오기
}

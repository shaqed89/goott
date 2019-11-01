package kr.goott.kimbo.review;

import java.util.List;

public interface Reviewinterface {
	//리스트 불러오기
	public List<ReviewVO> getReview();
	//글 등록하기
	public int insertReview(ReviewVO vo);
	//글 정보가져오기
	public void selectReview(ReviewVO vo);
	//글 수정하기
	public int updateReview(ReviewVO vo);
	//글 삭제
	public void deleteReview(ReviewVO vo);
	
	//댓글 불러오기
}

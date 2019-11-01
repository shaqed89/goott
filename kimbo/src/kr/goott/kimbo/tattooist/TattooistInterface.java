package kr.goott.kimbo.tattooist;

import java.util.List;

public interface TattooistInterface {
	//작가 목록
	public List<TattooistVO> getTattooist();
	//작가 정렬
	//글내용보기
	public void selectData(TattooistVO vo);
	
	public List<TattooistVO> tattooList(String userId);
	//글등록
	public int insertData(TattooistVO vo);
	//글수정
	public int updateData(TattooistVO vo);
	//글삭제
	public void deleteData(TattooistVO vo);
	//조회수 카운트
	public void hitCount(int num);
	//댓글 등록, 댓글 선택
	public int replyInsertSelect(DetailBoardVO vo);
	//댓글 선택
	public List<DetailBoardVO> replySelect(int num);
	//댓글 삭제
	public void replyDelete(int no);
	//댓글 수정
	public int replyUpdate(DetailBoardVO vo);
}

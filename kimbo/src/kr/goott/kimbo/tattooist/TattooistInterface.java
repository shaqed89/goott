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
}

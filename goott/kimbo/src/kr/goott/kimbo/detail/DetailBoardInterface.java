package kr.goott.kimbo.detail;

import java.util.List;

public interface DetailBoardInterface {
	//글 등록, 글 선택
	public int detailBoardInsertSelect(DetailBoardVO vo);
	//글 선택
	public List<DetailBoardVO> detailBoardSelect(int num);
	//글 삭제
	public void detailBoardDelete(int no);
	//글 수정
	public int detailBoardUpdate(DetailBoardVO vo);
}

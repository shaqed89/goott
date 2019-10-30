package kr.goott.kimbo.detail;

import java.util.List;

public interface DetailBoardInterface {
	//�� ���, �� ����
	public int detailBoardInsertSelect(DetailBoardVO vo);
	//�� ����
	public List<DetailBoardVO> detailBoardSelect(int num);
	//�� ����
	public void detailBoardDelete(int no);
	//�� ����
	public int detailBoardUpdate(DetailBoardVO vo);
}

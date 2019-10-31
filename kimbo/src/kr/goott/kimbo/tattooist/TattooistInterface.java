package kr.goott.kimbo.tattooist;

import java.util.List;

public interface TattooistInterface {
	//�۰� ���
	public List<TattooistVO> getTattooist();
	//�۰� ����
	//�۳��뺸��
	public void selectData(TattooistVO vo);
	
	public List<TattooistVO> tattooList(String userId);
	//�۵��
	public int insertData(TattooistVO vo);
	//�ۼ���
	public int updateData(TattooistVO vo);
	//�ۻ���
	public void deleteData(TattooistVO vo);
	//��ȸ�� ī��Ʈ
	public void hitCount(int num);
}

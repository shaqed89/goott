package kr.goott.kimbo.review;

import java.util.List;

public interface Reviewinterface {
	//����Ʈ �ҷ�����
	public List<ReviewVO> getReview();
	//�� ����ϱ�
	public int insertReview(ReviewVO vo);
	//�� ������������
	public void selectReview(ReviewVO vo);
	//�� �����ϱ�
	public int updateReview(ReviewVO vo);
	//�� ����
	public void deleteReview(ReviewVO vo);
	
	//��� �ҷ�����
}

package kr.goott.kimbo.review;

import java.util.List;

public interface Reviewinterface {
	//����Ʈ �ҷ�����
	public List<ReviewVO> getReview();
	//�� ����ϱ�
	public int insertReview(ReviewVO vo);
	
	//��� �ҷ�����
}

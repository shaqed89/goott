package kr.goott.kimbo.search;

import java.util.List;

public interface SearchInterface {
	//�帣 �ҷ�����
	public List<SearchVO> getGenreList();
	//���� �ҷ�����
	public List<SearchVO> getSubjectList();
	//���� �ҷ�����
	public List<SearchVO> getPartList();
	//��ϵ� Ÿ������Ʈ �ҷ�����
	public List<SearchVO> getAllTattooList();
}

package kr.goott.kimbo.search;

import java.util.List;

import kr.goott.kimbo.tattooist.TattooistVO;


public interface SearchInterface {
	//�帣 �ҷ�����
	public List<SearchVO> getGenreList();
	//���� �ҷ�����
	public List<SearchVO> getSubjectList();
	//���� �ҷ�����
	public List<SearchVO> getPartList();
	//��ϵ� Ÿ������Ʈ �ҷ�����
	public List<TattooistVO> getAllTattooList();
}

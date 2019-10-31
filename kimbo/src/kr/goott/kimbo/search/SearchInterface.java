package kr.goott.kimbo.search;

import java.util.List;

public interface SearchInterface {
	//장르 불러오기
	public List<SearchVO> getGenreList();
	//주제 불러오기
	public List<SearchVO> getSubjectList();
	//부위 불러오기
	public List<SearchVO> getPartList();
	//등록된 타투리스트 불러오기
	public List<SearchVO> getAllTattooList();
}

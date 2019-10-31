package kr.goott.kimbo.search;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.home.DBConn;

public class SearchDAO extends DBConn implements SearchInterface {

	@Override
	public List<SearchVO> getGenreList() {
		List<SearchVO> list = new ArrayList<SearchVO>();
		try {
			dbConn();
			String sql="select genre from bro_genre";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				SearchVO vo = new SearchVO();
				
				vo.setGenre(rs.getString(1));
				list.add(vo);
				
//				System.out.println(vo.getGenre());
			}
			
		}catch (Exception e) {
			System.out.println("장르선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}

	@Override
	public List<SearchVO> getSubjectList() {
		List<SearchVO> list = new ArrayList<SearchVO>();
		try {
			dbConn();
			String sql="select subject from bro_subject";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				SearchVO vo = new SearchVO();
				
				vo.setSubject(rs.getString(1));
				list.add(vo);
				
//				System.out.println(vo.getGenre());
			}
			
		}catch (Exception e) {
			System.out.println("장르선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}

	@Override
	public List<SearchVO> getPartList() {
		List<SearchVO> list = new ArrayList<SearchVO>();
		try {
			dbConn();
			String sql="select part from bro_part";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				SearchVO vo = new SearchVO();
				
				vo.setPart(rs.getString(1));
				list.add(vo);
				
//				System.out.println(vo.getGenre());
			}
			
		}catch (Exception e) {
			System.out.println("장르선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}

	@Override
	public List<SearchVO> getAllTattooList() {
		// TODO Auto-generated method stub
		return null;
	}

}

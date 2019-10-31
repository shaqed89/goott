package kr.goott.kimbo.search;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.home.DBConn;
import kr.goott.kimbo.tattooist.TattooistVO;


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
	public List<TattooistVO> getAllTattooList() {
		List<TattooistVO> list = new ArrayList<TattooistVO>();
		try {
			dbConn();
			
			String sql = "select userid, genre, subject, part, filename1, hit, num from bro_tattoo";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				TattooistVO vo = new TattooistVO();
				vo.setUserId(rs.getString(1));
				vo.setGenre(rs.getString(2));				
				vo.setSubject(rs.getString(3));
				vo.setPart(rs.getString(4));
				vo.setFilename1(rs.getString(5));
				vo.setHit(rs.getInt(6));
				vo.setNum(rs.getInt(7));
				list.add(vo);
				
				System.out.println(vo.getFilename1() + vo.getNum());
			}
		}catch(Exception e) {
			System.out.println("타투 목록 선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}

}

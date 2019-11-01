package kr.goott.kimbo.review;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.home.DBConn;
import kr.goott.kimbo.tattooist.TattooistVO;

public class ReviewDAO extends DBConn implements Reviewinterface {

	@Override
	public List<ReviewVO> getReview() {
		List<ReviewVO> lst = new ArrayList<ReviewVO>();
		
		try {
			dbConn();
			
			String sql = "select no, subject, genre, bodypart, image, content, writer, tattooist, to_char(regdate,'YYYY-MM-DD') from review order by no desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setNum(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setGenre(rs.getString(3));
				vo.setPart(rs.getString(4));
				vo.setReview_img(rs.getString(5));
				vo.setContent(rs.getString(6));
				vo.setWriterId(rs.getString(7));
				vo.setTattooistId(rs.getString(8));
				vo.setWriteDate(rs.getString(9));

				lst.add(vo);
				System.out.println(vo.getNum());
			}
		}catch(Exception e) {
			System.out.println("리뷰 목록 선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}

	@Override
	public int insertReview(ReviewVO vo) {
		//리뷰 쓰기
		int result = 0;
		try {
			dbConn();
			String sql = "insert into review(no, subject, genre, bodypart, content, image, regdate, writer, tattooist) values(boardsq.nextVal,?,?,?,?,?,sysdate,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getGenre());
			pstmt.setString(3, vo.getPart());
			pstmt.setString(4, vo.getContent());
			pstmt.setString(5, vo.getReview_img());
			pstmt.setString(6, vo.getWriterId());
			pstmt.setString(7, vo.getTattooistId());

			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public void selectReview(ReviewVO vo) {
		try {
			dbConn();
			String sql = "select no, subject, genre, bodypart, content, image, regdate, tattooist from review where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setSubject(rs.getString(2));
				vo.setGenre(rs.getString(3));
				vo.setPart(rs.getString(4));
				vo.setContent(rs.getString(5));
				vo.setReview_img(rs.getString(6));
				vo.setWriteDate(rs.getString(7));
				vo.setTattooistId(rs.getString(8));
				
			}	
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
	}

	@Override
	public int updateReview(ReviewVO vo) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "update review set subject=?, genre=?, bodypart=?, content=?, image=?, tattooist=?";
			if(vo.getFileName() !=null) {
				sql += ", fileName=?";
			}
			sql += "where no=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getGenre());
			pstmt.setString(3, vo.getPart());
			pstmt.setString(4, vo.getContent());
			pstmt.setString(5, vo.getReview_img());
			pstmt.setString(6, vo.getTattooistId());
			
			if(vo.getFileName() != null) {
				pstmt.setString(7, vo.getFileName());
				pstmt.setInt(8, vo.getNum());
				
			}else {
				pstmt.setInt(9, vo.getNum());
			}	
			cnt = pstmt.executeUpdate();
					
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}	
		return cnt;
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		try {
			dbConn();
			String sql = "select image from review where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setReview_img(rs.getString(1));
			}
			sql = "delete from review where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			
			vo.setCnt(pstmt.executeUpdate());
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
	}
	
	
	
}

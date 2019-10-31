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
			
			String sql = "select no, subject, genre, bodypart, image, content, writer, tattooist, to_char(regdate,'YYYY-MM-DD') from review";
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
	
	
}

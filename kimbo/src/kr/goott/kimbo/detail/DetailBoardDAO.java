package kr.goott.kimbo.detail;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.home.DBConn;

public class DetailBoardDAO extends DBConn implements DetailBoardInterface {

	@Override
	public int detailBoardInsertSelect(DetailBoardVO vo) {
		int cnt=0;
		//댓글 쓰기
		try {
			dbConn();
			//답글 레코드 추가
			String sql = "insert into detailBoard(no, coment, userid, num, star, ip, board, writedate) values(dbsq.nextval, ?,?,?,?,?,?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getComent());
			pstmt.setString(2, vo.getUserId());
			pstmt.setInt(3, vo.getNum());
			pstmt.setInt(4, vo.getStar());
			pstmt.setString(5, vo.getIp());
			pstmt.setString(6, vo.getBoard());
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {e.printStackTrace();}
		finally{dbClose();}
		
		return cnt;
	}

	@Override
	public List<DetailBoardVO> detailBoardSelect(int num) {
		List<DetailBoardVO> list = new ArrayList<DetailBoardVO>();
		
		try {
			dbConn();
			///답글 선택
			String sql = "select no, num, coment, userId, writedate, star from boardReply where num=? order by no desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				DetailBoardVO replyVo = new DetailBoardVO();
				replyVo.setNo(rs.getInt(1));
				replyVo.setNum(rs.getInt(2));
				replyVo.setComent(rs.getString(3));
				replyVo.setUserId(rs.getString(4));
				replyVo.setWriteDate(rs.getString(5));
				replyVo.setStar(rs.getInt(6));
				
				list.add(replyVo);
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
		
		return list;
	}

	@Override
	public void detailBoardDelete(int no) {
		
	}

	@Override
	public int detailBoardUpdate(DetailBoardVO vo) {
		
		return 0;
	}
	
}

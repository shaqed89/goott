package kr.goott.kimbo.notice;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.home.DBConn;

public class NoticeDAO extends DBConn implements NoticeInterface {

	@Override
	public List<NoticeVO> getNotice() {
		List<NoticeVO> lst = new ArrayList<NoticeVO>();
		
		try {
			dbConn();
			NoticeVO vo = new NoticeVO();
			
			
			String sql = "select username from bro_register where userid=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			
			rs = pstmt.executeQuery();
			if(rs.next()) vo.setUserName(rs.getString(1));
			
			sql = "select a.num, a.title, a.content, b.username, to_char(a.writedate, 'YYYY-MM-DD') "
				+ "from bro_notice a join bro_register b on a.userid = b.userid order by num desc";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setNum(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setContent(rs.getString(3));
				vo.setUserName(rs.getString(4));
				vo.setWriteDate(rs.getString(5));
				
		
				lst.add(vo);
				
				System.out.println(vo.getNum() + vo.getTitle() + vo.getContent() + vo.getWriteDate() + vo.getUserName());
			}
			

		}catch(Exception e) {
			System.out.println("공지사항 전체 선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}

}

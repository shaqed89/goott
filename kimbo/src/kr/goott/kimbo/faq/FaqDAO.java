package kr.goott.kimbo.faq;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.home.DBConn;

public class FaqDAO extends DBConn implements FaqInterface {

	@Override
	public List<FaqVO> getFaq() {
		List<FaqVO> lst = new ArrayList<FaqVO>();
		
		try {
			dbConn();
			
			String sql = "select a.num, a.title, a.content, b.username, to_char(a.writedate, 'YYYY-MM-DD') "
				+ "from bro_faq a join bro_register b on a.userid = b.userid order by num desc";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				FaqVO vo = new FaqVO();
				
				vo.setNum(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setContent(rs.getString(3));
				vo.setUserName(rs.getString(4));
				vo.setWriteDate(rs.getString(5));
				
		
				lst.add(vo);
				
//				System.out.println(vo.getNum() + vo.getTitle() + vo.getContent() + vo.getWriteDate() + vo.getUserName());
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

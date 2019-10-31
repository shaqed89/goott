package kr.goott.kimbo.home;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.faq.FaqVO;

public class MainDAO extends DBConn implements MainInterface {

	@Override
	public List<MainVO> getTop5() {
		List<MainVO> lst = new ArrayList<MainVO>();
		
		try {
			dbConn();
			
			String sql = "select num, userid, profile from bro_register where role='작가' and rownum<=5 order by num desc";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MainVO vo = new MainVO();
				
				vo.setNum(rs.getInt(1));
				vo.setUserId(rs.getString(2));
				vo.setProfile(rs.getString(3));
				
				lst.add(vo);
				
//				System.out.println(vo.getNum());
			}
			

		}catch(Exception e) {
			System.out.println("메인 인기순위 선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}

}

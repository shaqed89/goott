package kr.goott.kimbo.tattooist;

import java.util.ArrayList;
import java.util.List;

import kr.goott.kimbo.home.DBConn;

public class TattooistDAO extends DBConn implements TattooistInterface {

	@Override
	public List<TattooistVO> getTattooist() {
		List<TattooistVO> lst = new ArrayList<TattooistVO>();
		
		try {
			dbConn();
			
			String sql = "select userid, addr, profile from bro_register where role='�۰�'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TattooistVO vo = new TattooistVO();
				vo.setUserId(rs.getString(1));
				vo.setAddr(rs.getString(2));
				vo.setProfile(rs.getString(3));	
				lst.add(vo);
			}
		}catch(Exception e) {
			System.out.println("Ÿ���̽�Ʈ ��� ���� ����..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}

}

package kr.goott.kimbo.register;

import kr.goott.kimbo.home.DBConn;

public class RegisterDAO extends DBConn implements RegisterInterface {

	@Override
	public boolean idCheck(String userId) {
		boolean result=false;
		try {
			dbConn();
			String sql = "select count(userid) from bro_register where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getInt(1)!=0) {
					result = true;
				}
			}
		} catch (Exception e) {
			System.out.println("아이디 중복검사 에러..."+e.getMessage());
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int insertRecord(RegisterVO vo) {
		int cnt=0;
		
		try {
			dbConn();
			
			String sql = "insert into bro_register(num, userid, username, userpwd, role, tel,"
						+ "addr, email, gender, kakao, profile, birthday, regdate) "
						+ "values(bro_sq.nextVal, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
						+ "to_date(?,'YYYY-MM-DD'), sysdate)";
			System.out.println(vo.getTel());
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getUserName());
			pstmt.setString(3, vo.getUserPwd());
			pstmt.setString(4, vo.getRole());
			pstmt.setString(5, vo.getTel());
			pstmt.setString(6, vo.getAddr());
			pstmt.setString(7, vo.getEmail());
			pstmt.setString(8, vo.getGender());
			pstmt.setString(9, vo.getKakao());
			pstmt.setString(10, vo.getProfile());
			pstmt.setString(11, vo.getBirthDay());
			
			/* System.out.println(vo.getBirthDay()); */
			cnt =pstmt.executeUpdate();

		} catch(Exception e) {
			System.out.println("회원가입에러..."+e.getMessage());
			e.printStackTrace();
		} finally {
			dbClose();
		}
		
		return cnt;
	}


	@Override
	public void login(RegisterVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getRegister(RegisterVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public int updateRecord(RegisterVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}

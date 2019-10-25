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
		try {
			dbConn();
			
			String sql = "select username, userid from bro_register " 
						+"where userid=? and userpwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getUserPwd());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setUserName(rs.getString(1));
				vo.setUserId(rs.getString(2));
			}
			
		}catch(Exception e) {
			System.out.println("로그인 에러..." + e.getMessage());
		}finally {
			dbClose();
		}

	}

	@Override
	public void getRegister(RegisterVO vo) {
		try {
			dbConn();
			
			String sql = "select username, tel, gender, addr, email, to_char(birthday, 'YYYY-MM-DD'), kakao, profile "
					   + "from bro_register where userid=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setUserName(rs.getString(1));
				vo.setTel(rs.getString(2));
				vo.setGender(rs.getString(3));
				vo.setAddr(rs.getString(4));
				vo.setEmail(rs.getString(5));
				vo.setBirthDay(rs.getString(6));
				vo.setKakao(rs.getString(7));
				vo.setProfile(rs.getString(8));
			}
			
//			System.out.println(vo.getUserName());
//			System.out.println(vo.getEmail());
			
		}catch(Exception e) {
			System.out.println("회원선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}

	@Override
	public int updateRecord(RegisterVO vo) {
		int cnt=0;
		try {
			dbConn();
			
			String sql = "update bro_register set tel=?, addr=?, email=?, kakao=?, profile=? "
					   + "where userid=? and userpwd=?";
			
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, vo.getTel());
			pstmt.setString(2, vo.getAddr());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getKakao());
			pstmt.setString(5, vo.getProfile());
			
			pstmt.setString(6, vo.getUserId());
			pstmt.setString(7, vo.getUserPwd());
			
//			System.out.println(vo.getTel());
			
			cnt = pstmt.executeUpdate();
			
		}catch (Exception e) {
			System.out.println("회원정보 수정 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	public void deleteRecord(RegisterVO vo) {
		try {
			System.out.println(vo.getUserId());
			System.out.println(vo.getProfile());
			
			dbConn();
			//파일명 알아내기
			String sql = "select profile from bro_register where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setProfile(rs.getString(1));
			}
			
			//레코드 지우기
			sql = "delete from bro_register where userId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			
			vo.setStatus(pstmt.executeUpdate());
		} catch (Exception e) {
			System.out.println("자료실 글 삭제 에러..."+e.getMessage());
			e.printStackTrace();
		} finally {
			dbClose();
		}
	}
}

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
			
			String sql = "select userid, addr, profile, num from bro_register where role='작가'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TattooistVO vo = new TattooistVO();
				vo.setUserId(rs.getString(1));
				vo.setAddr(rs.getString(2));
				vo.setProfile(rs.getString(3));
				vo.setNum(rs.getInt(4));
				lst.add(vo);
			}
		}catch(Exception e) {
			System.out.println("타투이스트 목록 선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {dbClose();}
		
		return lst;
	}

	@Override
	public void selectData(TattooistVO vo) {
		try {
			dbConn();
			String sql = "select userId, addr, kakao, num, profile "
					+ " from bro_register where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setUserId(rs.getString(1));
				vo.setAddr(rs.getString(2));
				vo.setKakao(rs.getString(3));
				vo.setNum(rs.getInt(4));
				vo.setProfile(rs.getString(5));
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
	}
	
	public List<TattooistVO> tattooList(String userId) {
		List<TattooistVO> list = new ArrayList<TattooistVO>();
		
		try {
			dbConn();
			
			String sql = "select userid, genre, subject, part, filename1, hit from bro_tattoo where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TattooistVO vo = new TattooistVO();
				vo.setUserId(rs.getString(1));
				//System.out.println(rs.getString(1));
				String gr = rs.getString(2);
				vo.setGenre(gr);
				System.out.println(gr);
				vo.setSubject(rs.getString(3));
				vo.setPart(rs.getString(4));
				vo.setFilename1(rs.getString(5));
				vo.setHit(rs.getInt(6));
				list.add(vo);
			}
		}catch(Exception e) {
			System.out.println("타투 목록 선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {dbClose();}
		
		return list;
	}

	@Override
	public int insertData(TattooistVO vo) {
		//자료실 글올리기
		int result=0;
		try {
			dbConn();
			String sql = "insert into bro_tattoo(num, userid, addr, content, genre, subject, part, price, sigan, "
					+ " hit, writeDate, photo1, filename1, title) values(tattoosq.nextVal, ?,?,?,?,?,?,?,?,0,sysdate,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getAddr());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getGenre());
			pstmt.setString(5, vo.getSubject());
			pstmt.setString(6, vo.getPart());
			pstmt.setString(7, vo.getPrice());
			pstmt.setString(8, vo.getSigan());
			pstmt.setString(9, vo.getPhoto1());
			pstmt.setString(10, vo.getFilename1());
			pstmt.setString(11, vo.getTitle());
		
			result=pstmt.executeUpdate();
			System.out.println("filename1=" + vo.getFilename1());
			System.out.println("insert result=" + result);
		}
		catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
		return result;
	}

	@Override
	public int updateData(TattooistVO vo) {
		int cnt=0;
		/*try {
			dbConn();
			String sql = "update data set addr=?, content=?, genre=?, subject=?, part=?, price=?, sigan=?,"
			+ " photo1=?, photo2=?, photo3=?, filename1, filename2, filename3";
			if(vo.getFileName()!=null) {//파일을 새로 선택했을 경우
				sql+=", fileName=?";
			}
			sql+=" where num=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			
			if(vo.getFileName()!=null) {
				pstmt.setString(3, vo.getFileName());
				pstmt.setInt(4, vo.getNum());
			}else {
				pstmt.setInt(3, vo.getNum());
			}
			
			System.out.println(sql);
			cnt = pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
		*/
		return cnt;
	}

	@Override
	public void deleteData(TattooistVO vo) {
		/*try {
			dbConn();
			//파일명 알아내기
			String sql = "select filename from data where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setFileName(rs.getString(1));
			}
			
			//레코드 지우기
			sql = "delete from data where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());

		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}*/
	}

	@Override
	public void hitCount(int num) {
		try {
			dbConn();
			String sql = "update data set hit=hit+1 where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
	}

}

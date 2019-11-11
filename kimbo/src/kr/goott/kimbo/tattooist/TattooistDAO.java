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
			
			String sql = "select userid, genre, subject, part, filename1, filename2, filename3, hit, num from bro_tattoo where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TattooistVO vo = new TattooistVO();
				vo.setUserId(rs.getString(1));
				//System.out.println(rs.getString(1));
				String gr = rs.getString(2);
				vo.setGenre(gr);
				
				vo.setSubject(rs.getString(3));
				vo.setPart(rs.getString(4));
				vo.setFilename1(rs.getString(5));
				vo.setFilename2(rs.getString(6));
				vo.setFilename3(rs.getString(7));
				vo.setHit(rs.getInt(8));
				vo.setNum(rs.getInt(9));
				list.add(vo);
				System.out.println("genre=" + gr);
			}
		}catch(Exception e) {
			System.out.println("타투 목록 선택 에러..."+e.getMessage());
			e.printStackTrace();
		}finally {dbClose();}
		
		return list;
	}

	public void tattooDetail(TattooistVO vo) {
		try {
			dbConn();
			String sql = "select title, price, genre, subject, part, sigan, content, filename1, filename2, filename3, num, userid from bro_tattoo where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setTitle(rs.getString(1));
				vo.setPrice(rs.getString(2));
				vo.setGenre(rs.getString(3));
				vo.setSubject(rs.getString(4));
				vo.setPart(rs.getString(5));
				vo.setSigan(rs.getString(6));
				vo.setContent(rs.getString(7));
				vo.setFilename1(rs.getString(8));
				vo.setFilename2(rs.getString(9));
				vo.setFilename3(rs.getString(10));
				vo.setUserId(rs.getString(11));
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
	}
	@Override
	public int insertData(TattooistVO vo) {
		//자료실 글올리기
		int result=0;
		try {
			dbConn();
			String sql = "insert into bro_tattoo(num, userid, addr, content, genre, subject, part, price, sigan, "
					+ " hit, writeDate, filename1,filename2, filename3, title) values(tattoosq.nextVal, ?,?,?,?,?,?,?,?,0,sysdate,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getAddr());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getGenre());
			pstmt.setString(5, vo.getSubject());
			pstmt.setString(6, vo.getPart());
			pstmt.setString(7, vo.getPrice());
			pstmt.setString(8, vo.getSigan());
			pstmt.setString(9, vo.getFilename1());
			pstmt.setString(10, vo.getFilename2());
			pstmt.setString(11, vo.getFilename3());
			pstmt.setString(12, vo.getTitle());
		
			result=pstmt.executeUpdate();
			System.out.println("filename1=" + vo.getFilename1());
			System.out.println("filename2=" + vo.getFilename2());
			System.out.println("filename3=" + vo.getFilename3());
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

	@Override
	public int replyInsertSelect(DetailBoardVO vo) {
		int cnt=0;
		//댓글 쓰기
		try {
			dbConn();
			//답글 레코드 추가
			String sql = "insert into bro_reply(no, coment, userid, num, starr, ip, board, writedate) values(reply_sq.nextval, ?,?,?,?,?,?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getComent());
			pstmt.setString(2, vo.getUserId());
			pstmt.setInt(3, vo.getNum());
			pstmt.setInt(4, vo.getStarr());
			pstmt.setString(5, vo.getIp());
			pstmt.setString(6, vo.getBoard());
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {e.printStackTrace();}
		finally{dbClose();}
		
		return cnt;
	}

	@Override
	public List<DetailBoardVO> replySelect(int num) {
		List<DetailBoardVO> list = new ArrayList<DetailBoardVO>();
		
		try {
			dbConn();
			///답글 선택
			String sql = "select no, num, coment, userId, to_char(writedate, 'YYYY-MM-DD hh24:mi'), starr from bro_reply where num=? and board='t' order by no desc";
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
				replyVo.setStarr(rs.getInt(6));
				
				list.add(replyVo);
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
		
		return list;
	}

	@Override
	public void replyDelete(int no) {
		try {
			dbConn();
			String sql = "delete from bro_reply where no=? and board='t'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
	}

	@Override
	public int replyUpdate(DetailBoardVO vo) {
		int cnt=0;
		try {
			dbConn();
			String sql = "update bro_reply set coment=? where no=? and board='t'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getComent());
			pstmt.setInt(2, vo.getNo());
			
			cnt = pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {dbClose();}
		
		return cnt;
	}

}

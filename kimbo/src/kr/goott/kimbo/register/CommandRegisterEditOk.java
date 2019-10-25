package kr.goott.kimbo.register;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.goott.kimbo.controller.CommandService;

public class CommandRegisterEditOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		RegisterVO vo = new RegisterVO();
		
		String path = request.getServletContext().getRealPath("/profile");
		DefaultFileRenamePolicy pol = new DefaultFileRenamePolicy();
		
		MultipartRequest mr = new MultipartRequest(request, path, 1024*1024*1024, "UTF-8", pol);
		
		vo.setUserId(mr.getParameter("userId"));
		vo.setUserPwd(mr.getParameter("userPwd"));
		vo.setUserName(mr.getParameter("userName"));
		vo.setRole(mr.getParameter("role"));
		vo.setGender(mr.getParameter("gender"));
		vo.setT1(mr.getParameter("t1"));
		vo.setT2(mr.getParameter("t2"));
		vo.setT3(mr.getParameter("t3"));
		vo.setSido(mr.getParameter("sido"));
		vo.setGungu(mr.getParameter("gungu"));
		vo.setEmailId(mr.getParameter("emailId"));
		vo.setEmailDomain(mr.getParameter("emailDomain"));
		vo.setBirthYear(mr.getParameter("birthYear"));
		vo.setBirthMonth(mr.getParameter("birthMonth"));
		vo.setBirthDate(mr.getParameter("birthDate"));
		vo.setKakao(mr.getParameter("kakao"));
		vo.setOldProfile(mr.getParameter("oldProfile"));
		
//		System.out.println(vo.getT1()+", "+vo.getT2()+", "+vo.getT3());
		
		//업로드한 파일명 얻어오기
		Enumeration enumList = mr.getFileNames();
		if(enumList.hasMoreElements()) {
			String fName = (String)enumList.nextElement();
			String renameFile = mr.getFilesystemName(fName);
			
			vo.setProfile(renameFile);
		}
		
		RegisterDAO dao = new RegisterDAO();
		int cnt = dao.updateRecord(vo);
		
//		System.out.println(vo.getOldProfile());
		
		if(cnt<=0) { //레코드 수정실패
			if(vo.getProfile()!=null) {
				File file = new File(path, vo.getProfile());
				file.delete();
			}
		}else { //레코드 수정
			if(vo.getProfile()!=null) {
				//파일이 새로 업로드 한 경우
				File file = new File(path, vo.getOldProfile());
				file.delete();
			}
			//
		}
		
		request.setAttribute("cnt", cnt);
		
		return "registerEditOk.jsp";
	}

}

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

public class CommandTattooistOk implements CommandService {

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
		
//		System.out.println(vo.getT1()+", "+vo.getT2()+", "+vo.getT3());
		
		//���ε��� ���ϸ� ������
		Enumeration fileNames = mr.getFileNames();
				
		String oldFile = null;
		String newFile = null;
				
		if(fileNames.hasMoreElements()) {
			oldFile = (String)fileNames.nextElement(); //�������ϸ�
			newFile = mr.getFilesystemName(oldFile);//�������ϸ�
			vo.setProfile(newFile);
		}
		
		RegisterDAO dao = new RegisterDAO();
		int cnt = dao.insertRecord(vo);
		
		//���ڵ� �߰� ���н� ���ε��� ������ �����ؾ� ��.
		if(cnt<=0) { //����
			File file = new File(path, vo.getProfile()); //���ϻ���
			file.delete();
		}
		
		request.setAttribute("cnt", cnt);
		
		return "tatooistFormOk.jsp";
	}

}

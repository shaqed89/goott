package kr.goott.kimbo.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandNormalOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		RegisterVO vo = new RegisterVO();
		
		vo.setUserId(request.getParameter("userId"));
		vo.setUserPwd(request.getParameter("userPwd"));
		vo.setUserName(request.getParameter("userName"));
		vo.setRole(request.getParameter("role"));
		vo.setGender(request.getParameter("gender"));
		vo.setT1(request.getParameter("t1"));
		vo.setT2(request.getParameter("t2"));
		vo.setT3(request.getParameter("t3"));
		vo.setSido(request.getParameter("sido"));
		vo.setGungu(request.getParameter("gungu"));
		vo.setEmailId(request.getParameter("emailId"));
		vo.setEmailDomain(request.getParameter("emailDomain"));
		vo.setBirthYear(request.getParameter("birthYear"));
		vo.setBirthMonth(request.getParameter("birthMonth"));
		vo.setBirthDate(request.getParameter("birthDate"));
		
		RegisterDAO dao = new RegisterDAO();
		int cnt = dao.insertRecord(vo);
		
		request.setAttribute("cnt", cnt);
		
		return "normalFormOk.jsp";
	}

}

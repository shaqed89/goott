package kr.goott.kimbo.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.goott.kimbo.controller.CommandService;

public class CommandLoginOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RegisterVO vo = new RegisterVO();
		vo.setUserId(request.getParameter("userId"));
		vo.setUserPwd(request.getParameter("userPwd"));
		
//		System.out.println(vo.getUserId() + ", "+ vo.getUserPwd());
		
		RegisterDAO dao = new RegisterDAO();
		dao.login(vo);

		int login_status=0;	
		
		if(vo.getUserName()==null || vo.getUserName().equals("")) { //로그인 실패
			login_status=0;
			
		}else { //로그인 성공
			HttpSession ses = request.getSession();
			ses.setAttribute("userId", vo.getUserId());
			ses.setAttribute("userName", vo.getUserName());	
			login_status=1;
		}
//		System.out.println(login_status);
		
		request.setAttribute("status", login_status);
		
		return "loginOk.jsp";
	}
}

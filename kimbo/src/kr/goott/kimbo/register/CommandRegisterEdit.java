package kr.goott.kimbo.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandRegisterEdit implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 회원정보수정
		RegisterVO vo = new RegisterVO();
		vo.setUserId((String)request.getSession().getAttribute("userId"));
		
		RegisterDAO dao	= new RegisterDAO();
		dao.getRegister(vo);
		
		request.setAttribute("vo", vo);

		return "kimbo_register_edit.jsp";
	}

}

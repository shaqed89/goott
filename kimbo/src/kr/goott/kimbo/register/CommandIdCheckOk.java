package kr.goott.kimbo.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandIdCheckOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
//		System.out.println(userId);
		
		RegisterDAO dao = new RegisterDAO();
		boolean result = dao.idCheck(userId);
		
		//뷰에 데이터 보내기
		request.setAttribute("userId", userId);
		request.setAttribute("result", result);
		
		return "kimbo_idCheck.jsp";
	}

}

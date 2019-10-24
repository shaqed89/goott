package kr.goott.kimbo.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.goott.kimbo.controller.CommandService;

public class CommandLogout implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		System.out.println("11");
		HttpSession sess = request.getSession();
		sess.invalidate();
		
		
		
		return "/main/kimbo_main.jsp";
	}

}

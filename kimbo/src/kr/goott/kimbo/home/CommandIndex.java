package kr.goott.kimbo.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandIndex implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "index.jsp";
	}
	
}

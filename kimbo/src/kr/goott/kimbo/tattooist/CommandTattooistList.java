package kr.goott.kimbo.tattooist;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandTattooistList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return "/tattooist/park_tattooist.jsp";
	}

}

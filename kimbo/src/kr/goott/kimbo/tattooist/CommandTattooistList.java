package kr.goott.kimbo.tattooist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandTattooistList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		TattooistDAO dao = new TattooistDAO();
		
		//�ش������� ���ڵ� ����
		List<TattooistVO> lst = dao.getTattooist();
		//���������� ������ ������
		request.setAttribute("lst", lst);
		
		List<TattooistVO> list = dao.tattooList("userId");
		request.setAttribute("list", list);
		
		return "/tattooist/park_tattooist.jsp";
	}

}

package kr.goott.kimbo.home;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;
import kr.goott.kimbo.home.MainDAO;
import kr.goott.kimbo.home.MainVO;

public class CommandMain implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MainDAO dao = new MainDAO();
		
		//�ش������� ���ڵ� ����
		List<MainVO> lst =  dao.getTop5();
		
		//���������� ������ ������
		request.setAttribute("top5_list", lst);
		
		return "kimbo_main.jsp";
	}

}

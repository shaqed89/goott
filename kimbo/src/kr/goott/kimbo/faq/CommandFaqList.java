package kr.goott.kimbo.faq;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;
import kr.goott.kimbo.faq.FaqDAO;
import kr.goott.kimbo.faq.FaqVO;

public class CommandFaqList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		FaqDAO dao = new FaqDAO();
		
		//�ش������� ���ڵ� ����
		List<FaqVO> lst =  dao.getFaq();
		
		//���������� ������ ������
		request.setAttribute("lst", lst);
		return "/faq/lee_faq.jsp";
	}

}

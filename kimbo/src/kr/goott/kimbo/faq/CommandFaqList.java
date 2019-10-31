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
		
		//해당페이지 레코드 선택
		List<FaqVO> lst =  dao.getFaq();
		
		//뷰페이지로 가져갈 데이터
		request.setAttribute("lst", lst);
		return "/faq/lee_faq.jsp";
	}

}

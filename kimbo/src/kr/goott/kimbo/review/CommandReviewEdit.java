package kr.goott.kimbo.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandReviewEdit implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ReviewDAO dao = new ReviewDAO();
		ReviewVO vo = new ReviewVO();
		
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		
		dao.selectReview(vo);
		request.setAttribute("vo", vo);
		
		
		return "reviewEdit.jsp";
	}

}

package kr.goott.kimbo.review;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandReviewDeleteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ReviewDAO dao = new ReviewDAO();
		ReviewVO vo = new ReviewVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));

		dao.deleteReview(vo);
		///////////////////
		if (vo.getCnt() > 0) {
			File file = new File(request.getServletContext().getRealPath("/img/review"), vo.getReview_img());
			file.delete();
		}
		List<ReviewVO> list = dao.getReview();
		request.setAttribute("lst", list);
		return "review.jsp";

	}

}

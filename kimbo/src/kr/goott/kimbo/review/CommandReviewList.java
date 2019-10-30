package kr.goott.kimbo.review;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;
import kr.goott.kimbo.review.ReviewDAO;
import kr.goott.kimbo.review.ReviewVO;

public class CommandReviewList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReviewDAO dao = new ReviewDAO();
		
		//해당페이지 레코드 선택
		List<ReviewVO> lst =  dao.getReview();
		
		//뷰페이지로 가져갈 데이터
		request.setAttribute("lst", lst);
		return "review.jsp";
	}

}

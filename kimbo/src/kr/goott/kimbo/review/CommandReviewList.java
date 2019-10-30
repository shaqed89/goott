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
		
		//�ش������� ���ڵ� ����
		List<ReviewVO> lst =  dao.getReview();
		
		//���������� ������ ������
		request.setAttribute("lst", lst);
		return "review.jsp";
	}

}

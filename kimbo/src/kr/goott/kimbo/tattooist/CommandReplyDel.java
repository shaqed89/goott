package kr.goott.kimbo.tattooist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandReplyDel implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//댓글 삭제
		int no = Integer.parseInt(request.getParameter("no"));
		TattooistDAO dao = new TattooistDAO();
		dao.replyDelete(no);
		
		//지운후 댓글 선택
		int num = Integer.parseInt(request.getParameter("num"));
		List<DetailBoardVO> list = dao.replySelect(num);
		
		request.setAttribute("list", list);
		return "/tattooist/comentView.jsp";
	}
}

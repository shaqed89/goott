package kr.goott.kimbo.detail;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandDetailBoard implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DetailBoardVO vo = new DetailBoardVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		
		DetailBoardDAO dao = new DetailBoardDAO();
		dao.Select(vo);
		
		request.setAttribute("vo", vo);
		
		//¥Ò±€º±≈√
		List<DetailBoardVO> replyList = dao.replySelect(vo.getNum());
		request.setAttribute("list", replyList);
		
		return "detail.jsp";
	}

}

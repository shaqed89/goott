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
		request.setCharacterEncoding("UTF-8");
		
		DetailBoardVO detailVo = new DetailBoardVO();
		detailVo.setNum(Integer.parseInt(request.getParameter("num")));
		detailVo.setComent(request.getParameter("coment"));
		detailVo.setUserId((String)request.getSession().getAttribute("userId"));
		detailVo.setIp(request.getRemoteAddr());
		detailVo.setBoard(request.getParameter("board"));
		int star = Integer.parseInt(request.getParameter("star"));
		System.out.println("star="+star);
		detailVo.setStar(star);
		DetailBoardDAO dao = new DetailBoardDAO();
		dao.detailBoardInsertSelect(detailVo);
		
		request.setAttribute("detailVo", detailVo);
		
		//��ۼ���
		List<DetailBoardVO> replyList = dao.detailBoardSelect(detailVo.getNum());
		
		request.setAttribute("list", replyList);
		
		return "/tattooist/detail.jsp";
	}

}

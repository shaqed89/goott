package kr.goott.kimbo.tattooist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandTattooistDetail implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TattooistDAO dao = new TattooistDAO();
		TattooistVO vo = new TattooistVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setUserId(request.getParameter("userId"));
		
		dao.tattooDetail(vo);
		dao.hitCount(vo.getHit());
		request.setAttribute("vo", vo);
		
		List<DetailBoardVO> list = dao.replySelect(vo.getNum());
		request.setAttribute("list", list);
		
		return "/tattooist/detail.jsp";
	}

}

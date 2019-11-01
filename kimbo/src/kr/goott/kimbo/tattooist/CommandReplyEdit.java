package kr.goott.kimbo.tattooist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandReplyEdit implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TattooistDAO dao = new TattooistDAO();
		// 댓글 수정
		DetailBoardVO vo = new DetailBoardVO();
		vo.setNo(Integer.parseInt(request.getParameter("no")));
		vo.setComent(request.getParameter("coment"));
		int cnt = dao.replyUpdate(vo);
		
		// 댓글 선택
		int num = Integer.parseInt(request.getParameter("num"));//원글번호
		System.out.println("원글번호=" + num);
		List<DetailBoardVO> list = dao.replySelect(num);
		
		request.setAttribute("num", num);
		request.setAttribute("list", list);
		
		return "/tattooist/comentView.jsp";
	}

}

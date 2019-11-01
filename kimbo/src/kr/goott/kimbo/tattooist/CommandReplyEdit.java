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
		// ��� ����
		DetailBoardVO vo = new DetailBoardVO();
		vo.setNo(Integer.parseInt(request.getParameter("no")));
		vo.setComent(request.getParameter("coment"));
		int cnt = dao.replyUpdate(vo);
		
		// ��� ����
		int num = Integer.parseInt(request.getParameter("num"));//���۹�ȣ
		System.out.println("���۹�ȣ=" + num);
		List<DetailBoardVO> list = dao.replySelect(num);
		
		request.setAttribute("num", num);
		request.setAttribute("list", list);
		
		return "/tattooist/comentView.jsp";
	}

}

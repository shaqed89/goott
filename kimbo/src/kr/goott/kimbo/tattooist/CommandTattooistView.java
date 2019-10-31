package kr.goott.kimbo.tattooist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandTattooistView implements CommandService{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//레코드 선택
		TattooistVO vo = new TattooistVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		
		TattooistDAO dao = new TattooistDAO();
		dao.selectData(vo);
		//조회수 증가
		//dao.hitCount(vo.getNum());
		request.setAttribute("vo", vo);
		
		return "/tattooist/t_detail_tattooist.jsp";
	}
}

package kr.goott.kimbo.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.kimbo.controller.CommandService;

public class CommandNoticeList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NoticeDAO dao = new NoticeDAO();
		
		//해당페이지 레코드 선택
		List<NoticeVO> lst =  dao.getNotice();
		
		//뷰페이지로 가져갈 데이터
		request.setAttribute("lst", lst);
		return "/notice/lee_notice.jsp";
	}

}

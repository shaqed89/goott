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
		
		//�ش������� ���ڵ� ����
		List<NoticeVO> lst =  dao.getNotice();
		
		//���������� ������ ������
		request.setAttribute("lst", lst);
		return "/notice/lee_notice.jsp";
	}

}

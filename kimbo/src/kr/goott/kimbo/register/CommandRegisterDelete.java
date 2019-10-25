package kr.goott.kimbo.register;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.goott.kimbo.controller.CommandService;

public class CommandRegisterDelete implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RegisterDAO dao = new RegisterDAO();
		RegisterVO vo = new RegisterVO();
		
//		System.out.println(request.getSession().getAttribute("userId"));
		
		vo.setUserId((String)request.getSession().getAttribute("userId"));
		
		dao.deleteRecord(vo);
		////////////////////////////
		if(vo.getProfile()!=null) {
			if(vo.getStatus()>0) {
				//레코드가 삭제되면 파일지우기
				File file = new File(request.getServletContext().getRealPath("/profile"), vo.getProfile());
				file.delete();
			}
		}
		
		HttpSession sess = request.getSession();
		sess.invalidate();
		
		request.setAttribute("status", vo.getStatus());
		
		return "registerDeleteOk.jsp";
	}

}

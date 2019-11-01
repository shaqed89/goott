package kr.goott.kimbo.review;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.goott.kimbo.controller.CommandService;

public class CommandReviewEditOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getServletContext().getRealPath("/img/review");
		int size= 1024*1024*1024;
		DefaultFileRenamePolicy pol = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request, path, size, "UTF-8", pol);
		
		ReviewVO vo = new ReviewVO();
		vo.setNum(Integer.parseInt(mr.getParameter("num")));
		vo.setSubject(mr.getParameter("subject"));
		vo.setGenre(mr.getParameter("genre"));
		vo.setPart(mr.getParameter("part"));
		vo.setTattooistId(mr.getParameter("tattooistid"));
		vo.setOldFileName(mr.getParameter("oldFileName"));
		
		//////
		Enumeration enumList = mr.getFileNames();
		if(enumList.hasMoreElements());
			String fName = (String)enumList.nextElement();
			String renameFile = mr.getFilesystemName(fName);
			
			vo.setFileName(renameFile);
		
			ReviewDAO dao = new ReviewDAO();
			int cnt = dao.updateReview(vo);
			//���ڵ� ���� ����
			if(cnt<=0) {
				if(vo.getFileName()!=null) {
					File file = new File(path,vo.getFileName());
					file.delete();
				}
			}else {//���ڵ� ���� ����
				//���ϸ� ���� ���ε��� ���
				if(vo.getFileName()!=null) {
					File file = new File(path, vo.getOldFileName());
					file.delete();
				}
			}
		
			
			//������ ���� ���ε� ���� ���
			request.setAttribute("cnt", cnt);
			request.setAttribute("num", vo.getNum());
			
			return "reviewEditOk.jsp";
	}

}

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
			//레코드 수정 실패
			if(cnt<=0) {
				if(vo.getFileName()!=null) {
					File file = new File(path,vo.getFileName());
					file.delete();
				}
			}else {//레코드 수정 성공
				//파일명 새로 업로드한 경우
				if(vo.getFileName()!=null) {
					File file = new File(path, vo.getOldFileName());
					file.delete();
				}
			}
		
			
			//파일이 새로 업로드 안한 경우
			request.setAttribute("cnt", cnt);
			request.setAttribute("num", vo.getNum());
			
			return "reviewEditOk.jsp";
	}

}

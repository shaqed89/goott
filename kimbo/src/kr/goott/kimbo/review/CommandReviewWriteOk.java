package kr.goott.kimbo.review;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.goott.kimbo.controller.CommandService;

public class CommandReviewWriteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	      String path = request.getServletContext().getRealPath("/img/review");
	      System.out.println("path="+path);

	      DefaultFileRenamePolicy pol = new DefaultFileRenamePolicy();
	      
	      MultipartRequest mr = new MultipartRequest(request,path,1024*1024*1024,"UTF-8",pol);
	      ReviewVO vo = new ReviewVO();
	      vo.setSubject(mr.getParameter("subject"));
	      vo.setGenre(mr.getParameter("genre"));
	      vo.setPart(mr.getParameter("part"));
	      vo.setContent(mr.getParameter("content"));
	      vo.setTattooistId(mr.getParameter("tattooistid"));
	      HttpSession sess = request.getSession();
	      vo.setWriterId((String)sess.getAttribute("userId"));

	      Enumeration fileNames =  mr.getFileNames();
	      String oldFile = null;
	      String newFile = null;
	      if(fileNames.hasMoreElements()) {

	    	  oldFile = (String)fileNames.nextElement();//���� ���ϸ�
	    	  newFile = mr.getFilesystemName(oldFile);//���� ���ϸ�
	    	  vo.setReview_img(newFile);

	      }
	      ReviewDAO dao = new ReviewDAO();
	      int cnt = dao.insertReview(vo);
	      if(cnt<=0) {//����
	    	  File file = new File(path,vo.getReview_img());//���� ����
	    	  file.delete();
	      }
	      request.setAttribute("cnt", cnt);
	      
	      return "reviewWriteOk.jsp";
	}

}

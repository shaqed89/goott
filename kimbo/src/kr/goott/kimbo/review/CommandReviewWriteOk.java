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
		  //파일을 업로드 하기 위해서는 request 객체를 이용하여 multipartRequest객체를 생성해야한다.
	      //1. request 객체 
	      //2. 업로드할 위치 폴더
	      String path = request.getServletContext().getRealPath("/img/review");
	      System.out.println("path="+path);
	      //3. 업로드 할수 있는 파일의 최대 크기(byte단위)
	      //4. 한글 인코딩
	      //5. 파일 변경을 처리하는 클래스를 객체로 생성하여 매개 변수로 설정한다ㅏ.
	      DefaultFileRenamePolicy pol = new DefaultFileRenamePolicy();
	      
	      MultipartRequest mr = new MultipartRequest(request,path,1024*1024*1024,"UTF-8",pol);
	      //
	      ReviewVO vo = new ReviewVO();
	      vo.setSubject(mr.getParameter("subject"));
	      vo.setGenre(mr.getParameter("genre"));
	      vo.setPart(mr.getParameter("part"));
	      vo.setContent(mr.getParameter("content"));
	      vo.setTattooistId(mr.getParameter("tattooistid"));
//	      vo.setTattooistId(mr.getParameter("regdate"));
	      HttpSession sess = request.getSession();
	      vo.setWriterId((String)sess.getAttribute("userId"));
	     
	      //업로드한 파일명 얻어오기
	      Enumeration fileNames =  mr.getFileNames();
	      String oldFile = null;
	      String newFile = null;
	      if(fileNames.hasMoreElements()) {
	    	  //있으면 원래 파일명을 구하고 그걸 사용하여 변경된 파일명 구한다.
	    	  oldFile = (String)fileNames.nextElement();//원래 파일명
	    	  newFile = mr.getFilesystemName(oldFile);//변경 파일명
	    	  vo.setReview_img(newFile);
	    	  
	      }
	      //vo.setIp(request.getRemoteAddr()); //ip세팅
	      
	      ReviewDAO dao = new ReviewDAO();
	      int cnt = dao.insertReview(vo);
	      //레코드 추가 실패시 업로드한 파일을 삭제해야 함.
	      if(cnt<=0) {//실패
	    	  File file = new File(path,vo.getReview_img());//파일 삭제
	    	  file.delete();
	      }
	      request.setAttribute("cnt", cnt);
	      
	      return "reviewWriteOk.jsp";
	}

}

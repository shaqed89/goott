package kr.goott.kimbo.tattooist;

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

public class CommandTattooistWriteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파일을 업로드 하기 위해서는 request객체를 이용하여 MultipartRequest객체를 생성해야한다.
		//C:\Users\goott7\Downloads\cos-20.08\src\com\oreilly\servlet 여기에 MultipartRequest.class있음
		//1. request객체      2. 업로드할 위치 폴더 : D:\git\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\kimbo
		String path=request.getServletContext().getRealPath("/img/tattoo"); //WebContent부터 시작한 폴더명
		System.out.println("path=" + path);
		//3. 업로드 할수있는 파일의 최대크기(byte 1024=KB, 1024^2=MB, 1024^3=GB)       4.한글코드
		//5. 파일명 변경을 처리하는 클래스를 객체로 생성하여 매개변수로 설정한다.
		DefaultFileRenamePolicy pol = new DefaultFileRenamePolicy();
		
		MultipartRequest mr = new MultipartRequest(request, path, 1024*1024*1024, "UTF-8", pol); 
		//
		TattooistVO vo = new TattooistVO();
		vo.setTitle(mr.getParameter("title1"));
		vo.setPrice(mr.getParameter("pr"));
		vo.setGenre(mr.getParameter("gr"));
		vo.setSubject(mr.getParameter("sb"));
		vo.setPart(mr.getParameter("pt"));
		vo.setSigan(mr.getParameter("tm"));
		vo.setContent(mr.getParameter("content"));
		vo.setPhoto1(mr.getParameter("file1"));
		//if(mr.getParameter("photo2")!=null) vo.setPhoto1(mr.getParameter("photo2"));
		//if(mr.getParameter("photo3")!=null) vo.setPhoto1(mr.getParameter("photo3"));
		
		HttpSession sess = request.getSession();
		vo.setUserId((String)sess.getAttribute("userId"));//userId?userid?
		
		//업로드한 파일명 얻어오기
		Enumeration fileNames = mr.getFileNames();
		String oldFile = null;
		String newFile = null;
		if(fileNames.hasMoreElements()) {
			oldFile = (String)fileNames.nextElement();//원래파일명
			newFile = mr.getFilesystemName(oldFile);//변경파일명
			vo.setFilename1(newFile);
		}
		vo.setIp(request.getRemoteAddr());
		
		TattooistDAO dao = new TattooistDAO();
		int cnt = dao.insertData(vo);
		System.out.println("insertData까지댐");
		//레코드 추가 실패시 업로드한 파일을 삭제해야함.
		if(cnt<=0) { //실패
			//파일삭제
			File file = new File(path, vo.getPhoto1());
			file.delete();
		}
		
		request.setAttribute("cnt", cnt);
		return "writeOk.jsp";
	}

}

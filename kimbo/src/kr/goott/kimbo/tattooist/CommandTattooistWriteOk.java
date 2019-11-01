package kr.goott.kimbo.tattooist;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.goott.kimbo.controller.CommandService;
import kr.goott.kimbo.register.RegisterVO;

public class CommandTattooistWriteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
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
		if(mr.getParameter("file1")!=null) vo.setFilename1(mr.getParameter("file1"));
		if(mr.getParameter("file2")!=null) vo.setFilename1(mr.getParameter("file2"));
		if(mr.getParameter("file3")!=null) vo.setFilename1(mr.getParameter("file3"));
		
		HttpSession sess = request.getSession();
		vo.setUserId((String)sess.getAttribute("userId"));//userId?userid?
		
		//업로드한 파일명 얻어오기
		Enumeration fileNames = mr.getFileNames();
		String oldFile = null;
		String newFile = null;
		while(fileNames.hasMoreElements()) {
			oldFile = (String)fileNames.nextElement();//원래파일명
			System.out.println("oldFile="+oldFile);
			if(oldFile.equals("file3")) {
				newFile = mr.getFilesystemName(oldFile);//변경파일명
				vo.setFilename3(newFile);
			}
			else if(oldFile.equals("file2")) {
				newFile = mr.getFilesystemName(oldFile);//변경파일명
				vo.setFilename2(newFile);
			}
			else if(oldFile.equals("file1")) {
				newFile = mr.getFilesystemName(oldFile);//변경파일명
				vo.setFilename1(newFile);
			}
		}
		vo.setIp(request.getRemoteAddr());
		
		TattooistDAO dao = new TattooistDAO();
		int cnt = dao.insertData(vo);
		System.out.println("insertData까지댐");
		//레코드 추가 실패시 업로드한 파일을 삭제해야함.
		if(cnt<=0) { //실패
			//파일삭제
			File file = new File(path, vo.getFilename1());
			file.delete();
			file=new File(path, vo.getFilename2());
			if(file!=null)
				file.delete();
			file=new File(path, vo.getFilename3());
			if(file!=null)
				file.delete();
		}
		
		request.setAttribute("cnt", cnt);
		int num=Integer.parseInt(request.getParameter("num"));
		String userId = request.getParameter("userId");
		System.out.println("num="+num + ", userid=" + userId);
		vo.setNum(num);
		vo.setUserId(userId);
		request.setAttribute("vo", vo);
		
		List<TattooistVO> list = dao.tattooList("userId");
		request.setAttribute("list", list);
		
		return "writeOk.jsp";
	}

}

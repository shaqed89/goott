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
		//������ ���ε� �ϱ� ���ؼ��� request��ü�� �̿��Ͽ� MultipartRequest��ü�� �����ؾ��Ѵ�.
		//C:\Users\goott7\Downloads\cos-20.08\src\com\oreilly\servlet ���⿡ MultipartRequest.class����
		//1. request��ü      2. ���ε��� ��ġ ���� : D:\git\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\kimbo
		String path=request.getServletContext().getRealPath("/img/tattoo"); //WebContent���� ������ ������
		System.out.println("path=" + path);
		//3. ���ε� �Ҽ��ִ� ������ �ִ�ũ��(byte 1024=KB, 1024^2=MB, 1024^3=GB)       4.�ѱ��ڵ�
		//5. ���ϸ� ������ ó���ϴ� Ŭ������ ��ü�� �����Ͽ� �Ű������� �����Ѵ�.
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
		
		//���ε��� ���ϸ� ������
		Enumeration fileNames = mr.getFileNames();
		String oldFile = null;
		String newFile = null;
		if(fileNames.hasMoreElements()) {
			oldFile = (String)fileNames.nextElement();//�������ϸ�
			newFile = mr.getFilesystemName(oldFile);//�������ϸ�
			vo.setFilename1(newFile);
		}
		vo.setIp(request.getRemoteAddr());
		
		TattooistDAO dao = new TattooistDAO();
		int cnt = dao.insertData(vo);
		System.out.println("insertData������");
		//���ڵ� �߰� ���н� ���ε��� ������ �����ؾ���.
		if(cnt<=0) { //����
			//���ϻ���
			File file = new File(path, vo.getPhoto1());
			file.delete();
		}
		
		request.setAttribute("cnt", cnt);
		return "writeOk.jsp";
	}

}

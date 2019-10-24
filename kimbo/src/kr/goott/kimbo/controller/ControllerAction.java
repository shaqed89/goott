package kr.goott.kimbo.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/.do")
public class ControllerAction extends HttpServlet {      
	Map<String, CommandService> map = new HashMap<String, CommandService>();
    public ControllerAction() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		//properties 파일명을 web.xml에서 얻어오기
		//D:\Dropbox\WorkspaceWEB\WebMVC\WebContent\WEB-INF\properties\\urlMapping.Properties
		String propertiesFile = config.getInitParameter("proConfig");
		
		Properties propObject = new Properties();
		try {
			FileInputStream fis = new FileInputStream(propertiesFile);
			propObject.load(fis); //파일의 문자열 데이터를 Properties 객체로 생성함.
			fis.close();
		}catch(Exception e) {
			System.out.println("포로퍼티 생성 에러...");
			e.printStackTrace();
		}
		////Properties의 객체를 Map으로 저장하기///
		//키목록 얻어오기
		Set key = propObject.keySet();
		Iterator<String> iterKey = key.iterator();
		try {
			while(iterKey.hasNext()) {
				String k = iterKey.next(); //키 구하기
				String className = propObject.getProperty(k);//키값 구하기
//				System.out.println(k+", "+className);
				//문자열을 클래스 객체로 생성하는 클래스
				Class commandClass = Class.forName(className);
				//Interface 객체인 CommandService 객체 얻어오기
				CommandService command = (CommandService)commandClass.getDeclaredConstructors()[0].newInstance();
				map.put(k, command);
			}
		}catch(Exception e) {
			System.out.println("맵 생성에러...");
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//접속주소 알아내기
		//*.do, index.do, board/list.do, ....
		String uri = request.getRequestURI(); //    /WevMVC/index.do
		String contextPath = request.getContextPath(); //WebMVC
		
		String key = uri.substring(contextPath.length());
		
		CommandService service = map.get(key);
//		System.out.println("Controller="+key);
		String viewFile = service.execute(request, response);
		
		//Controller에서 view 페이지로 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewFile);
		dispatcher.forward(request, response);
	}

}

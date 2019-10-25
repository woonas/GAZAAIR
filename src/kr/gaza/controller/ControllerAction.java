package kr.gaza.controller;

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

@WebServlet("/*.do")
public class ControllerAction extends HttpServlet {
	Map<String, CommandService> map = new HashMap<String, CommandService>();
	public ControllerAction() {
		super();
	}
	
	public void init(ServletConfig config) throws ServletException{
		String propertiesFile = config.getInitParameter("proConfig");
		
		Properties propObject = new Properties();
		try {
			FileInputStream fis = new FileInputStream(propertiesFile);
			propObject.load(fis);
			fis.close();
		}catch(Exception e) {
			System.out.println("프로퍼티 생성 에러...");
			e.printStackTrace();
		}
		Set key = propObject.keySet();
		Iterator<String> iterKey = key.iterator();
		try {
			while(iterKey.hasNext()) {
				String k = iterKey.next();
				String className = propObject.getProperty(k);
				Class commandClass = Class.forName(className);
				CommandService command = (CommandService)commandClass.getDeclaredConstructors()[0].newInstance();
				map.put(k, command);
			}
		}catch(Exception e) {
			System.out.println("맵 생성에러...");
			e.printStackTrace();
		}
	}
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String key = uri.substring(contextPath.length());
		CommandService service = map.get(key);
		String viewFile = service.execute(request, response);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewFile);
		dispatcher.forward(request, response);
	}
}

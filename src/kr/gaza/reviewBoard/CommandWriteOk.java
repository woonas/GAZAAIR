package kr.gaza.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandWriteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ReviewBoardVO vo = new ReviewBoardVO();
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		vo.setWriter((String)request.getSession().getAttribute("userId"));
		vo.setIp(request.getRemoteAddr());
		
		ReviewBoardDAO dao = new ReviewBoardDAO();
		int cnt = dao.reviewBoardInsert(vo);
		
		request.setAttribute("cnt", cnt);
		
		return "writeOk.jsp";
	}
}

package kr.gaza.board.reviewBoard;

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
		
		BoardVO vo = new BoardVO();
		
		vo.setSubject(request.getParameter("subject"));	
		vo.setContent(request.getParameter("content"));
		vo.setWriter((String)request.getSession().getAttribute("userId"));
		vo.setIp(request.getRemoteAddr());
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardInsert(vo);
		
		request.setAttribute("cnt", cnt);
		
		return "writeOk.jsp";
	}

}

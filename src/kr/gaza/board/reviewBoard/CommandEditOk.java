package kr.gaza.board.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandEditOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardVO vo = new BoardVO();
		
		request.setCharacterEncoding("UTF-8");
		
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		//���� �ִ� ������ ��ȣ
		vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardUpdate(vo);		
		
		dao.boardSelect(vo);
		request.setAttribute("vo", vo);
		
		
		String viewPage=null;
		if(cnt>0) {
			viewPage = "view.jsp";
		}else if(cnt<=0){
			viewPage = "edit.jsp";
		}		
		return viewPage;
	}
}

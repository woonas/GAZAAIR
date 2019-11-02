package kr.gaza.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandDeleteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BoardVO vo = new BoardVO();	
		
		  vo.setNum(Integer.parseInt(request.getParameter("num")));
		  vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		 
		 
		
		//레코드삭제
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardDelete(vo.getNum());
		
		request.setAttribute("vo", vo);//num, pageNum
		request.setAttribute("cnt", cnt);//삭제결과
		
		return "deleteOk.jsp";
	}
}






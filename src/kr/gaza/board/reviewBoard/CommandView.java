package kr.gaza.board.reviewBoard;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;


public class CommandView implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		  BoardVO vo = new BoardVO();
		  //vo.setNum(Integer.parseInt(request.getParameter("num")));
		  //vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		  int num = Integer.parseInt(request.getParameter("num"));
		  vo.setNum(num);
		  vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		  
		  BoardDAO dao = new BoardDAO(); 
		  dao.boardSelect(vo);
		  vo.setTotalRecord(dao.boardTotalRecord());
		  dao.boardSelect(vo);
		  request.setAttribute("vo", vo);
		  //request.setAttribute("vo", vo);
		 
		
		
		return "view.jsp";
	}

}

package kr.gaza.board.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandEdit implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		BoardVO vo = new BoardVO();
		int num = Integer.parseInt(request.getParameter("num"));
		 vo.setNum(num);
		 vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		
		BoardDAO dao = new BoardDAO();
		dao.boardSelect(vo);
		
		request.setAttribute("vo", vo);

		return "edit.jsp";
	}

}

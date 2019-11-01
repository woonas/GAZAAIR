package kr.gaza.reviewBoard;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;


public class CommandView implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ReviewBoardVO vo = new ReviewBoardVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		
		ReviewBoardDAO dao = new ReviewBoardDAO();
		dao.reviewBoardSelect(vo);
		request.setAttribute("vo", vo);
		
		
		return "view.jsp";
	}

}

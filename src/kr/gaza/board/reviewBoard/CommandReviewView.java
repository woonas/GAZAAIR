package kr.gaza.board.reviewBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;


public class CommandReviewView implements CommandService {

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

		  request.setAttribute("vo", vo);
		 
		  List<ReviewBoardReplyVO> replyList = dao.replySelect(vo.getNum());
		  request.setAttribute("list", replyList);
		
		
		return "reviewBoard_view.jsp";
	}

}

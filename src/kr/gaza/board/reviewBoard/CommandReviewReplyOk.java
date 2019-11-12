package kr.gaza.board.reviewBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandReviewReplyOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		ReviewBoardReplyVO replyVo = new ReviewBoardReplyVO();
		replyVo.setCommentt(request.getParameter("replywrite"));
		replyVo.setReviewNum(Integer.parseInt(request.getParameter("rpNum")));
		replyVo.setMemberId(request.getParameter("rpId"));
		replyVo.setIp(request.getRemoteAddr());
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.replyInsertSelect(replyVo);
		
		List<ReviewBoardReplyVO> list = dao.replySelect(replyVo.getReviewNum());
		
		request.setAttribute("list", list);
		
	return "reviewBoard_reply.jsp";
	}

}

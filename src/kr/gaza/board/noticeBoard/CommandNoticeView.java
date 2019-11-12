package kr.gaza.board.noticeBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandNoticeView implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NoticeBoardVO vo = new NoticeBoardVO();
		int num = Integer.parseInt(request.getParameter("num"));
		vo.setNum(num);
		vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		
		NoticeBoardDAO dao = new NoticeBoardDAO();
		vo.setTotalRecord(dao.noticeBoardTotalRecord());
		dao.noticeBoardSelect(vo);
		request.setAttribute("vo", vo);

		List<String> lst = dao.noticeBoardGetTitles(num);
		
		int i = 0;
		if(num == 1) request.setAttribute("prev", "");
		else request.setAttribute("prev", lst.get(i++));
		
		if(num == vo.getTotalRecord()) request.setAttribute("next", "");
		else request.setAttribute("next", lst.get(i));
		return "noticeBoard_view.jsp";
	}
}
package kr.gaza.noticeBoard;

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
		
		// 이전글 다음글 글제목 가져오기
		List<String> lst = dao.noticeBoardGetTitles(num);
		
		int i = 0;
		if(num == 1) request.setAttribute("prev", "이전글이 없습니다.");
		else request.setAttribute("prev", lst.get(i++));
		
		if(num == vo.getTotalRecord()) request.setAttribute("next", "다음글이 없습니다.");
		else request.setAttribute("next", lst.get(i));
		
		return "board_view.jsp";
	}
}
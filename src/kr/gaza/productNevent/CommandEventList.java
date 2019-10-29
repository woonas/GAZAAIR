package kr.gaza.productNevent;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;
import kr.goott.board.BoardDAO;
import kr.goott.board.BoardVO;

public class CommandEventList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		EventVO vo = new EventVO();
		EventDAO dao = new EventDAO();
		//총 레코드 수
		vo.setTotalRecord(dao.eventTotalRecord());

		//해당 페이지 레코드 선택
		List<EventVO> lst = dao.getAllRecord();
		
		//뷰페이지로 가져갈 데이터
		request.setAttribute("vo", vo);
		request.setAttribute("lst", lst);
		return "event_List.jsp";
	}
}
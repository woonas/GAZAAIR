package kr.gaza.eventNpackage.alliance_event;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;


public class CommandEventDetail implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EventVO vo = new EventVO();
		vo.setEventNum(Integer.parseInt(request.getParameter("eventNum")));
		
		EventDAO dao = new EventDAO();
		dao.eventSelect(vo);
		
		List<EventVO> lst = dao.getAllRecord();
		
		request.setAttribute("vo", vo);
		request.setAttribute("lst", lst);
	
		
		return "event_detail.jsp";
	}

}

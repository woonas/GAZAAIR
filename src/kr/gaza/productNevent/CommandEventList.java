package kr.gaza.productNevent;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandEventList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		EventDAO dao = new EventDAO();
		
		List<EventVO> lst = dao.getAllRecord();
		
		request.setAttribute("lst", lst);
		return "alliance_Event.jsp";
	}
}
package kr.gaza.eventNpackage.alliance_event;

import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandEventList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("lst", new EventDAO().getAllRecord());
		System.out.println("dd");
		return "event_list.jsp";
	}
}
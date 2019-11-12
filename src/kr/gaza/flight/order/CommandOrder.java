package kr.gaza.flight.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandOrder implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		OrderDAO dao = new OrderDAO();
		OrderVO vo = dao.orderSelect(3841);

		request.setAttribute("vo", vo);
		return "event_list.jsp";
	}
}
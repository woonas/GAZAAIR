package kr.gaza.flight.booking;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandBooking1 implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String city = request.getParameter("city");
        String iata = request.getParameter("iata");
        if (city != null) request.setAttribute("city", city);
        if (iata != null) request.setAttribute("iata", iata);
        return "booking1.jsp";
	}
}

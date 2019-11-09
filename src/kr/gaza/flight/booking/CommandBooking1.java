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
        String airportFrom = request.getParameter("airportFrom");
        String airportTo = request.getParameter("airportTo");

        if (airportFrom != null)  request.setAttribute("airportFrom", airportFrom);
        if (airportTo != null)  request.setAttribute("airportTo", airportTo);
        return "booking1.jsp";
	}

}

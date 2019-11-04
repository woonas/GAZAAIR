package kr.gaza.aviation.flight;

import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandFlight implements CommandService {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FlightDAO dao = new FlightDAO();
        FlightVO vo = dao.flightSelect(21);

        request.setAttribute("vo", vo);

        return "event_list.jsp";
    }
}

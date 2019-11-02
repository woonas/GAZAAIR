package kr.gaza.flight;

import kr.gaza.controller.CommandService;
import kr.gaza.order.OrderDAO;
import kr.gaza.order.OrderVO;

import java.io.IOException;

public class CommandFlight implements CommandService {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FlightDAO dao = new FlightDAO();
        FlightVO vo = dao.flightSelect(21);

        request.setAttribute("vo", vo);

        return "event_List.jsp";
    }
}

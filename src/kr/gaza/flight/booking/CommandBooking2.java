package kr.gaza.flight.booking;

import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandBooking2 implements CommandService {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        BookingVO bookingVO = new BookingVO();
        bookingVO.setJourneyType(request.getParameter("flight-type"));
        String[] airportFrom = request.getParameter("airportFrom").split("&");
        String[] airportTo = request.getParameter("airportTo").split("&");
        String[] flightDate = request.getParameter("flightDate").split("&");
        String numOfPassengers = request.getParameter("numOfPassengers");
        String seatType = request.getParameter("seat-type");

        for (int i = 0; i < airportFrom.length; i++) {
            JourneyVO journeyVO = new JourneyVO();
            journeyVO.setAirportFrom(airportFrom[i]);
            journeyVO.setAirportTo(airportTo[i]);
            journeyVO.setFlightDate(flightDate[i]);
            journeyVO.setNumOfPassengers(numOfPassengers);
            journeyVO.setFlightClass(seatType);
            bookingVO.getJourneyList().add(journeyVO);
        }

        BookingDAO bookingDAO = new BookingDAO();
        bookingDAO.getFlightInformation(bookingVO);
        request.setAttribute("bookingVO", bookingVO);

        return "booking2.jsp";
    }
}
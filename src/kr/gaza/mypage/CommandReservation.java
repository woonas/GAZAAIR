package kr.gaza.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.aviation.flight.FlightVO;
import kr.gaza.controller.CommandService;

public class CommandReservation implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ReservationVO vo = new ReservationVO();
		
		
		return null;
	}

}

package kr.gaza.booking;

import kr.gaza.flight.FlightVO;

import java.util.ArrayList;
import java.util.List;

public class BookingVO {
    private List<FlightVO> journeyList = new ArrayList<>();
    private List<CompanionVO> companionList = new ArrayList<>();
}

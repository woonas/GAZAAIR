package kr.gaza.booking;

import java.util.List;

public interface BookingInterface {

    public List<JourneyVO> getAllRecord();

    public int bookingInsert(JourneyVO vo);

    public int bookingUpdate(JourneyVO vo);

    public int bookingDelete(int num);

    public int bookingTotalRecord();

    public void bookingSelect(JourneyVO vo);
}

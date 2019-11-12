package kr.gaza.flight.booking;

import kr.gaza.aviation.flight.FlightVO;
import kr.gaza.aviation.product.ProductVO;
import kr.gaza.aviation.seatreserve.SeatReserveVO;
import kr.gaza.home.DBConn;

import java.util.ArrayList;
import java.util.List;

public class BookingDAO extends DBConn implements BookingInterface{
    @Override
    public void getFlightInformation(BookingVO vo) {
        try {
            dbConn();

            String sql = "select productnum, depart, arrive, price, sale from product where depart=? and arrive=?";
            for (int i = 0; i < vo.getJourneyList().size(); i++) {
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, vo.getJourneyList().get(i).getAirportFrom());
                pstmt.setString(2, vo.getJourneyList().get(i).getAirportTo());

                rs = pstmt.executeQuery();

                if (rs.next()) {
                    ProductVO productVO = new ProductVO();
                    productVO.setProductNum(rs.getInt(1));
                    productVO.setDepart(rs.getString(2));
                    productVO.setArrive(rs.getString(3));
                    productVO.setPrice(rs.getInt(4));
                    productVO.setProductSale(rs.getInt(5));
                    vo.getProductList().add(productVO);
                }
            }
            for (int i = 0; i < vo.getProductList().size(); i++) {
                sql = "select flightNum, airplaneName, departTime, arriveTime, sale from flight where productnum=? and departTime like '?%'";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, vo.getProductList().get(i).getProductNum());
                pstmt.setString(2, vo.getJourneyList().get(i).getFlightDate());

                rs = pstmt.executeQuery();

                if (rs.next()) {
                    FlightVO flightVO = new FlightVO();
                    flightVO.setFlightNum(rs.getInt(1));
                    flightVO.setAirplaneName(rs.getString(2));
                    flightVO.setDepartTime(rs.getString(3));
                    flightVO.setArriveTime(rs.getString(4));
                    flightVO.setFlightSale(rs.getInt(5));
                    vo.getFlightList().add(flightVO);
                }
            }

            // 뱅기이름으로 총좌석수 - 예약된 좌석 cnt해서 갯수
            for (int i = 0; i < vo.getFlightList().size(); i++) {
                sql = "select SEATRESERVENUM, SEATTYPE, SEATNO, RESERVED from SEATRESERVE where FLIGHTNUM = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, vo.getFlightList().get(i).getFlightNum());

                rs = pstmt.executeQuery();
                List<SeatReserveVO> list = new ArrayList<>();
                while (rs.next()) {
                    SeatReserveVO seatReserveVO = new SeatReserveVO();
                    seatReserveVO.setSeatReserveNum(rs.getInt(1));
                    seatReserveVO.setSeatType(rs.getInt(2));
                    seatReserveVO.setSeatNo(rs.getInt(3));
                    seatReserveVO.setReserved(rs.getInt(4));
                    list.add(seatReserveVO);
                }
                vo.getSeatReserveList().add(list);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbClose();
        }
    }
}

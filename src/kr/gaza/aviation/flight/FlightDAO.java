package kr.gaza.aviation.flight;

import kr.gaza.home.DBConn;

public class FlightDAO extends DBConn implements FlightInterface {
    @Override
    public FlightVO flightSelect(int flightNum) {
        FlightVO vo = new FlightVO();
        vo.setProductNum(flightNum);
        try {
            dbConn();
            String sql = "select * from flight where flightnum = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, flightNum);
            rs = pstmt.executeQuery();

            while(rs.next()) {
                vo.setAirplaneName(rs.getString(2));
                vo.setProductNum(rs.getInt(3));
                vo.setDepartTime(rs.getString(4));
                vo.setArriveTime(rs.getString(5));
                vo.setFlightSale(rs.getInt(6));
            }
        }catch(Exception e) {
            System.out.println("flightSelect Error");
            e.printStackTrace();
        }finally {
            dbClose();
        }

        return vo;
    }
}

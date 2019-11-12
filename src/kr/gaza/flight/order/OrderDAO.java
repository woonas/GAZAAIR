package kr.gaza.flight.order;

import kr.gaza.home.DBConn;

public class OrderDAO extends DBConn implements OrderInterface {
    @Override
    public OrderVO orderSelect(int memberNum) {
        OrderVO vo = new OrderVO();
        vo.setMemberNum(memberNum);
        try {
            dbConn();
            String sql = "select * from ordertbl where membernum = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, memberNum);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                vo.setOrderNum(rs.getInt(1));
                vo.setFoodNum(rs.getInt(3));
                vo.setCompanionNum(rs.getInt(4));
                vo.setSeatReserveNum(rs.getInt(5));
                int i = 6;
                while (i < 12) {
                    if (rs.getInt(i) == 0 ) break;
                    vo.setFlightNum(rs.getInt(i));
                    i++;
                }
                vo.setRegDate(rs.getString(12));
            }
        }catch(Exception e) {
            System.out.println("orderSelect Error");
            e.printStackTrace();
        }finally {
            dbClose();
        }

        return vo;
    }
}

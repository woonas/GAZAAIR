package kr.gaza.product;

import kr.gaza.home.DBConn;

public class ProductDAO extends DBConn implements ProductInterface {
    @Override
    public ProductVO productSelect(int productNum) {
        ProductVO vo = new ProductVO();
        vo.setProductNum(productNum);
        try {
            dbConn();
            String sql = "select * from product where productnum = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, productNum);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                vo.setDepart(rs.getString(2));
                vo.setArrive(rs.getString(3));
                vo.setPrice(rs.getInt(4));
                vo.setProductCnt(rs.getInt(5));
                vo.setProductSale(rs.getInt(6));
                vo.setRegDate(rs.getString(7));
            }
        }catch(Exception e) {
            System.out.println("productSelect Error");
            e.printStackTrace();
        }finally {
            dbClose();
        }

        return vo;
    }
}

package kr.gaza.eventNproduct;

import java.util.ArrayList;
import java.util.List;

import kr.gaza.home.DBConn;

public class RecommendDAO extends DBConn implements RecommendInterface {

	@Override
	public List<RecommendVO> getAllRecord() {
		List<RecommendVO> lst = new ArrayList<>();
		try {
			dbConn();
			String sql = "select c.city, c.cityimg from product a join recommandProduct b on a.productnum = b.productnum join airport c on a.arrive = c.iata";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RecommendVO vo = new RecommendVO();
				vo.setCity(rs.getString(1));
				vo.setCityImg(rs.getString(2));
				lst.add(vo);
			
			
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("레코드 갖고오기 에러");
		}finally {
			dbClose();
		}
		
		
		return lst;
	}

	@Override
	public List<RecommendVO> getBestRecord(int onePageRecord) {
		List<RecommendVO> lst = new ArrayList<>();
		try {
			dbConn();
			String sql = "select * from (select a.productCnt,b.city,b.cityimg from product a join airport b on a.arrive = b.iata order by a.productcnt desc) where rownum<=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  onePageRecord);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RecommendVO vo = new RecommendVO();
				vo.setProductCnt(rs.getInt(1));
				vo.setCity(rs.getString(2));
				vo.setCityImg(rs.getString(3));
				lst.add(vo);
			}
			
		}catch(Exception e) {
			
		}finally {
			dbClose();
		}
		
		return lst;
	}

	@Override
	public List<RecommendVO> getSaleRecord(int onePageRecord) {
		List<RecommendVO> lst = new ArrayList<>();
		try {
			dbConn();
			String sql = "select * from (select a.sale,b.city,b.cityimg from product a join airport b on a.arrive = b.iata order by a.sale desc) where rownum<=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  onePageRecord);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RecommendVO vo = new RecommendVO();
				vo.setSale(rs.getInt(1));
				vo.setCity(rs.getString(2));
				vo.setCityImg(rs.getString(3));
				lst.add(vo);
			}
			
		}catch(Exception e) {
			
		}finally {
			dbClose();
		}
		
		return lst;
	}
	
}

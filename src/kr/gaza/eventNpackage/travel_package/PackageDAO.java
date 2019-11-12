package kr.gaza.eventNpackage.travel_package;

import java.util.ArrayList;
import java.util.List;

import kr.gaza.home.DBConn;

public class PackageDAO extends DBConn implements PackageInterface {

	@Override
	public List<PackageVO> getAllRecord() {
		List<PackageVO> lst = new ArrayList<>();
		try {
			dbConn();
			String sql = "select c.city, c.IATA, c.cityimg from product a join recommandProduct b on a.productnum = b.productnum join airport c on a.arrive = c.iata";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				PackageVO vo = new PackageVO();
				vo.setCity(rs.getString(1));
				vo.setIata(rs.getString(2));
				vo.setCityImg(rs.getString(3));
				lst.add(vo);
			}
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("���ڵ� ������� ����");
		}finally {
			dbClose();
		}
		
		
		return lst;
	}

	@Override
	public List<PackageVO> getBestRecord(int onePageRecord) {
		List<PackageVO> lst = new ArrayList<>();
		try {
			dbConn();
			String sql = "select * from (select a.productCnt, b.city, b.IATA, b.cityimg from product a join airport b on a.arrive = b.iata order by a.productcnt desc) where rownum<=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  onePageRecord);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PackageVO vo = new PackageVO();
				vo.setProductCnt(rs.getInt(1));
				vo.setCity(rs.getString(2));
				vo.setIata(rs.getString(3));
				vo.setCityImg(rs.getString(4));
				lst.add(vo);
			}
		}catch(Exception e) {
			
		}finally {
			dbClose();
		}
		
		return lst;
	}

	@Override
	public List<PackageVO> getSaleRecord(int onePageRecord) {
		List<PackageVO> lst = new ArrayList<>();
		try {
			dbConn();
			String sql = "select * from (select a.sale, b.city, b.IATA, b.cityimg from product a join airport b on a.arrive = b.iata order by a.sale desc) where rownum<=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  onePageRecord);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PackageVO vo = new PackageVO();
				vo.setSale(rs.getInt(1));
				vo.setCity(rs.getString(2));
				vo.setIata(rs.getString(3));
				vo.setCityImg(rs.getString(4));
				lst.add(vo);
			}
		}catch(Exception e) {
			
		}finally {
			dbClose();
		}
		
		return lst;
	}
	
}

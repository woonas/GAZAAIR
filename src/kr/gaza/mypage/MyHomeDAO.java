package kr.gaza.mypage;


import kr.gaza.home.DBConn;

public class MyHomeDAO extends DBConn implements MyHomeInterface{
	@Override
	public MyHomeVO memberRecord(int memberNum) {
		MyHomeVO vo = new MyHomeVO();
		try {
			dbConn();
			vo.setMemberNum(2739);
			String sql = "select membernamekor, membernameeng, flightcnt from member where membernum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNum);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMemberNameKor(rs.getString(1));
				vo.setMemberNameEng(rs.getString(2));
				vo.setMemberFlightCnt(rs.getInt(3));
			}
			//���ϸ���
			sql = "select sum(a.point) from miles a join mymiles b on a.milesnum = b.milesnum where b.membernum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getMemberNum());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMyMileage(rs.getInt(1));
			}
			
			//���
			int rownum=0;
			sql = "select rownum, gradetype from grade where needMiles<=? order by needMiles";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getMyMileage());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setMemberGrade(rs.getString(2));
				rownum = rs.getInt(1);
			}
			
			//�ʿ�����Ʈ
			sql = "select needMiles from grade";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			for (int i = 0; i < rownum; i++) {
				rs.next();
			}
			if(rs.next()) {
				System.out.println(rs.getInt(1));
				vo.setNeedMileage(rs.getInt(1) - vo.getMyMileage());
			}
		}catch(Exception e) {
			
		}finally {
			dbClose();
		}
		return vo;
	}
	

}

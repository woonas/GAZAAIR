package kr.gaza.eventNpackage.alliance_event;

import java.util.ArrayList;
import java.util.List;

import kr.gaza.home.DBConn;

public class EventDAO extends DBConn implements EventInterface {

	@Override
	public List<EventVO> getAllRecord() {
		List<EventVO> lst = new ArrayList<>();
		try {
			dbConn();
			
			String sql = "select * from event order by eventnum desc";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			System.out.println(rs);
			while(rs.next()) {
				EventVO vo = new EventVO();
				vo.setEventNum(rs.getInt(1));
				vo.setEventName(rs.getString(2));
				vo.setEventThumbnail(rs.getString(3));
				vo.setEventImg(rs.getString(4));
				vo.setEventContent(rs.getString(5));
				vo.setEventCompany(rs.getString(6));
				vo.setStartDate(rs.getString(7));
				vo.setEndDate(rs.getString(8));
				lst.add(vo);
			}
		}catch(Exception e) {
			System.out.println("���ڵ� ��ü ����");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}

	@Override
	public int eventInsert(EventVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eventUpdate(EventVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eventDelete(int num) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public void eventSelect(EventVO vo) {
		try {
			dbConn();
			String sql = "select eventnum,eventname,startdate,enddate,eventImg from event where eventNum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getEventNum());
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setEventNum(rs.getInt(1));
				vo.setEventName(rs.getString(2));
				vo.setStartDate(rs.getString(3));
				vo.setEndDate(rs.getString(4));
				vo.setEventImg(rs.getString(5));
			}
			
		}catch(Exception e) {
			System.out.println("���ڵ� ���� ����");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
	}
	
}

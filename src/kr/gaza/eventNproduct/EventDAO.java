package kr.gaza.eventNproduct;

import java.util.ArrayList;
import java.util.List;
import kr.gaza.home.DBConn;

public class EventDAO extends DBConn implements EventInterface {

	@Override
	public List<EventVO> getAllRecord() {
		List<EventVO> lst = new ArrayList<EventVO>();
		try {
			dbConn();
			
			String sql = "select * from event order by eventNum desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
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
		// TODO Auto-generated method stub
		
	}
	
}

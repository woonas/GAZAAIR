package kr.gaza.noticeBoard;

import java.util.ArrayList;
import java.util.List;

import kr.gaza.home.DBConn;

public class NoticeBoardDAO extends DBConn implements NoticeBoardInterface {

	@Override
	public List<NoticeBoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage) {
		List<NoticeBoardVO> lst = new ArrayList<>();
		try {
			dbConn();
			String sql = "select * from (select * from (select noticeNum, noticeType, subject, content, hit, to_char(regdate, 'YYYY.MM.DD') from noticeBoard order by noticenum desc) where rownum<=? order by noticeNum asc) where rownum<=? order by noticeNum desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pageNum*onePageRecord);
			
			int lastRecord = totalRecord%onePageRecord;
			
			if(pageNum==totalPage && lastRecord!=0) {
				pstmt.setInt(2, lastRecord);
			}else {
				pstmt.setInt(2, onePageRecord);
			}

			rs = pstmt.executeQuery();
			while(rs.next()) {
				NoticeBoardVO vo = new NoticeBoardVO();
				vo.setNum(rs.getInt(1));
				vo.setType(rs.getInt(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(readClobData(rs.getCharacterStream(4)));
				vo.setHit(rs.getInt(5));
				vo.setRegdate(rs.getString(6));
				lst.add(vo);
			}
		}catch(Exception e) {
			System.out.println("레코드 해당페이지 선택.");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}

	@Override
	public int noticeBoardInsert(NoticeBoardVO vo) {
		return 0;
	}

	@Override
	public int noticeBoardUpdate(NoticeBoardVO vo) {
		return 0;
	}

	@Override
	public int noticeBoardDelete(int num) {
		
		return 0;
	}

	@Override
	public void noticeBoardHit(int num) {
		

	}

	@Override
	public int noticeBoardTotalRecord() {
		int cnt=0;
		try {
			dbConn();
			String sql = "select count(noticenum) from noticeboard";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		}catch(Exception e) {
			System.out.println("공지게시판 총레코드수 에러");
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public void noticeBoardSelect(NoticeBoardVO vo) {
		

	}

}

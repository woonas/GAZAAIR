package kr.gaza.board.noticeBoard;

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
			System.out.println("���ڵ� �ش������� ����.");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}

	@Override
	public int noticeBoardInsert(NoticeBoardVO vo) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "insert into noticeboard(noticenum, noticetype, subject, content, hit, regdate) values(noticeboard_sq.nextVal,?,?,?,0,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getType());
			pstmt.setString(2, vo.getSubject());
			pstmt.setString(3, vo.getContent());
			
			cnt = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("�������� �߰� ����...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public int noticeBoardUpdate(NoticeBoardVO vo) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "update noticeboard set subject=?, content=? where noticenum=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getNum());
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public int noticeBoardDelete(int num) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "delete from noticeboard where noticenum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public void noticeBoardHit(int num) {
		try {
			dbConn();
			String sql = "update noticeboard set hit = hit +1 where noticenum=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			
		}finally {
			dbClose();
		}
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
			System.out.println("�����Խ��� �ѷ��ڵ�� ����");
			e.printStackTrace();
		}
		finally {
			dbClose();
		}
		return cnt;

	}

	@Override
	public void noticeBoardSelect(NoticeBoardVO vo) {
		try {
			noticeBoardHit(vo.getNum());
			
			dbConn();
			String sql = "select noticenum, noticetype, subject, content, hit, to_char(regdate, 'YYYY.MM.DD') from noticeboard where noticenum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setNum(rs.getInt(1));
				vo.setType(rs.getInt(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(readClobData(rs.getCharacterStream(4)));
				vo.setHit(rs.getInt(5));
				vo.setRegdate(rs.getString(6));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}

	@Override
	public List<String> noticeBoardGetTitles(int noticeBoardNum) {
		List<String> titles = new ArrayList<>();
		
		try {
			
			dbConn();
			String sql = "select subject from noticeboard where noticenum=? or noticenum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeBoardNum-1);
			pstmt.setInt(2, noticeBoardNum+1);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				titles.add(rs.getString(1));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return titles;
	}
	
}
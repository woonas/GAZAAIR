package kr.gaza.reviewBoard;

import java.util.ArrayList;
import java.util.List;

import kr.gaza.home.DBConn;

public class ReviewBoardDAO extends DBConn implements ReviewBoardInterface {

		@Override
		public List<ReviewBoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord,
				int totalPage) {
			  List<ReviewBoardVO> lst = new ArrayList<ReviewBoardVO>(); 
			  try { 
				  dbConn();
			  
				  String sql = "select reviewnum, reviewtype, subject, content, writer, hit, to_char(regdate, 'YYYY.MM.DD'), ip from reviewboard";
				  pstmt = conn.prepareStatement(sql);
				  
				  rs = pstmt.executeQuery(); 
				  
				  while(rs.next()) { 
					 ReviewBoardVO vo = new ReviewBoardVO();
					  vo.setNum(rs.getInt(1)); 
					  vo.setType(rs.getInt(2));
					  vo.setSubject(rs.getString(3));
					  vo.setContent(rs.getString(4)); 
					  vo.setWriter(rs.getString(5));
					  vo.setHit(rs.getInt(6));
					  vo.setRegdate(rs.getString(7));
					  vo.setIp(rs.getString(8));
					  
					  lst.add(vo); 
				  } 
			  }catch(Exception e) {
				  System.out.println("레코드 전체 선택...."); 
				  e.printStackTrace(); }
			  finally {
				  dbClose(); 
			  } 
			  return lst;
		}

		@Override
		public int reviewBoardInsert(ReviewBoardVO vo) {
			int cnt = 0;
			try {
				dbConn();
				String sql = "insert into reviewboard(reviewnum, reviewtype, subject, content, writer, hit, regdate, ip) values(boardsq.nextVal,?,?,?,?,0,sysdate,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, vo.getType());
				pstmt.setString(2, vo.getSubject());
				pstmt.setString(3, vo.getContent());
				pstmt.setString(4, vo.getWriter());
				pstmt.setInt(5, vo.getHit());
				//pstmt.setString(6, vo.getRegdate());
				pstmt.setString(6, vo.getIp());
				
				cnt = pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("인서트 에러");
			}finally {
				dbClose();
			}
			return cnt;
		}

		@Override
		public int reviewBoardUpdate(ReviewBoardVO vo) {
			int cnt = 0;
			try {
				dbConn();
				String sql = "update reviewboard set subject=?, content=? where num=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getSubject());
				pstmt.setString(2, vo.getContent());
				pstmt.setInt(3, vo.getNum());
				
				cnt = pstmt.executeUpdate();

			}catch(Exception e) {
				System.out.println("수정에러");
				e.printStackTrace();
			}finally {
				dbClose();
			}
			return cnt;
		}

		@Override
		public int reviewBoardDelete(int num) {
			int cnt=0;
			try {
				dbConn();
				String sql = "delete from reviewboard where num=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				
				cnt = pstmt.executeUpdate();
				
			}catch(Exception e) {
				System.out.println("삭제에러");
				e.printStackTrace();
			}finally {
				dbClose();
			}
			
			return cnt;
		}

		@Override
		public void reviewBoardHit(int num) {
			try {
				dbConn();
				String sql = "update reviewboard set hit = hit +1 where num=?";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				dbClose();
			}

			
		}

		@Override
		public int reviewBoardTotalRecord() {
			int cnt=0;
			try {
				dbConn();
				String sql = "select count(reviewnum) from reviewboard";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					cnt = rs.getInt(1);
				}
			}catch(Exception e) {}
			finally {dbClose();}
			return cnt;
		}

		@Override
		public void reviewBoardSelect(ReviewBoardVO vo) {
			
			try {
				dbConn();
				String sql = "select num, subject, content, writer, hit, regdate from reviewboard where num=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, vo.getNum());
				
				rs = pstmt.executeQuery();
				if(rs.next()) {
					vo.setNum(rs.getInt(1));
					vo.setSubject(rs.getString(2));
					vo.setContent(rs.getString(3));
					vo.setWriter(rs.getString(4));
					vo.setHit(rs.getInt(5));
					vo.setRegdate(rs.getString(6));
				}
			}catch(Exception e) {
				System.out.println();
				e.printStackTrace();
			}finally {
				dbClose();
					
			}
			
		}


	}


/*
 * package kr.goott.board;
 * 
 * import java.sql.PreparedStatement; import java.util.ArrayList; import
 * java.util.List;
 * 
 * import kr.goott.home.DBConn;
 * 
 * public class BoardDAO extends DBConn implements BoardInterface {
 * 
 * @Override public List<BoardVO> getAllRecord(int pageNum, int onePageRecord) {
 * List<BoardVO> lst = new ArrayList<BoardVO>(); try { dbConn();
 * 
 * String sql =
 * "select * from (select * from (select num, subject, userid, hit, to_char(regDate, 'YYYY-MM-DD') "
 * + " from freeboard order by num desc) where rownum<=? order by num asc)" +
 * " where rownum<=? order by num desc"; pstmt = conn.prepareStatement(sql);
 * pstmt.setInt(1, pageNum*onePageRecord); pstmt.setInt(2, onePageRecord);
 * 
 * rs = pstmt.executeQuery(); while(rs.next()) { BoardVO vo = new BoardVO();
 * vo.setNum(rs.getInt(1)); vo.setSubject(rs.getString(2));
 * vo.setUserId(rs.getString(3)); vo.setHit(rs.getInt(4));
 * vo.setRegDate(rs.getString(5)); lst.add(vo);
 * 
 * }
 * 
 * }catch(Exception e) { System.out.println("���ڵ� ��ü ����"); e.printStackTrace();
 * }finally { dbClose(); } return lst; }
 * 
 * @Override public int boardInsert(BoardVO vo) { int cnt = 0; try { dbConn();
 * String sql =
 * "insert into freeboard(num, subject, content, userid, hit, ragdate, ip) values(boardsq.nextVal,?,?,?,0,sysdate,?)"
 * ; pstmt = conn.prepareStatement(sql); pstmt.setString(1, vo.getSubject());
 * pstmt.setString(2, vo.getContent()); pstmt.setString(3, vo.getUserId());
 * pstmt.setString(4, vo.getIp());
 * 
 * cnt = pstmt.executeUpdate(); }catch(Exception e) { e.printStackTrace();
 * }finally { dbClose(); } return cnt; }
 * 
 * @Override public int boardUpdate(BoardVO vo) { int cnt = 0; try { dbConn();
 * String sql = "update freeboard set subject=?, content=? where num=?"; pstmt =
 * conn.prepareStatement(sql); pstmt.setString(1, vo.getSubject());
 * pstmt.setString(2, vo.getContent()); pstmt.setInt(3, vo.getNum());
 * 
 * cnt = pstmt.executeUpdate();
 * 
 * 
 * }catch(Exception e) { System.out.println("��������"); e.printStackTrace();
 * }finally { dbClose(); } return cnt; }
 * 
 * @Override public int boardDelete(int num) { int cnt=0; try { dbConn(); String
 * sql = "delete from freeboard where num=?"; pstmt =
 * conn.prepareStatement(sql); pstmt.setInt(1, num);
 * 
 * cnt = pstmt.executeUpdate();
 * 
 * }catch(Exception e) { System.out.println("��������"); e.printStackTrace();
 * }finally { dbClose(); }
 * 
 * return cnt; }
 * 
 * @Override public void boardHit(int num) { try { dbConn(); String sql =
 * "update freeboard set hit = hit +1 where num=?";
 * 
 * pstmt = conn.prepareStatement(sql); pstmt.setInt(1, num);
 * pstmt.executeUpdate(); }catch(Exception e) {
 * 
 * }finally { dbClose(); }
 * 
 * }
 * 
 * @Override public int boardTotalRecord() { int cnt=0; try { dbConn(); String
 * sql= "select count(num) from freeboard"; pstmt = conn.prepareStatement(sql);
 * rs = pstmt.executeQuery(); if(rs.next()) { cnt = rs.getInt(1);
 * 
 * } }catch(Exception e) {
 * 
 * }finally { dbClose(); } return cnt; }
 * 
 * @Override public void boardSelect(BoardVO vo) {
 * 
 * try { dbConn(); String sql =
 * "select num, subject, content, userid, hit, regdate from freeboard where num=?"
 * ; pstmt = conn.prepareStatement(sql); pstmt.setInt(1, vo.getNum());
 * 
 * rs = pstmt.executeQuery(); if(rs.next()) { vo.setNum(rs.getInt(1));
 * vo.setSubject(rs.getString(2)); vo.setContent(rs.getString(3));
 * vo.setUserId(rs.getString(4)); vo.setHit(rs.getInt(5));
 * vo.setRegDate(rs.getString(6)); } }catch(Exception e) { System.out.println();
 * e.printStackTrace(); }finally { dbClose();
 * 
 * }
 * 
 * }
 * 
 * @Override public int replyInsertSelect(ReplyVO vo) {
 * 
 * int cnt = 0; //��� ���� try { dbConn(); //��� ���ڵ� �߰� String sql =
 * "insert into boardreply(no, coment, userid, num, ip, wirtedate) values(boardSq.nextval, ?,?,?,?,sysdate)"
 * ; pstmt = conn.prepareStatement(sql); pstmt.setString(1, vo.getComent());
 * pstmt.setString(2, vo.getUserId()); pstmt.setInt(3, vo.getNum());
 * pstmt.setString(4, vo.getIp());
 * 
 * cnt = pstmt.executeUpdate();
 * 
 * 
 * }catch(Exception e) { e.printStackTrace(); }finally { dbClose(); } return
 * cnt; }
 * 
 * @Override public List<ReplyVO> replySelect(int num) { List<ReplyVO> list =
 * new ArrayList<ReplyVO>(); try { //��ۼ��� String sql =
 * "select no, num, coment, userId, writedate from boardreply where num=? order by no asc"
 * ; pstmt.setInt(1, num); rs = pstmt.executeQuery();
 * 
 * while(rs.next()) { ReplyVO replyVo = new ReplyVO();
 * replyVo.setNo(rs.getInt(1)); replyVo.setNum(rs.getInt(2));
 * replyVo.setComent(rs.getString(3)); replyVo.setUserId(rs.getString(4));
 * replyVo.setWriteDate(rs.getString(5));
 * 
 * list.add(replyVo); } }catch(Exception e) { e.printStackTrace(); }finally {
 * dbClose(); }
 * 
 * return list; }
 * 
 * @Override public void replyDelete(int no) { try { dbConn(); String sql =
 * "delete from boardreply where no=?"; pstmt = conn.prepareStatement(sql);
 * pstmt.setInt(1, no); pstmt.executeUpdate(); }catch(Exception e) {
 * e.printStackTrace(); }finally { dbClose(); }
 * 
 * } //��ۼ���
 * 
 * @Override public int replyUpdate(ReplyVO vo) { int cnt=0; try { dbConn();
 * String sql = "update boardreply set coment=? where no=?"; pstmt =
 * conn.prepareStatement(sql); pstmt.setString(1, vo.getComent());
 * pstmt.setInt(2, vo.getNo());
 * 
 * cnt = pstmt.executeUpdate(); }catch(Exception e) { e.printStackTrace();
 * }finally{ dbClose(); } return cnt; }
 * 
 * }
 */

package kr.gaza.board.reviewBoard;

import java.util.ArrayList;
import java.util.List;

import kr.gaza.home.DBConn;

public class BoardDAO extends DBConn implements BoardInterface {

		@Override
		public List<BoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord,
				int totalPage) {
			  List<BoardVO> lst = new ArrayList<BoardVO>(); 
			  try { 
				  dbConn();
			  
				  String sql = "select reviewnum, reviewtype, subject, content, writer, hit, to_char(regdate, 'YYYY.MM.DD'), ip from reviewboard";
				  pstmt = conn.prepareStatement(sql);
				  
				  rs = pstmt.executeQuery(); 
				  
				  while(rs.next()) { 
					 BoardVO vo = new BoardVO();
					  vo.setNum(rs.getInt(1)); 
					  vo.setType(rs.getInt(2));
					  vo.setSubject(rs.getString(3));
					  vo.setContent(rs.getString(4)); 
					  vo.setWriter(rs.getString(5));
					  vo.setHit(rs.getInt(6));
					  vo.setRegDate(rs.getString(7));
					  vo.setIp(rs.getString(8));
					  
					  lst.add(vo); 
				  } 
			  }catch(Exception e) {
				  System.out.println("���ڵ� ��ü ����...."); 
				  e.printStackTrace(); }
			  finally {
				  dbClose(); 
			  } 
			  return lst;
		}

		@Override
		public int boardInsert(BoardVO vo) {
			int cnt = 0;
			try {
				dbConn();
				String sql = "insert into reviewboard values(reviewboard_sq.nextVal,?,?,?,?,0,sysdate,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, 1);
				pstmt.setString(2, vo.getSubject());
				pstmt.setString(3, vo.getContent());
				pstmt.setString(4, "kk123");
				pstmt.setString(5, vo.getIp());
				
				cnt = pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("�μ�Ʈ ����");
			}finally {
				dbClose();
			}
			return cnt;
		}

		@Override
		public int boardUpdate(BoardVO vo) {
			int cnt = 0;
			try {
				dbConn();
				String sql = "update reviewboard set subject=?, content=? where reviewnum=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getSubject());
				pstmt.setString(2, vo.getContent());
				pstmt.setInt(3, vo.getNum());
				
				cnt = pstmt.executeUpdate();

			}catch(Exception e) {
				System.out.println("��������");
				e.printStackTrace();
			}finally {
				dbClose();
			}
			return cnt;
		}

		@Override
		public int boardDelete(int num) {
			int cnt=0;
			try {
				dbConn();
				String sql = "delete from reviewboard where reviewnum=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				
				cnt = pstmt.executeUpdate();
				
			}catch(Exception e) {
				System.out.println("��������");
				e.printStackTrace();
			}finally {
				dbClose();
			}
			
			return cnt;
		}

		@Override
		public void boardHit(int num) {
			try {
				dbConn();
				String sql = "update reviewboard set hit = hit +1 where reviewnum=?";
				
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
		public int boardTotalRecord() {
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
		public void boardSelect(BoardVO vo) {
			
			try {
				dbConn();
				String sql = "select reviewnum, subject, content, writer, hit, to_char(regdate,'YYYY.MM.DD') from reviewboard where reviewnum=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, vo.getNum());
				
				rs = pstmt.executeQuery();
				if(rs.next()) {
					vo.setNum(rs.getInt(1));
					vo.setSubject(rs.getString(2));
					vo.setContent(rs.getString(3));
					vo.setWriter(rs.getString(4));
					vo.setHit(rs.getInt(5));
					vo.setRegDate(rs.getString(6));
				}
			}catch(Exception e) {
				System.out.println();
				e.printStackTrace();
			}finally {
				dbClose();
					
			}
			
		}


	}


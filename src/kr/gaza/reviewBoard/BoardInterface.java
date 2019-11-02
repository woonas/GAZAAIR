/*
 * package kr.goott.board;
 * 
 * import java.util.List;
 * 
 * public interface BoardInterface { //목록 현재페이지, 한페이지당 출력할 레코드 수 public
 * List<BoardVO> getAllRecord(int pageNum, int onePageRecord); //글쓰기 public int
 * boardInsert(BoardVO vo); //수정 public int boardUpdate(BoardVO vo); //삭제 public
 * int boardDelete(int num); //조회수 public void boardHit(int num); //총레코드수 public
 * int boardTotalRecord(); //레코드 선택 public void boardSelect(BoardVO vo); //댓글
 * 등록, 댓글 선택 public int replyInsertSelect(ReplyVO vo); //댓글 선택 public
 * List<ReplyVO> replySelect(int num); //댓글 삭제 public void replyDelete(int no);
 * //댓글 수정 public int replyUpdate(ReplyVO vo); }
 */

package kr.gaza.reviewBoard;

import java.util.List;

public interface BoardInterface {
	// 목록
	public List<BoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage);
	// 글쓰기
	public int boardInsert(BoardVO vo);
	// 수정
	public int boardUpdate(BoardVO vo);
	// 삭제
	public int boardDelete(int num);
	// 조회수
	public void boardHit(int num);
	// 총레코드수
	public int boardTotalRecord();
	// 레코드 선택
	public void boardSelect(BoardVO vo);

}

package kr.gaza.board.reviewBoard;

import java.util.List;

public interface BoardInterface {
	// 
	public List<BoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage);
	// 
	public int boardInsert(BoardVO vo);
	// 
	public int boardUpdate(BoardVO vo);
	// 
	public int boardDelete(int num);
	// 
	public void boardHit(int num);
	// 
	public int boardTotalRecord();
	// 
	public void boardSelect(BoardVO vo);
	// 
	public int replyInsertSelect(ReviewBoardReplyVO vo);
	// 
	public List<ReviewBoardReplyVO> replySelect(int num);
	// 
	public void replyDelete(int no);
	// 
	public int replyUpdate(ReviewBoardReplyVO vo);
}

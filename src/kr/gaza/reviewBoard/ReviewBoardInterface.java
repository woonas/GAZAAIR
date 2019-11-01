package kr.gaza.reviewBoard;

import java.util.List;

public interface ReviewBoardInterface {
	// 목록
	public List<ReviewBoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage);
	// 글쓰기
	public int reviewBoardInsert(ReviewBoardVO vo);
	// 수정
	public int reviewBoardUpdate(ReviewBoardVO vo);
	// 삭제
	public int reviewBoardDelete(int num);
	// 조회수
	public void reviewBoardHit(int num);
	// 총레코드수
	public int reviewBoardTotalRecord();
	// 레코드 선택
	public void reviewBoardSelect(ReviewBoardVO vo);

}

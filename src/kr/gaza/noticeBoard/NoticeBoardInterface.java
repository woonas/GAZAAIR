package kr.gaza.noticeBoard;

import java.util.List;

public interface NoticeBoardInterface {
	// 목록
	public List<NoticeBoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage);
	// 글쓰기
	public int noticeBoardInsert(NoticeBoardVO vo);
	// 수정
	public int noticeBoardUpdate(NoticeBoardVO vo);
	// 삭제
	public int noticeBoardDelete(int num);
	// 조회수
	public void noticeBoardHit(int num);
	// 총레코드수
	public int noticeBoardTotalRecord();
	// 레코드 선택
	public void noticeBoardSelect(NoticeBoardVO vo);

}

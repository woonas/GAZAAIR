package kr.gaza.reviewBoard;

import java.util.List;

public interface ReviewBoardInterface {
	// ���
	public List<ReviewBoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage);
	// �۾���
	public int reviewBoardInsert(ReviewBoardVO vo);
	// ����
	public int reviewBoardUpdate(ReviewBoardVO vo);
	// ����
	public int reviewBoardDelete(int num);
	// ��ȸ��
	public void reviewBoardHit(int num);
	// �ѷ��ڵ��
	public int reviewBoardTotalRecord();
	// ���ڵ� ����
	public void reviewBoardSelect(ReviewBoardVO vo);

}

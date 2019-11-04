/*
 * package kr.goott.board;
 * 
 * import java.util.List;
 * 
 * public interface BoardInterface { //��� ����������, ���������� ����� ���ڵ� �� public
 * List<BoardVO> getAllRecord(int pageNum, int onePageRecord); //�۾��� public int
 * boardInsert(BoardVO vo); //���� public int boardUpdate(BoardVO vo); //���� public
 * int boardDelete(int num); //��ȸ�� public void boardHit(int num); //�ѷ��ڵ�� public
 * int boardTotalRecord(); //���ڵ� ���� public void boardSelect(BoardVO vo); //���
 * ���, ��� ���� public int replyInsertSelect(ReplyVO vo); //��� ���� public
 * List<ReplyVO> replySelect(int num); //��� ���� public void replyDelete(int no);
 * //��� ���� public int replyUpdate(ReplyVO vo); }
 */

package kr.gaza.board.reviewBoard;

import java.util.List;

public interface BoardInterface {
	// ���
	public List<BoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage);
	// �۾���
	public int boardInsert(BoardVO vo);
	// ����
	public int boardUpdate(BoardVO vo);
	// ����
	public int boardDelete(int num);
	// ��ȸ��
	public void boardHit(int num);
	// �ѷ��ڵ��
	public int boardTotalRecord();
	// ���ڵ� ����
	public void boardSelect(BoardVO vo);

}

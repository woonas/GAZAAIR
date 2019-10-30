package kr.gaza.noticeBoard;

import java.util.List;

public interface NoticeBoardInterface {
	// ���
	public List<NoticeBoardVO> getAllRecord(int pageNum, int onePageRecord, int totalRecord, int totalPage);
	// �۾���
	public int noticeBoardInsert(NoticeBoardVO vo);
	// ����
	public int noticeBoardUpdate(NoticeBoardVO vo);
	// ����
	public int noticeBoardDelete(int num);
	// ��ȸ��
	public void noticeBoardHit(int num);
	// �ѷ��ڵ��
	public int noticeBoardTotalRecord();
	// ���ڵ� ����
	public void noticeBoardSelect(NoticeBoardVO vo);

}

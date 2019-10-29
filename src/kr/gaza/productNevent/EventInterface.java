package kr.gaza.productNevent;

import java.util.List;

public interface EventInterface {
	//목록						
	public List<EventVO> getAllRecord();
	//글쓰기
	public int eventInsert(EventVO vo);
	//수정
	public int eventUpdate(EventVO vo);
	//삭제
	public int eventDelete(int num);
	//총레코드수
	public int eventTotalRecord();
	//레코드 선택
	public void eventSelect(EventVO vo);
}

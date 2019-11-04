package kr.gaza.eventNpackage.alliance_event;

import java.util.List;

public interface EventInterface {
	//���						
	public List<EventVO> getAllRecord();
	//�۾���
	public int eventInsert(EventVO vo);
	//����
	public int eventUpdate(EventVO vo);
	//����
	public int eventDelete(int num);
	//���ڵ� ����
	public void eventSelect(EventVO vo);
}

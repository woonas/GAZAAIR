package kr.gaza.productNevent;

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
	//�ѷ��ڵ��
	public int eventTotalRecord();
	//���ڵ� ����
	public void eventSelect(EventVO vo);
}

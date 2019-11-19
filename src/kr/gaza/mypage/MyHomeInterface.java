package kr.gaza.mypage;

import java.util.List;

public interface MyHomeInterface {
	//占쏙옙占쏙옙홈 占싱몌옙,占쏙옙占�,占쏙옙占싹몌옙占쏙옙,占쏙옙占쏙옙却占� 占쏙옙占싹몌옙占쏙옙
	public MyHomeVO memberRecord(int memberNum);
	//占쏙옙占쏙옙
	public List<ReservationVO> flightRecord(int memberNum);
}

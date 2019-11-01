package kr.gaza.eventNproduct;

import java.util.List;

public interface RecommendInterface {
	public List<RecommendVO> getAllRecord();
	
	public List<RecommendVO> getBestRecord(int onePageRecord);
	
	public List<RecommendVO> getSaleRecord(int onePageRecord);
}

package kr.gaza.eventNpackage.travel_package;

import java.util.List;

public interface PackageInterface {
	public List<PackageVO> getAllRecord();
	
	public List<PackageVO> getBestRecord(int onePageRecord);
	
	public List<PackageVO> getSaleRecord(int onePageRecord);
}

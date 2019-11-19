package kr.gaza.mypage;

public class MyHomeVO {
	private int memberNum;
	private String memberNameKor;
	private String memberNameEng;
	private String memberGrade;
	private int memberFlightCnt;
	private int myMileage; 
	private int needMileage;
	//다른 테이블에서 갖고온 값들

	public int getNeedMileage() {
		return needMileage;
	}
	public void setNeedMileage(int needMileage) {
		this.needMileage = needMileage;
	}
	private int favoriteCnt; 
	
	
	
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getMemberNameKor() {
		return memberNameKor;
	}
	public void setMemberNameKor(String memberNameKor) {
		this.memberNameKor = memberNameKor;
	}
	public String getMemberNameEng() {
		return memberNameEng;
	}
	public void setMemberNameEng(String memberNameEng) {
		this.memberNameEng = memberNameEng;
	}
	public String getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	public int getMemberFlightCnt() {
		return memberFlightCnt;
	}
	public void setMemberFlightCnt(int memberFlightCnt) {
		this.memberFlightCnt = memberFlightCnt;
	}
	public int getMyMileage() {
		return myMileage;
	}
	public void setMyMileage(int availableMileage) {
		this.myMileage = availableMileage;
	}
	public int getFavoriteCnt() {
		return favoriteCnt;
	}
	public void setFavoriteCnt(int favoriteCnt) {
		this.favoriteCnt = favoriteCnt;
	}
	
	
}

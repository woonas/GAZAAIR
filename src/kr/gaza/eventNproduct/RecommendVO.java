package kr.gaza.eventNproduct;

public class RecommendVO {
	private int recommendNum;
	private int productNum;
	private String regdate;
	private String city;
	private String cityImg;
	//����Ʈ ��ǰ�� �ʿ��� ����
	private int productCnt; 
	private int onePageRecord=5;
	//���� ��ǰ�� �ʿ��� ����
	private int sale;
	
	
	
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getOnePageRecord() {
		return onePageRecord;
	}
	public void setOnePageRecord(int onePageRecord) {
		this.onePageRecord = onePageRecord;
	}
	public int getProductCnt() {
		return productCnt;
	}
	public void setProductCnt(int productCnt) {
		this.productCnt = productCnt;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCityImg() {
		return cityImg;
	}
	public void setCityImg(String cityImg) {
		this.cityImg = cityImg;
	}
	public int getRecommendNum() {
		return recommendNum;
	}
	public void setRecommendNum(int recommendNum) {
		this.recommendNum = recommendNum;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}

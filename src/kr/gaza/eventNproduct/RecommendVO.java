package kr.gaza.eventNproduct;

public class RecommendVO {
	private int recommendNum;
	private int productNum;
	private String regdate;
	private String city;
	private String cityImg;
	
	
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

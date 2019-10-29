package kr.gaza.signup;

public class RegisterVO {
	private int memberNum;
	private String memberId;
	private String memberPwd;
	private String memberNameKor;
	private String memberNameEng;
	private String nation;
	private String gender;
	private String tel;
	private String t1;
	private String t2;
	private String t3;
	private String altTel;
	private String a1;
	private String a2;
	private String a3;
	private String zipcode;
	private String addr;
	private String detailAddr;
	private String email;
	private String birthDay;
	private String agree;
	private String directronic;
	private String regdate;
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
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
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTel() {
		return t1+"-"+t2+"-"+t3;
	}
	public void setTel(String tel) {
		this.tel = tel;
		String[] splitTel = tel.split("-");
		setT1(splitTel[0]);
		setT2(splitTel[1]);
		setT3(splitTel[2]);
	}
	public String getT1() {
		return t1;
	}
	public void setT1(String t1) {
		this.t1 = t1;
	}
	public String getT2() {
		return t2;
	}
	public void setT2(String t2) {
		this.t2 = t2;
	}
	public String getT3() {
		return t3;
	}
	public void setT3(String t3) {
		this.t3 = t3;
	}
	public String getAltTel() {
		return a1+"-"+a2+"-"+a3;
	}
	public void setAltTel(String altTel) {
		this.altTel = altTel;
		String[] splitAltTel = altTel.split("-");
		setT1(splitAltTel[0]);
		setT2(splitAltTel[1]);
		setT3(splitAltTel[2]);
	}
	public String getA1() {
		return a1;
	}
	public void setA1(String a1) {
		this.a1 = a1;
	}
	public String getA2() {
		return a2;
	}
	public void setA2(String a2) {
		this.a2 = a2;
	}
	public String getA3() {
		return a3;
	}
	public void setA3(String a3) {
		this.a3 = a3;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDetailAddr() {
		return detailAddr;
	}
	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		this.agree = agree;
	}
	public String getDirectronic() {
		return directronic;
	}
	public void setDirectronic(String directronic) {
		this.directronic = directronic;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}

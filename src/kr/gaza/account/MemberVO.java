package kr.gaza.account;

public class MemberVO {
	private int memberNum;
	private String memberId;
	private String memberPwd;
	private String memberNameKor;
	private String firstNameKor;
	private String lastNameKor;
	private String memberNameEng;
	private String firstNameEng;
	private String lastNameEng;
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
	private String ag1;
	private String ag2;
	private String directronic;
	private String dr1;
	private String dr2;
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
		return firstNameKor+" "+lastNameKor;
	}
	public void setMemberNameKor(String memberNameKor) {
		this.memberNameKor = memberNameKor;
		setFirstNameKor(memberNameKor.split(" ")[0]);
		setLastNameKor(memberNameKor.split(" ")[1]);
	}
	public String getFirstNameKor() {
		return firstNameKor;
	}
	public void setFirstNameKor(String firstNameKor) {
		this.firstNameKor = firstNameKor;
	}
	public String getLastNameKor() {
		return lastNameKor;
	}
	public void setLastNameKor(String lastNameKor) {
		this.lastNameKor = lastNameKor;
	}
	public String getMemberNameEng() {
		return lastNameEng+" "+firstNameEng;
	}
	public void setMemberNameEng(String memberNameEng) {
		this.memberNameEng = memberNameEng;
		setLastNameEng(memberNameEng.split(" ")[0]);
		setFirstNameEng(memberNameEng.split(" ")[1]);
	}
	public String getFirstNameEng() {
		return firstNameEng;
	}
	public void setFirstNameEng(String firstNameEng) {
		this.firstNameEng = firstNameEng;
	}
	public String getLastNameEng() {
		return lastNameEng;
	}
	public void setLastNameEng(String lastNameEng) {
		this.lastNameEng = lastNameEng;
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
		String alt = "����";
		if(getA1()!=null) {
			alt = a1+"-"+a2+"-"+a3;
		}
		return alt;
	}
	public void setAltTel(String altTel) {
		this.altTel = altTel;
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
		 
		setAg1(agree.split("/")[0]);
		setAg2(agree.split("/")[1]);
	}
	public String getDirectronic() {
		return directronic;
	}
	public void setDirectronic(String directronic) {
		this.directronic = directronic;
		setDr1(directronic.split("/")[0]);
		setDr2(directronic.split("/")[1]);
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getAg1() {
		return ag1;
	}
	public void setAg1(String ag1) {
		this.ag1 = ag1;
	}
	public String getAg2() {
		return ag2;
	}
	public void setAg2(String ag2) {
		this.ag2 = ag2;
	}
	public String getDr1() {
		return dr1;
	}
	public void setDr1(String dr1) {
		this.dr1 = dr1;
	}
	public String getDr2() {
		return dr2;
	}
	public void setDr2(String dr2) {
		this.dr2 = dr2;
	}
	
	
}

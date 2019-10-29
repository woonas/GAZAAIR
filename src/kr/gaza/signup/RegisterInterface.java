package kr.gaza.signup;

public interface RegisterInterface {
	//아이디 조회
	public boolean idCheck(String userId);
	//회원등록
	public int insertRecord(RegisterVO vo);
	//로그인
	public void login(RegisterVO vo);
	//회원정보 가져오기
	public void getRegister(RegisterVO vo);
	//회원정보 수정
	public int updateRecord(RegisterVO vo);
	
}

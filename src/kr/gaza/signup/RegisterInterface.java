package kr.gaza.signup;

public interface RegisterInterface {
	//아이디 중복체크
	public boolean idCheck(String userId);
	//회원가입
	public int insertRecord(RegisterVO vo);
	//로그인
	public void login(RegisterVO vo);
	//회원정보가져오기
	public void getRegister(RegisterVO vo);
	//회원정보수정
	public int updateRecord(RegisterVO vo);
	//비밀번호변경
	public int updatePassword(String memberId, String oldPwd, String newPwd);
	//회원탈퇴
	public int delAccount(String id, String pwd);
	//아이디찾기
	public String findId(RegisterVO vo);
	//비밀번호찾기
	public String findPw(RegisterVO vo);
}

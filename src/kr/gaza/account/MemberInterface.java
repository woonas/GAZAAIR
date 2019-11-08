package kr.gaza.account;

public interface MemberInterface {

    boolean idCheck(String userId);

    int insertRecord(MemberVO vo);

    void login(MemberVO vo);

    void getMember(MemberVO vo);

    int updateRecord(MemberVO vo);

    int updatePassword(String memberId, String oldPwd, String newPwd);

    int delAccount(String id, String pwd);

    String findId(MemberVO vo);

    String findPw(MemberVO vo);

    void verification(MemberVO vo);

    String ipinCheck(boolean lookingForId, String id, String pw);
}

package kr.gaza.signup;

import kr.gaza.home.DBConn;

public class RegisterDAO extends DBConn implements RegisterInterface {

	@Override
	public boolean idCheck(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int insertRecord(RegisterVO vo) {
		int cnt=0;
		try {
			dbConn();
			String sql = "insert into member(memberNum, memberId, memberPwd, memberNameKor, memberNameEng, nation, gender, "
					+ " tel, altTel, zipcode, addr, detailaddr, email, birthday, agree, directronic, regdate) "
					+ " values(boardsq.nextVal, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemberId());
			pstmt.setString(2, vo.getMemberPwd());
			pstmt.setString(3, vo.getMemberNameKor());
			pstmt.setString(4, vo.getMemberNameEng());
			pstmt.setString(5, vo.getNation());
			pstmt.setString(6, vo.getGender());
			pstmt.setString(7, vo.getTel());
			pstmt.setString(8, vo.getAltTel());
			pstmt.setString(9, vo.getZipcode());
			pstmt.setString(10, vo.getAddr());
			pstmt.setString(11, vo.getDetailAddr());
			pstmt.setString(12, vo.getEmail());
			pstmt.setString(13, vo.getBirthDay());
			pstmt.setString(14, vo.getAgree());
			pstmt.setString(15, vo.getDirectronic());
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("회원가입 insertRecord 에러...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public void login(RegisterVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getRegister(RegisterVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public int updateRecord(RegisterVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}

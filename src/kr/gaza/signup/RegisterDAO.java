package kr.gaza.signup;

import kr.gaza.home.DBConn;

public class RegisterDAO extends DBConn implements RegisterInterface {

	@Override
	public boolean idCheck(String userId) {
		boolean result = false;
		try {
			dbConn();
			String sql = "select count(memberId) from member where memberId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1)!=0) {
					result = true;
				}
			}
			System.out.println("DAO의 결과 = "+result);
		}catch(Exception e) {
			System.out.println("idCheck 에러...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
	@Override
	public int insertRecord(RegisterVO vo) {
		int cnt=0;
		try {
			dbConn();
			String sql = "insert into member(memberNum, memberId, memberPwd, memberNameKor, memberNameEng, nation, gender, "
					+ " tel, altTel, zipcode, addr, detailaddr, email, birthday, agree, directronic, regdate) "
					+ " values(member_sq.nextVal, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
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
		try {
			dbConn();
			String sql = "select memberNum, memberNameKor, memberId from member where memberid=? and memberpwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemberId());
			pstmt.setString(2, vo.getMemberPwd());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMemberNum(rs.getInt(1));
				vo.setMemberNameKor(rs.getString(2));
				vo.setMemberId(rs.getString(3));
			}
		}catch(Exception e) {
			System.out.println("로그인 에러...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
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

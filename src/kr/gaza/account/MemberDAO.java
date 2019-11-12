package kr.gaza.account;

import kr.gaza.home.DBConn;

public class MemberDAO extends DBConn implements MemberInterface {
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
		}catch(Exception e) {
			System.out.println("Member IdCheck Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int insertRecord(MemberVO vo) {
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
			System.out.println("Member Insert Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public void login(MemberVO vo) {
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
			System.out.println("Member Login Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}

	@Override
	public void getMember(MemberVO vo) {
		try {
			dbConn();
			String sql = "select * from member where memberId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemberId());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setMemberNum(rs.getInt(1));
				vo.setMemberId(rs.getString(2));
				vo.setMemberPwd(rs.getString(3));
				vo.setMemberNameKor(rs.getString(4));
				vo.setMemberNameEng(rs.getString(5));
				vo.setNation(rs.getString(6));
				vo.setGender(rs.getString(7));
				vo.setTel(rs.getString(8));
				vo.setAltTel(rs.getString(9));
				vo.setZipcode(rs.getString(10));
				vo.setAddr(rs.getString(11));
				vo.setDetailAddr(rs.getString(12));
				vo.setEmail(rs.getString(13));
				vo.setBirthDay(rs.getString(14));
				vo.setAgree(rs.getString(15));
				vo.setDirectronic(rs.getString(16));
			}
		}catch(Exception e) {
			System.out.println("Member GetMember Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}

	@Override
	public int updateRecord(MemberVO vo) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "update member set nation=?, tel=?, altTel=?, zipcode=?, addr=?, detailAddr=?, email=?, agree=?, directronic=?  where memberid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getNation());
			pstmt.setString(2, vo.getTel());
			pstmt.setString(3, vo.getAltTel());
			pstmt.setString(4, vo.getZipcode());
			pstmt.setString(5, vo.getAddr());
			pstmt.setString(6, vo.getDetailAddr());
			pstmt.setString(7, vo.getEmail());
			pstmt.setString(8, vo.getAgree());
			pstmt.setString(9, vo.getDirectronic());
			pstmt.setString(10, vo.getMemberId());
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("Member Update Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public int updatePassword(String memberId, String oldPwd, String newPwd) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "update member set memberpwd=? where memberid=? and memberpwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPwd);
			pstmt.setString(2, memberId);
			pstmt.setString(3, oldPwd);
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("Member Update Password Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public int delAccount(String id, String pwd) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "delete from member where memberId=? and memberPwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("Member Delete Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public String findId(MemberVO vo) {
		String id = "";
		try {
			dbConn();
			String sql = "select memberId from member where memberNameKor=? and birthday=? and email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemberNameKor());
			pstmt.setString(2, vo.getBirthDay());
			pstmt.setString(3, vo.getEmail());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString(1);
			}
			
		}catch(Exception e) {
			System.out.println("Member FindID Error...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return id;
	}

	@Override
	public String findPw(MemberVO vo) {
		String pw = "";
		try {
			dbConn();
			String sql = "select memberPwd from member where memberNameKor=? and memberId=? and birthday=? and email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemberNameKor());
			pstmt.setString(2, vo.getMemberId());
			pstmt.setString(3, vo.getBirthDay());
			pstmt.setString(4, vo.getEmail());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pw = rs.getString(1);
			}
			
		}catch(Exception e) {
			System.out.println("��й�ȣã�� ����...");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return pw;
	}

    @Override
    public void verification(MemberVO vo) {
        try {
            dbConn();
            String sql = "select memberid, memberpwd from member where membernamekor=? and membertel=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vo.getMemberNameKor());
            pstmt.setString(2, vo.getTel());

            rs = pstmt.executeQuery();
            if(rs.next()) {
                vo.setMemberId(rs.getString(1));
                vo.setMemberPwd(rs.getString(2));
            }
        }catch(Exception e) {
            System.out.println("폰인증 체크 오류...");
            e.printStackTrace();
        }finally {
            dbClose();
        }
    }

    @Override
    public String ipinCheck(boolean lookingForId, String id, String pw) {
        String result = "";
        try {
            dbConn();
            String sql;
            if (lookingForId) sql = "select memberId from member where memberid=? memberpw=?";
            else sql = "select memberPw from member where memberid=? memberpw=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, pw);

            rs = pstmt.executeQuery();
            if(rs.next())
                result = rs.getString(1);
        }catch(Exception e) {
            System.out.println("폰인증 체크 오류...");
            e.printStackTrace();
        }finally {
            dbClose();
        }

        return result;
    }
}

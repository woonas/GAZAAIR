package kr.gaza.account.change;

import kr.gaza.account.MemberDAO;
import kr.gaza.account.MemberVO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CommandAccount_info implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		HttpSession ses = request.getSession();
		vo.setMemberId((String)ses.getAttribute("memberId"));
		dao.getMember(vo);
		
		request.setAttribute("vo", vo);
		return "account_info.jsp";
	}
}

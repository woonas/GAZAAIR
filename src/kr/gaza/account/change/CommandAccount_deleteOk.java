package kr.gaza.account.change;

import kr.gaza.account.MemberDAO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CommandAccount_deleteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("memberId");
		String pwd = request.getParameter("pwdChk");
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delAccount(id, pwd);
		HttpSession session = request.getSession();
		session.invalidate();
		request.setAttribute("cnt", cnt);
		return "account_deleteOk.jsp";
	}
}

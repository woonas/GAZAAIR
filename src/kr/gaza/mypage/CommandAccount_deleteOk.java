package kr.gaza.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.gaza.controller.CommandService;
import kr.gaza.signup.RegisterDAO;

public class CommandAccount_deleteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("memberId");
		String pwd = request.getParameter("pwdChk");
		RegisterDAO dao = new RegisterDAO();
		int cnt = dao.delAccount(id, pwd);
		HttpSession session = request.getSession();
		session.invalidate();
		request.setAttribute("cnt", cnt);
		return "account_deleteOk.jsp";
	}

}

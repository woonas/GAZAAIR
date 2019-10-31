package kr.gaza.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.gaza.controller.CommandService;
import kr.gaza.signup.RegisterDAO;

public class CommandPassword_changeOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		String oldPwd = request.getParameter("oldPassword");
		String newPwd = request.getParameter("password");
		
		String memberId = (String)ses.getAttribute("memberId");
		RegisterDAO dao = new RegisterDAO();
		int cnt = dao.updatePassword(memberId, oldPwd, newPwd);
		
		request.setAttribute("cnt", cnt);
		return "password_changeOk.jsp";
	}

}

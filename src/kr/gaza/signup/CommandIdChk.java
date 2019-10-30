package kr.gaza.signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandIdChk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("txtID");
		request.setCharacterEncoding("UTF-8");
		RegisterDAO dao = new RegisterDAO();
		boolean isOk = dao.idCheck(userId);
		request.setAttribute("isOk", isOk);
		return "idChk2.jsp";
	}

}

package kr.gaza.account.signup;

import kr.gaza.account.MemberDAO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandIdChk implements CommandService {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("txtID");
		MemberDAO dao = new MemberDAO();
		boolean isOk = dao.idCheck(userId);
		request.setAttribute("isOk", isOk);
		return "idDuplicateCheck.jsp";
	}
}

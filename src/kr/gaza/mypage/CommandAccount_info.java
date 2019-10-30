package kr.gaza.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.gaza.controller.CommandService;
import kr.gaza.signup.RegisterDAO;
import kr.gaza.signup.RegisterVO;

public class CommandAccount_info implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RegisterDAO dao = new RegisterDAO();
		RegisterVO vo = new RegisterVO();
		HttpSession ses = request.getSession();
		vo.setMemberId((String)ses.getAttribute("memberId"));
		dao.getRegister(vo);
		
		request.setAttribute("vo", vo);
		return "account_info.jsp";
	}

}

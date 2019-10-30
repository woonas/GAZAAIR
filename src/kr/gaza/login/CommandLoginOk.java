package kr.gaza.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.gaza.controller.CommandService;
import kr.gaza.signup.RegisterDAO;
import kr.gaza.signup.RegisterVO;

public class CommandLoginOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RegisterVO vo = new RegisterVO();
		vo.setMemberId(request.getParameter("userid"));
		vo.setMemberPwd(request.getParameter("password"));
		
		RegisterDAO dao = new RegisterDAO();
		dao.login(vo);
		boolean status = false;
		if(vo.getMemberNameKor()==null || vo.getMemberNameKor().equals("")){
			
		}else {
			status = true;
			HttpSession ses = request.getSession();
			ses.setAttribute("memberNum", vo.getMemberNum());
			ses.setAttribute("memberId", vo.getMemberId());
			ses.setAttribute("memberName", vo.getMemberNameKor());
		}
		request.setAttribute("status", status);
		return "loginOk.jsp";
	}

}

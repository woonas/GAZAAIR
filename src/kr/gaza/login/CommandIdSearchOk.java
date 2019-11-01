package kr.gaza.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;
import kr.gaza.signup.RegisterDAO;
import kr.gaza.signup.RegisterVO;

public class CommandIdSearchOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RegisterVO vo = new RegisterVO();
		vo.setFirstNameKor(request.getParameter("firstName"));
		vo.setLastNameKor(request.getParameter("lastName"));
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String emailId = request.getParameter("emailAddress");
		String emailDomain = request.getParameter("emailDomain");
		String emailDomainText = request.getParameter("emailDomainText");
		vo.setBirthDay(year+"/"+month+"/"+day);
		
		if(emailDomain.equals("직접입력")) {
			vo.setEmail(emailId+"@"+emailDomainText);
		}else {
			vo.setEmail(emailId+"@"+emailDomain);
		}
		RegisterDAO dao = new RegisterDAO();
		String result = dao.findId(vo);
		
		request.setAttribute("findId", result);
		return "idsearchOk2.jsp";
	}
}

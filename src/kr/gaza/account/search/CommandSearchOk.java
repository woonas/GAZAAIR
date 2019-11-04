package kr.gaza.account.search;

import kr.gaza.account.MemberDAO;
import kr.gaza.account.MemberVO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandSearchOk implements CommandService {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO vo = new MemberVO();
        vo.setMemberId(request.getParameter("memberId"));
        vo.setFirstNameKor(request.getParameter("firstName"));
		vo.setLastNameKor(request.getParameter("lastName"));
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String emailId = request.getParameter("emailAddress");
		String emailDomain = request.getParameter("emailDomain");
		String emailDomainText = request.getParameter("emailDomainText");
		vo.setBirthDay(year+"/"+month+"/"+day);
		
		if(emailDomain.equals(""))
			vo.setEmail(emailId+"@"+emailDomainText);
		else
			vo.setEmail(emailId+"@"+emailDomain);

		MemberDAO dao = new MemberDAO();
		String result;
        if (vo.getMemberId().isEmpty())
		    result = dao.findId(vo);
        else
            result = dao.findPw(vo);
		
		request.setAttribute("result", result);
		return "searchResult.jsp";
	}
}

package kr.gaza.signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandSignupOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String nameKo = request.getParameter("firstNameKo")+"/"+request.getParameter("lastNameKo");
		String nameEn = request.getParameter("lastNameEn")+"/"+request.getParameter("firstNameEn");
		RegisterVO vo = new RegisterVO();
		vo.setMemberId(request.getParameter("username"));
		vo.setMemberPwd(request.getParameter("password"));
		vo.setMemberNameKor(nameKo);
		vo.setMemberNameEng(nameEn);
		vo.setNation(request.getParameter("country"));
		vo.setGender(request.getParameter("gender"));
		vo.setT1(request.getParameter("phone1"));
		vo.setT2(request.getParameter("phone2"));
		vo.setT3(request.getParameter("phone3"));
		vo.setA1(request.getParameter("number1"));
		vo.setA2(request.getParameter("number2"));
		vo.setA3(request.getParameter("number3"));
		vo.setZipcode(request.getParameter("postalCode"));
		vo.setAddr(request.getParameter("addr1"));
		vo.setDetailAddr(request.getParameter("addr2"));
		vo.setEmail(request.getParameter("email"));
		vo.setBirthDay(request.getParameter("birthdate"));
		vo.setAgree(request.getParameter("agree_all")+"/"+request.getParameter("agree_homepageUse")+"/"+request.getParameter("agree_personalCollection")+"/"+request.getParameter("agree_personalTransferToAbroad"));
		String direct1 = request.getParameter("agree_personalCollectionOption");
		String direct2 = request.getParameter("agree_personalProvide");
		if(direct1 == null) {
			direct1 = "off";
		}
		if(direct2 == null) {
			direct2 = "off";
		}
		vo.setDirectronic(direct1+"/"+direct2);
		
		RegisterDAO dao = new RegisterDAO();
		int cnt = dao.insertRecord(vo);
		
		request.setAttribute("cnt", cnt);
		
		return "signupOk.jsp";
	}

}

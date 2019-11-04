package kr.gaza.account.signup;

import kr.gaza.account.MemberDAO;
import kr.gaza.account.MemberVO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandSignup5 implements CommandService {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberVO vo = new MemberVO();
        vo.setMemberId(request.getParameter("username"));
        vo.setMemberPwd(request.getParameter("password"));
        vo.setFirstNameKor(request.getParameter("firstNameKo"));
        vo.setLastNameKor(request.getParameter("lastNameKo"));
        vo.setFirstNameEng(request.getParameter("firstNameEn"));
        vo.setLastNameEng(request.getParameter("lastNameEn"));
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
        String agree1 = request.getParameter("agree_personalCollectionOption");
        String agree2 = request.getParameter("agree_personalProvide");
        String direct1 = request.getParameter("receiveEmail");
        String direct2 = request.getParameter("receiveSMS");
        if(agree1 == null) agree1 = "off";
        if(agree2 == null) agree2 = "off";
        if(direct1 == null) direct1 = "off";
        if(direct2 == null) direct2 = "off";
        vo.setAgree(agree1+"/"+agree2);
        vo.setDirectronic(direct1+"/"+direct2);

        MemberDAO dao = new MemberDAO();
        int cnt = dao.insertRecord(vo);

        request.setAttribute("cnt", cnt);

        return "signup5.jsp";
	}
}

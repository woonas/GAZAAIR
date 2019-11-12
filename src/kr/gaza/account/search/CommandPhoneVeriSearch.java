package kr.gaza.account.search;

import kr.gaza.account.MemberDAO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandPhoneVeriSearch implements CommandService {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("memberName");
        String phone = request.getParameter("memberPhone");
        String lookingFor = request.getParameter("lookingFor");
        MemberDAO dao = new MemberDAO();
        String result = dao.isExisting(lookingFor.equals("idSearch"), name, phone);
        request.setAttribute("result", result);
        return "searchResult.jsp";
    }
}

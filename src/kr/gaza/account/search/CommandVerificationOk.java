package kr.gaza.account.search;

import kr.gaza.account.MemberDAO;
import kr.gaza.account.MemberVO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandVerificationOk implements CommandService {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberVO vo = new MemberVO();
        vo.setMemberNameKor(request.getParameter("username"));
        String phoneNum = request.getParameter("userphone");
        vo.setTel(phoneNum.substring(0,3) + "-" + phoneNum.substring(3,7) + "-" + phoneNum.substring(7));

        MemberDAO dao = new MemberDAO();
        dao.verification(vo);

        return "";
    }
}

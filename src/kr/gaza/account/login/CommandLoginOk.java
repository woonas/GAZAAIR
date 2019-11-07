package kr.gaza.account.login;

import kr.gaza.account.MemberDAO;
import kr.gaza.account.MemberVO;
import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CommandLoginOk implements CommandService {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        MemberVO vo = new MemberVO();
        vo.setMemberId(request.getParameter("userid"));
        vo.setMemberPwd(request.getParameter("password"));

        MemberDAO dao = new MemberDAO();
        dao.login(vo);
        boolean status = false;
        if (vo.getMemberNameKor() == null || vo.getMemberNameKor().equals("")) {

        } else {
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

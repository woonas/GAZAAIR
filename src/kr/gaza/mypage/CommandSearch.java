package kr.gaza.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandSearch implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MyHomeVO vo = new MyHomeVO();

		vo.setStartDate(request.getParameter("startDate"));
		vo.setMemberNum(3841);
		//vo.setMemberNum(Integer.parseInt(request.getParameter("memberNum")));
		
		
		MyHomeDAO dao = new MyHomeDAO();
		
		request.setAttribute("list", dao.paymentRecord(vo.getMemberNum(),vo.getStartDate()));
	
		return "search_list.jsp";
	}

}

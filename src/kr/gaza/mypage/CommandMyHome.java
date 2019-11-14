package kr.gaza.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandMyHome implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		
		MyHomeDAO dao = new MyHomeDAO();
		MyHomeVO vo = dao.memberRecord(3841);
		
		request.setAttribute("vo", vo);
		request.setAttribute("myMiles", vo.getMyMileage());

		return "myhome.jsp";
	}

}

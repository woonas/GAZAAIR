package kr.gaza.account.signup;

import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandSignup4 implements CommandService {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String agree_personalCollectionOption = request.getParameter("agree_personalCollectionOption");
		String agree_personalProvide = request.getParameter("agree_personalProvide");
		
		request.setAttribute("agree_personalCollectionOption", agree_personalCollectionOption);
		request.setAttribute("agree_personalProvide", agree_personalProvide);

		return "signup4.jsp";
	}
}

package kr.gaza.signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandSignup3 implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String agree_personalCollectionOption = request.getParameter("agree_personalCollectionOption");
		String agree_personalProvide = request.getParameter("agree_personalProvide");
		
		request.setAttribute("agree_personalCollectionOption", agree_personalCollectionOption);
		request.setAttribute("agree_personalProvide", agree_personalProvide);
		
		return "signup3.jsp";
	}

}

package kr.gaza.signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandSignup4 implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String agree_all = request.getParameter("agree_all");
		String agree_homepageUse = request.getParameter("agree_homepageUse");
		String agree_personalCollection = request.getParameter("agree_personalCollection");
		String agree_personalTransferToAbroad = request.getParameter("agree_personalTransferToAbroad");
		String agree_personalCollectionOption = request.getParameter("agree_personalCollectionOption");
		String agree_personalProvide = request.getParameter("agree_personalProvide");
		
		request.setAttribute("agree_all", agree_all);
		request.setAttribute("agree_homepageUse", agree_homepageUse);
		request.setAttribute("agree_personalCollection", agree_personalCollection);
		request.setAttribute("agree_personalTransferToAbroad", agree_personalTransferToAbroad);
		request.setAttribute("agree_personalCollectionOption", agree_personalCollectionOption);
		request.setAttribute("agree_personalProvide", agree_personalProvide);
		return "signup4.jsp";
	}

}

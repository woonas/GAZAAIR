package kr.gaza.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandPwsearch implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		return "pwsearch.jsp";
	}

}

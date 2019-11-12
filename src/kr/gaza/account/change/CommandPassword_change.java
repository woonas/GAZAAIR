package kr.gaza.account.change;

import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandPassword_change implements CommandService {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "password_change.jsp";
	}
}

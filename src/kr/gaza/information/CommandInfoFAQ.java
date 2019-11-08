package kr.gaza.information;

import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CommandInfoFAQ implements CommandService {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return "info_faq.jsp";
    }
}

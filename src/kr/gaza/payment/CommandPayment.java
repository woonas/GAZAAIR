package kr.gaza.payment;

import kr.gaza.controller.CommandService;

import java.io.IOException;

public class CommandPayment implements CommandService {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return "payment.jsp";
    }
}

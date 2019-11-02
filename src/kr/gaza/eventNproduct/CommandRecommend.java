package kr.gaza.eventNproduct;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandRecommend implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RecommendDAO dao = new RecommendDAO();
		
		List<RecommendVO> lst = dao.getAllRecord();
		
		request.setAttribute("lst", lst);
		return "recommend_product.jsp";
	}

}

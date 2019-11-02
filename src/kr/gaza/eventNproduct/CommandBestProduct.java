package kr.gaza.eventNproduct;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandBestProduct implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RecommendVO vo = new RecommendVO();
		RecommendDAO dao = new RecommendDAO();
		
		List<RecommendVO> lst = dao.getBestRecord(vo.getOnePageRecord());
		List<RecommendVO> saleList = dao.getSaleRecord(vo.getOnePageRecord());
		
		request.setAttribute("lst", lst);
		request.setAttribute("saleList", saleList);
		
		return "best_product.jsp";
	}

}

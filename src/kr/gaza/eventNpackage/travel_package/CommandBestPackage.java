package kr.gaza.eventNpackage.travel_package;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandBestPackage implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PackageVO vo = new PackageVO();
		PackageDAO dao = new PackageDAO();
		
		List<PackageVO> lst = dao.getBestRecord(vo.getOnePageRecord());
		List<PackageVO> saleList = dao.getSaleRecord(vo.getOnePageRecord());
		
		request.setAttribute("lst", lst);
		request.setAttribute("saleList", saleList);
		
		return "best_package.jsp";
	}

}

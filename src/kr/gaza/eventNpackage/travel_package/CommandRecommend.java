package kr.gaza.eventNpackage.travel_package;

import kr.gaza.controller.CommandService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CommandRecommend implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PackageDAO dao = new PackageDAO();
		
		List<PackageVO> lst = dao.getAllRecord();
		
		request.setAttribute("lst", lst);
		return "recommend_package.jsp";
	}

}

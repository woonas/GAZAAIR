package kr.gaza.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandMyHome implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		
//		OrderDAO orderDAO = new OrderDAO();
//		OrderVO orderVO = orderDAO.orderSelect(3841);
//		
//		int[] flightNums = orderVO.getFlightNum();
//		
//		FlightDAO flightDAO = new FlightDAO();
//		List<FlightVO> flightList = new ArrayList<>();
//		for (int flightNum : flightNums) {
//			flightList.add(flightDAO.flightSelect(flightNum));
//		}
//		
//		ProductDAO productDAO = new ProductDAO();
//		List<ProductVO> productList = new ArrayList<>();
//		for (FlightVO vo : flightList) {
//			productList.add(productDAO.productSelect(vo.getProductNum()));
//		}
//		
//		for (int i = 0; i < 3; i++) {
//			
//		}
//		
//		
		
		
		
		MyHomeDAO dao = new MyHomeDAO();
		MyHomeVO vo = dao.memberRecord(2739);
		
		request.setAttribute("vo", vo);
		request.setAttribute("myMiles", vo.getMyMileage());
		//����
//		request.setAttribute("flightList", flightList);
//		request.setAttribute("productList", productList);
		return "myhome.jsp";
	}

}

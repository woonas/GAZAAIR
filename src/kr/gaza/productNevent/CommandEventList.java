package kr.gaza.productNevent;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;
import kr.goott.board.BoardDAO;
import kr.goott.board.BoardVO;

public class CommandEventList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		EventVO vo = new EventVO();
		EventDAO dao = new EventDAO();
		//�� ���ڵ� ��
		vo.setTotalRecord(dao.eventTotalRecord());

		//�ش� ������ ���ڵ� ����
		List<EventVO> lst = dao.getAllRecord();
		
		//���������� ������ ������
		request.setAttribute("vo", vo);
		request.setAttribute("lst", lst);
		return "event_List.jsp";
	}
}
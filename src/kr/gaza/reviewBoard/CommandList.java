package kr.gaza.reviewBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// ����������
				String pageNumStr = request.getParameter("pageNum");
				ReviewBoardVO vo = new ReviewBoardVO();
				
				if(pageNumStr!=null && !pageNumStr.equals("")) {
					vo.setPageNum(Integer.parseInt(pageNumStr));
				}
				
				ReviewBoardDAO dao = new ReviewBoardDAO();
				// �� ���ڵ� ��
				vo.setTotalRecord(dao.reviewBoardTotalRecord());
				
				// �� ������ ��
				if(vo.getTotalRecord() % vo.getOnePageRecord() == 0) {
					vo.setTotalPage(vo.getTotalRecord() / vo.getOnePageRecord());
				}else {
					vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()+1);
				}
				// ������ ��ȣ�� ���������� ���
				vo.setStartPage((vo.getPageNum() - 1)/ vo.getOnePageMax() * vo.getOnePageMax()+1 );
				// �ش������� ���ڵ� ����
				List<ReviewBoardVO> lst = dao.getAllRecord(vo.getPageNum(), vo.getOnePageRecord(), vo.getTotalRecord(), vo.getTotalPage());
				
				// ���������� ������ ������
				request.setAttribute("vo", vo);
				request.setAttribute("lst", lst);

				return "list.jsp";
	}

}

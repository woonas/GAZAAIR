package kr.gaza.board.noticeBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.gaza.controller.CommandService;

public class CommandNoticeList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ����������
		String pageNumStr = request.getParameter("pageNum");
		NoticeBoardVO vo = new NoticeBoardVO();
		
		if(pageNumStr!=null && !pageNumStr.equals("")) {
			vo.setPageNum(Integer.parseInt(pageNumStr));
		}
		
		NoticeBoardDAO dao = new NoticeBoardDAO();
		// �� ���ڵ� ��
		vo.setTotalRecord(dao.noticeBoardTotalRecord());
		
		// �� ������ ��
		if(vo.getTotalRecord() % vo.getOnePageRecord() == 0) {
			vo.setTotalPage(vo.getTotalRecord() / vo.getOnePageRecord());
		}else {
			vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()+1);
		}
		// ������ ��ȣ�� ���������� ���
		vo.setStartPage((vo.getPageNum() - 1)/ vo.getOnePageMax() * vo.getOnePageMax()+1 );
		// �ش������� ���ڵ� ����
		List<NoticeBoardVO> lst = dao.getAllRecord(vo.getPageNum(), vo.getOnePageRecord(), vo.getTotalRecord(), vo.getTotalPage());
		
		// ���������� ������ ������
		request.setAttribute("vo", vo);
		request.setAttribute("lst", lst);

		return "noticeBoard_list.jsp";
	}
}